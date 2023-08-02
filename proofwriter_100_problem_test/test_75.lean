universe u

constant obj : Type u

constant Bear : obj
constant Cow : obj
constant Rabbit : obj
constant Squirrel : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Young : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Visits : obj → obj → Prop
constant Big : obj → Prop

axiom T1 : Chases Bear Cow
axiom T2 : Eats Bear Cow
axiom T3 : Young Bear
axiom T4 : Red Cow
axiom T5 : Round Cow
axiom T6 : Visits Cow Squirrel
axiom T7 : Round Rabbit
axiom T8 : Visits Rabbit Bear
axiom T9 : Eats Squirrel Cow
axiom T10 : Visits Squirrel Rabbit

axiom R1 : ∀ x : obj, Visits x Squirrel ∧ Chases Squirrel Cow → Round Cow
axiom R2 : ∀ x : obj, Big x ∧ Red x → Chases x Rabbit
axiom R3 : ∀ x : obj, Visits x Rabbit → Visits Rabbit Bear
axiom R4 : ∀ x : obj, Chases Squirrel Cow ∧ Round Cow → Young Cow
axiom R5 : ∀ x : obj, Chases x Squirrel → Eats Squirrel Rabbit
axiom R6 : ∀ x : obj, Eats x Cow ∧ Eats Cow Rabbit → Chases Cow Rabbit
axiom R7 : ∀ x : obj, Chases x Rabbit → Red Rabbit
axiom R8 : ∀ x : obj, Red x → Big x
axiom R9 : ∀ x : obj, Eats x Bear → Chases x Cow

theorem not_red_rabbit : ¬ Red Rabbit :=
begin
  sorry
end


theorem red_rabbit : Red Rabbit :=
begin
  sorry
end
