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

-- If someone visits the squirrel and the squirrel chases the cow then the cow is round
axiom R1 : ∀ x : obj, Visits x Squirrel ∧ Chases Squirrel Cow → Round Cow
-- If someone is big and red then they chase the rabbit
axiom R2 : ∀ x : obj, Big x ∧ Red x → Chases x Rabbit
-- If someone visits the rabbit then the rabbit visits the bear
axiom R3 : ∀ x : obj, Visits x Rabbit → Visits Rabbit Bear
-- If the squirrel chases the cow and the cow is round then the cow is young
axiom R4 : ∀ x : obj, Chases Squirrel Cow ∧ Round Cow → Young Cow
-- If someone chases the squirrel then the squirrel eats the rabbit
axiom R5 : ∀ x : obj, Chases x Squirrel → Eats Squirrel Rabbit
-- If someone eats the cow and the cow eats the rabbit then the cow chases the rabbit
axiom R6 : ∀ x : obj, Eats x Cow ∧ Eats Cow Rabbit → Chases Cow Rabbit
-- If someone chases the rabbit then the rabbit is red
axiom R7 : ∀ x : obj, Chases x Rabbit → Red Rabbit
-- All red people are big
axiom R8 : ∀ x : obj, Red x → Big x
-- If someone eats the bear then they chase the cow
axiom R9 : ∀ x : obj, Eats x Bear → Chases x Cow


theorem not_red_rabbit : ¬ Red Rabbit :=
begin
  sorry
end


theorem red_rabbit : Red Rabbit :=
begin
  sorry
end
