universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Cold : obj → Prop
constant Young : obj → Prop
constant White : obj → Prop
constant Nice : obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop

axiom T1 : Cold Charlie
axiom T2 : Young Charlie
axiom T3 : Cold Dave
axiom T4 : White Erin
axiom T5 : Nice Fiona
axiom T6 : White Fiona
axiom T7 : Young Fiona

-- All blue things are white
axiom R1 : ∀ x : obj, Blue x → White x
-- If something is nice and blue then it is white
axiom R2 : ∀ x : obj, Nice x ∧ Blue x → White x
-- All young, blue things are not green
axiom R3 : ∀ x : obj, Young x ∧ Blue x → ¬ Green x
-- If something is white then it is nice
axiom R4 : ∀ x : obj, White x → Nice x
-- If something is nice then it is round
axiom R5 : ∀ x : obj, Nice x → Round x
-- If Charlie is round then Charlie is white
axiom R6 : Round Charlie → White Charlie
-- All blue things are young
axiom R7 : ∀ x : obj, Blue x → Young x
-- If something is cold and green then it is young
axiom R8 : ∀ x : obj, Cold x ∧ Green x → Young x
-- Round things are blue
axiom R9 : ∀ x : obj, Round x → Blue x


theorem not_cold_Fiona : ¬ Cold Fiona :=
begin
  sorry
end


theorem cold_Fiona : Cold Fiona :=
begin
  sorry
end
