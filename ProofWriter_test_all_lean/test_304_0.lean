universe u

constant obj : Type u

constant Dog : obj
constant Mouse : obj
constant Rabbit : obj
constant Squirrel : obj

constant Blue : obj → Prop
constant Sees : obj → obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop
constant Green : obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop

axiom T1 : Blue Dog
axiom T2 : Sees Dog Mouse
axiom T3 : ¬ Round Mouse
axiom T4 : Sees Mouse Dog
axiom T5 : Cold Rabbit
axiom T6 : Red Rabbit
axiom T7 : Sees Rabbit Mouse
axiom T8 : Green Squirrel
axiom T9 : Needs Squirrel Mouse
axiom T10 : Sees Squirrel Dog
axiom T11 : ¬ Visits Squirrel Dog

-- If something sees the dog then it sees the squirrel
axiom R1 : ∀ x : obj, Sees x Dog → Sees x Squirrel
-- If something is red and blue then it sees the squirrel
axiom R2 : ∀ x : obj, Red x ∧ Blue x → Sees x Squirrel
-- If something needs the squirrel and it is green then it visits the rabbit
axiom R3 : ∀ x : obj, Needs x Squirrel ∧ Green x → Visits x Rabbit
-- If something needs the rabbit and the rabbit is blue then the rabbit does not need the dog
axiom R4 : ∀ x : obj, Needs x Rabbit ∧ Blue Rabbit → ¬ Needs Rabbit Dog
-- If the mouse needs the rabbit and the rabbit is cold then the mouse is green
axiom R5 : ∀ x : obj, Needs Mouse Rabbit ∧ Cold Rabbit → Green Mouse
-- If something sees the squirrel then it needs the rabbit
axiom R6 : ∀ x : obj, Sees x Squirrel → Needs x Rabbit
-- If something sees the rabbit then it needs the mouse
axiom R7 : ∀ x : obj, Sees x Rabbit → Needs x Mouse
-- If something is blue then it needs the dog
axiom R8 : ∀ x : obj, Blue x → Needs x Dog
-- If something is green and it sees the dog then it is blue
axiom R9 : ∀ x : obj, Green x ∧ Sees x Dog → Blue x


theorem not_sees_squirrel_squirrel : ¬ Sees Squirrel Squirrel :=
begin
  sorry
end


theorem sees_squirrel_squirrel : Sees Squirrel Squirrel :=
begin
  sorry
end
