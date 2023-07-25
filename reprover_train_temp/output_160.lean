universe u

constant obj : Type u

constant Bear : obj
constant Rabbit : obj
constant Cat : obj
constant Dog : obj

constant Round : obj → Prop
constant Visits : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Nice : obj → Prop
constant Chases : obj → obj → Prop
constant Big : obj → Prop

axiom T1 : Round Bear
axiom T2 : Visits Bear Rabbit
axiom T3 : Eats Cat Dog
axiom T4 : Visits Cat Bear
axiom T5 : ¬ Eats Dog Cat
axiom T6 : ¬ Nice Dog
axiom T7 : Round Dog
axiom T8 : Visits Dog Bear
axiom T9 : Chases Rabbit Dog
axiom T10 : Eats Rabbit Bear

axiom R1 : ∀ x : obj, Big x → ¬ Visits x Dog
axiom R2 : ∀ x : obj, Visits x Rabbit → Chases x Rabbit
axiom R3 : ∀ x : obj, Chases x Cat → Round x
axiom R4 : ∀ x : obj, Visits x Cat ∧ Chases x Dog → Round x
axiom R5 : ∀ x : obj, Eats x Cat → ¬ Big x
axiom R6 : ∀ x : obj, Round x → Big x
axiom R7 : ∀ x : obj, Chases x Rabbit → Chases Rabbit Cat

theorem rabbit_does_not_visit_dog : ¬ Visits Rabbit Dog :=
begin
  apply R1,
  apply R6,
  apply R3,
  apply R7,
  apply R2,
  exact T2,
end

-- The answer is True