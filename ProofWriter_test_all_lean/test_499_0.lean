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

-- If something sees the rabbit then the rabbit is cold
axiom R1 : ∀ x : obj, Sees x Rabbit → Cold Rabbit
-- If something sees the tiger then the tiger is kind
axiom R2 : ∀ x : obj, Sees x Tiger → Kind Tiger
-- If something is round then it is kind
axiom R3 : ∀ x : obj, Round x → Kind x
-- If the rabbit sees the lion and the rabbit sees the mouse then the mouse sees the tiger
axiom R4 : Sees Rabbit Lion ∧ Sees Rabbit Mouse → Sees Mouse Tiger
-- If something is kind then it sees the mouse
axiom R5 : ∀ x : obj, Kind x → Sees x Mouse
-- If something is blue and kind then it sees the rabbit
axiom R6 : ∀ x : obj, Blue x ∧ Kind x → Sees x Rabbit
-- If something chases the lion and the lion chases the rabbit then the rabbit chases the mouse
axiom R7 : ∀ x : obj, Chases x Lion ∧ Chases Lion Rabbit → Chases Rabbit Mouse
-- If something is kind and it sees the mouse then it sees the lion
axiom R8 : ∀ x : obj, Kind x ∧ Sees x Mouse → Sees x Lion


theorem mouse_chases_mouse : Chases Mouse Mouse :=
begin
  sorry
end


theorem not_mouse_chases_mouse : ¬ Chases Mouse Mouse :=
begin
  sorry
end
