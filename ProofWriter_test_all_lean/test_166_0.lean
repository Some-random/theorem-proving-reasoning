universe u

constant obj : Type u

constant Bear : obj
constant Lion : obj
constant Mouse : obj
constant Squirrel : obj

constant Eats : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Green : obj → Prop
constant Blue : obj → Prop

axiom T1 : ¬ Eats Bear Lion
axiom T2 : Likes Bear Lion
axiom T3 : Big Lion
axiom T4 : Visits Lion Mouse
axiom T5 : Visits Lion Squirrel
axiom T6 : Eats Mouse Squirrel
axiom T7 : Likes Mouse Bear
axiom T8 : Likes Mouse Lion
axiom T9 : Visits Mouse Squirrel
axiom T10 : ¬ Cold Squirrel
axiom T11 : Nice Squirrel

-- If something eats the squirrel then the squirrel eats the mouse
axiom R1 : ∀ x : obj, Eats x Squirrel → Eats Squirrel Mouse
-- If something visits the bear and it is green then it is nice
axiom R2 : ∀ x : obj, Visits x Bear ∧ Green x → Nice x
-- If something is green and blue then it visits the bear
axiom R3 : ∀ x : obj, Green x ∧ Blue x → Visits x Bear
-- If something likes the lion and it is blue then the lion is nice
axiom R4 : ∀ x : obj, Likes x Lion ∧ Blue x → Nice Lion
-- If something eats the mouse then it likes the lion
axiom R5 : ∀ x : obj, Eats x Mouse → Likes x Lion
-- If the bear is not green then the bear likes the lion
axiom R6 : ∀ x : obj, ¬ Green Bear → Likes Bear Lion
-- If something visits the bear then the bear likes the lion
axiom R7 : ∀ x : obj, Visits x Bear → Likes Bear Lion
-- If something likes the lion and the lion is blue then the lion likes the mouse
axiom R8 : ∀ x : obj, Likes x Lion ∧ Blue Lion → Likes Lion Mouse
-- If something is nice then it is blue
axiom R9 : ∀ x : obj, Nice x → Blue x


theorem squirrel_is_cold : Cold Squirrel :=
begin
  sorry
end


theorem not_cold_Squirrel : ¬ Cold Squirrel :=
begin
  sorry
end
