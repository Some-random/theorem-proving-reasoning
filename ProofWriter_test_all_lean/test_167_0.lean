universe u

constant obj : Type u

constant Cat : obj
constant Squirrel : obj
constant Lion : obj
constant Mouse : obj

constant Red : obj → Prop
constant Cold : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Eats : obj → obj → Prop

axiom T1 : Red Cat
axiom T2 : Likes Cat Squirrel
axiom T3 : Eats Lion Squirrel
axiom T4 : Cold Mouse
axiom T5 : Visits Mouse Lion
axiom T6 : Red Squirrel
axiom T7 : Visits Squirrel Cat

-- If someone is cold and they like the squirrel then the squirrel is cold
axiom R1 : ∀ x : obj, Cold x ∧ Likes x Squirrel → Cold Squirrel
-- If someone is cold then they visit the squirrel
axiom R2 : ∀ x : obj, Cold x → Visits x Squirrel
-- If someone visits the lion and they like the cat then they visit the squirrel
axiom R3 : ∀ x : obj, Visits x Lion ∧ Likes x Cat → Visits x Squirrel
-- If someone visits the mouse then the mouse is red
axiom R4 : ∀ x : obj, Visits x Mouse → Red Mouse
-- If someone is cold then they like the mouse
axiom R5 : ∀ x : obj, Cold x → Likes x Mouse
-- If someone likes the mouse and the mouse visits the lion then they like the squirrel
axiom R6 : ∀ x : obj, Likes x Mouse ∧ Visits Mouse Lion → Likes x Squirrel


theorem lion_likes_mouse : Likes Lion Mouse :=
begin
  sorry
end


theorem not_lion_likes_mouse : ¬ Likes Lion Mouse :=
begin
  sorry
end
