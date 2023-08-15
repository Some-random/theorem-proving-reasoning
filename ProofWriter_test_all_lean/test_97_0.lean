universe u

constant obj : Type u

constant Cat : obj
constant Mouse : obj
constant Rabbit : obj
constant Squirrel : obj

constant Rough : obj → Prop
constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Kind : obj → Prop
constant Visits : obj → obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop

axiom T1 : Rough Cat
axiom T2 : Sees Cat Rabbit
axiom T3 : Eats Mouse Cat
axiom T4 : Eats Mouse Squirrel
axiom T5 : Kind Mouse
axiom T6 : Visits Mouse Cat
axiom T7 : Visits Mouse Rabbit
axiom T8 : Eats Rabbit Cat
axiom T9 : Eats Rabbit Mouse
axiom T10 : Sees Rabbit Cat
axiom T11 : Round Squirrel
axiom T12 : Sees Squirrel Rabbit

-- If something sees the squirrel then it is kind
axiom R1 : ∀ x : obj, Sees x Squirrel → Kind x
-- If something visits the mouse then the mouse sees the squirrel
axiom R2 : ∀ x : obj, Visits x Mouse → Sees Mouse Squirrel
-- If something eats the cat then the cat visits the squirrel
axiom R3 : ∀ x : obj, Eats x Cat → Visits Cat Squirrel
-- If something is blue then it sees the squirrel
axiom R4 : ∀ x : obj, Blue x → Sees x Squirrel
-- If something is kind then it visits the rabbit
axiom R5 : ∀ x : obj, Kind x → Visits x Rabbit
-- If something is rough then it sees the cat
axiom R6 : ∀ x : obj, Rough x → Sees x Cat
-- If something is rough and it sees the cat then the cat is blue
axiom R7 : ∀ x : obj, Rough x ∧ Sees x Cat → Blue Cat
-- If something visits the rabbit and it sees the squirrel then the squirrel is rough
axiom R8 : ∀ x : obj, Visits x Rabbit ∧ Sees x Squirrel → Rough Squirrel
-- If something eats the mouse then it is rough
axiom R9 : ∀ x : obj, Eats x Mouse → Rough x


theorem cat_sees_squirrel : Sees Cat Squirrel :=
begin
  sorry
end


theorem not_cat_sees_squirrel : ¬ Sees Cat Squirrel :=
begin
  sorry
end
