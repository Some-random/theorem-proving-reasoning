universe u

constant obj : Type u

constant Cow : obj
constant Mouse : obj
constant Lion : obj
constant Squirrel : obj

constant Blue : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop
constant Visits : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop

axiom T1 : ¬ Blue Cow
axiom T2 : Green Cow
axiom T3 : Visits Cow Mouse
axiom T4 : ¬ Eats Lion Mouse
axiom T5 : Sees Lion Cow
axiom T6 : Visits Lion Mouse
axiom T7 : Blue Mouse
axiom T8 : Red Mouse
axiom T9 : Red Squirrel
axiom T10 : Visits Squirrel Mouse

-- If something eats the squirrel then the squirrel visits the cow
axiom R1 : ∀ x : obj, Eats x Squirrel → Visits Squirrel Cow
-- If the cow eats the mouse and the cow eats the squirrel then the squirrel visits the cow
axiom R2 : Eats Cow Mouse ∧ Eats Cow Squirrel → Visits Squirrel Cow
-- If something is red and big then it eats the lion
axiom R3 : ∀ x : obj, Red x ∧ Big x → Eats x Lion
-- If something visits the cow then it does not visit the squirrel
axiom R4 : ∀ x : obj, Visits x Cow → ¬ Visits x Squirrel
-- If something sees the mouse then the mouse eats the squirrel
axiom R5 : ∀ x : obj, Sees x Mouse → Eats Mouse Squirrel
-- If something sees the lion then it sees the mouse
axiom R6 : ∀ x : obj, Sees x Lion → Sees x Mouse
-- If something is red and it visits the lion then it does not eat the cow
axiom R7 : ∀ x : obj, Red x ∧ Visits x Lion → ¬ Eats x Cow
-- If something is blue then it sees the lion
axiom R8 : ∀ x : obj, Blue x → Sees x Lion


theorem squirrel_visits_mouse : Visits Squirrel Mouse :=
begin
  sorry
end


theorem not_squirrel_visits_mouse : ¬ Visits Squirrel Mouse :=
begin
  sorry
end
