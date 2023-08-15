universe u

constant obj : Type u

constant Lion : obj
constant Mouse : obj
constant Rabbit : obj
constant Squirrel : obj

constant Cold : obj → Prop
constant Chases : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop

axiom T1 : Chases Lion Mouse
axiom T2 : Cold Mouse
axiom T3 : Needs Mouse Rabbit
axiom T4 : Chases Rabbit Squirrel
axiom T5 : Sees Rabbit Lion
axiom T6 : Sees Rabbit Squirrel
axiom T7 : Chases Squirrel Lion

-- If something is cold then it sees the rabbit
axiom R1 : ∀ x : obj, Cold x → Sees x Rabbit
-- If something sees the rabbit then it sees the squirrel
axiom R2 : ∀ x : obj, Sees x Rabbit → Sees x Squirrel
-- If something is cold and it sees the squirrel then the squirrel is cold
axiom R3 : ∀ x : obj, Cold x ∧ Sees x Squirrel → Cold Squirrel
-- If something chases the squirrel then it needs the squirrel
axiom R4 : ∀ x : obj, Chases x Squirrel → Needs x Squirrel
-- If something chases the squirrel and it is not cold then the squirrel does not chase the rabbit
axiom R5 : ∀ x : obj, Chases x Squirrel ∧ ¬ Cold x → ¬ Chases Squirrel Rabbit
-- If the rabbit sees the squirrel and the squirrel chases the rabbit then the rabbit does not chase the squirrel
axiom R6 : ∀ x : obj, Sees Rabbit Squirrel ∧ Chases Squirrel Rabbit → ¬ Chases Rabbit Squirrel
-- If the rabbit chases the squirrel and the squirrel does not chase the rabbit then the squirrel needs the mouse
axiom R7 : ∀ x : obj, Chases Rabbit Squirrel ∧ ¬ Chases Squirrel Rabbit → Needs Squirrel Mouse


theorem mouse_sees_squirrel : Sees Mouse Squirrel :=
begin
  sorry
end


theorem not_mouse_sees_squirrel : ¬ Sees Mouse Squirrel :=
begin
  sorry
end
