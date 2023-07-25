universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Dog : obj
constant Tiger : obj

constant Nice : obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop

axiom T1 : Nice BaldEagle
axiom T2 : Rough BaldEagle
axiom T3 : Young BaldEagle
axiom T4 : Sees BaldEagle Cat
axiom T5 : Visits BaldEagle Dog
axiom T6 : Eats Cat BaldEagle
axiom T7 : Rough Cat
axiom T8 : Sees Cat BaldEagle
axiom T9 : Visits Cat Tiger
axiom T10 : Kind Dog
axiom T11 : Sees Dog Cat
axiom T12 : Visits Dog Cat
axiom T13 : Visits Dog Tiger
axiom T14 : Nice Tiger
axiom T15 : Rough Tiger
axiom T16 : Sees Tiger Cat

axiom R1 : ∀ x : obj, Young x → Round x
axiom R2 : ∀ x : obj, Nice x ∧ Round x → Eats x Dog
axiom R3 : ∀ x : obj, Sees x Cat ∧ Nice x → Young x
axiom R4 : ∀ x : obj, Visits x Dog ∧ Visits Dog Cat → Eats Dog Tiger
axiom R5 : ∀ x : obj, Sees x Tiger ∧ Sees x Dog → Nice Tiger
axiom R6 : ∀ x : obj, Round x ∧ Sees x Dog → Sees x Tiger
axiom R7 : ∀ x : obj, Young x ∧ Eats x Tiger → Nice Tiger
axiom R8 : ∀ x : obj, Eats x Cat → Eats Cat Tiger
axiom R9 : ∀ x : obj, Eats x Dog ∧ Kind Dog → Sees x Dog

theorem tiger_sees_tiger : Sees Tiger Tiger :=
begin
  apply R6,
  split,
  apply R1,
  apply R3,
  split,
  exact T16,
  exact T14,
  apply R9,
  split,
  apply R2,
  split,
  exact T14,
  apply R1,
  apply R3,
  split,
  exact T16,
  exact T14,
  exact T10,
end

-- The answer is True