universe u

constant obj : Type u

constant Bear : obj
constant Cow : obj
constant Mouse : obj
constant Squirrel : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Cold : obj → Prop
constant Visits : obj → obj → Prop
constant Blue : obj → Prop

axiom T1 : Chases Bear Cow
axiom T2 : Eats Bear Squirrel
axiom T3 : Cold Bear
axiom T4 : Visits Bear Mouse
axiom T5 : Visits Bear Squirrel
axiom T6 : Eats Cow Mouse
axiom T7 : Cold Cow
axiom T8 : Visits Cow Bear
axiom T9 : Visits Cow Squirrel
axiom T10 : Chases Mouse Cow
axiom T11 : Eats Squirrel Bear

-- If something eats the cow then the cow chases the squirrel
axiom R1 : ∀ x : obj, Eats x Cow → Chases Cow Squirrel
-- If something eats the squirrel and the squirrel eats the mouse then the mouse chases the cow
axiom R2 : ∀ x : obj, Eats x Squirrel ∧ Eats Squirrel Mouse → Chases Mouse Cow
-- If something eats the mouse then it visits the cow
axiom R3 : ∀ x : obj, Eats x Mouse → Visits x Cow
-- If something eats the mouse then it chases the bear
axiom R4 : ∀ x : obj, Eats x Mouse → Chases x Bear
-- If something visits the bear and it visits the mouse then the bear is blue
axiom R5 : ∀ x : obj, Visits x Bear ∧ Visits x Mouse → Blue Bear
-- If something eats the bear then the bear is cold
axiom R6 : ∀ x : obj, Eats x Bear → Cold Bear
-- If something is blue and it eats the squirrel then it eats the cow
axiom R7 : ∀ x : obj, Blue x ∧ Eats x Squirrel → Eats x Cow
-- If the mouse chases the cow and the cow chases the squirrel then the mouse visits the bear
axiom R8 : Chases Mouse Cow ∧ Chases Cow Squirrel → Visits Mouse Bear
-- If something chases the bear then the bear is blue
axiom R9 : ∀ x : obj, Chases x Bear → Blue Bear


theorem not_mouse_chases_bear : ¬ Chases Mouse Bear :=
begin
  sorry
end


theorem mouse_chases_bear : Chases Mouse Bear :=
begin
  sorry
end
