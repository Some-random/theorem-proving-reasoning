universe u

constant obj : Type u

constant Cat : obj
constant Mouse : obj
constant Lion : obj
constant Squirrel : obj

constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop

axiom T1 : Needs Cat Mouse
axiom T2 : Visits Cat Lion
axiom T3 : Cold Lion
axiom T4 : Red Lion
axiom T5 : Round Lion
axiom T6 : Likes Lion Squirrel
axiom T7 : Needs Lion Squirrel
axiom T8 : Visits Lion Squirrel
axiom T9 : Cold Mouse
axiom T10 : Needs Mouse Lion
axiom T11 : Visits Mouse Lion
axiom T12 : Likes Squirrel Lion

-- If something needs the mouse and it needs the lion then the lion needs the mouse
axiom R1 : ∀ x : obj, Needs x Mouse ∧ Needs x Lion → Needs Lion Mouse
-- If something visits the lion then it needs the cat
axiom R2 : ∀ x : obj, Visits x Lion → Needs x Cat
-- If the mouse visits the squirrel then the squirrel likes the cat
axiom R3 : ∀ x : obj, Visits Mouse Squirrel → Likes Squirrel Cat
-- If something is rough then it is cold
axiom R4 : ∀ x : obj, Rough x → Cold x
-- If the squirrel is cold then the squirrel visits the cat
axiom R5 : ∀ x : obj, Cold Squirrel → Visits Squirrel Cat
-- If something visits the cat then the cat likes the mouse
axiom R6 : ∀ x : obj, Visits x Cat → Likes Cat Mouse
-- If something visits the squirrel then the squirrel is rough
axiom R7 : ∀ x : obj, Visits x Squirrel → Rough Squirrel
-- If something likes the mouse then it does not need the squirrel
axiom R8 : ∀ x : obj, Likes x Mouse → ¬ Needs x Squirrel
-- If something is red and it does not need the squirrel then it visits the mouse
axiom R9 : ∀ x : obj, Red x ∧ ¬ Needs x Squirrel → Visits x Mouse


theorem not_cold_Squirrel : ¬ Cold Squirrel :=
begin
  sorry
end


theorem cold_Squirrel : Cold Squirrel :=
begin
  sorry
end
