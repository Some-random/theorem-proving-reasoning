universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Erin : obj
constant Gary : obj

constant Blue : obj → Prop
constant Quiet : obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant White : obj → Prop
constant Furry : obj → Prop
constant Nice : obj → Prop

axiom T1 : Blue Charlie
axiom T2 : Quiet Charlie
axiom T3 : Blue Dave
axiom T4 : Cold Dave
axiom T5 : Young Dave
axiom T6 : Blue Erin
axiom T7 : Quiet Erin
axiom T8 : White Erin
axiom T9 : Young Erin
axiom T10 : Cold Gary
axiom T11 : Quiet Gary
axiom T12 : Young Gary

axiom R1 : ∀ x : obj, Quiet x → Furry x
axiom R2 : Cold Charlie → Young Charlie
axiom R3 : ∀ x : obj, White x → Cold x
axiom R4 : ∀ x : obj, Young x → Nice x
axiom R5 : Nice Gary → Young Gary
axiom R6 : ∀ x : obj, Furry x ∧ Blue x → White x
axiom R7 : ∀ x : obj, Young x ∧ Furry x → Nice x

theorem charlie_is_cold : Cold Charlie :=
begin
  sorry
end


theorem not_cold_Charlie : ¬ Cold Charlie :=
begin
  sorry
end
