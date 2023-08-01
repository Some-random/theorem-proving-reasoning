universe u

constant obj : Type u

constant Lion : obj
constant Mouse : obj
constant Rabbit : obj
constant Tiger : obj

constant Kind : obj → Prop
constant Chases : obj → obj → Prop
constant Blue : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Sees : obj → obj → Prop

axiom T1 : Kind Lion
axiom T2 : Chases Mouse Lion
axiom T3 : Blue Rabbit
axiom T4 : Round Rabbit
axiom T5 : Blue Tiger
axiom T6 : Cold Tiger
axiom T7 : Young Tiger

axiom R1 : ∀ x : obj, Sees x Rabbit → Cold Rabbit
axiom R2 : ∀ x : obj, Sees x Tiger → Kind Tiger
axiom R3 : ∀ x : obj, Round x → Kind x
axiom R4 : ∀ x : obj, Sees Rabbit Lion ∧ Sees Rabbit Mouse → Sees Mouse Tiger
axiom R5 : ∀ x : obj, Kind x → Sees x Mouse
axiom R6 : ∀ x : obj, Blue x ∧ Kind x → Sees x Rabbit
axiom R7 : ∀ x : obj, Chases x Lion ∧ Chases Lion Rabbit → Chases Rabbit Mouse
axiom R8 : ∀ x : obj, Kind x ∧ Sees x Mouse → Sees x Lion

theorem not_mouse_sees_rabbit : ¬ Sees Mouse Rabbit :=
begin
end


theorem mouse_sees_rabbit : Sees Mouse Rabbit :=
begin
end
