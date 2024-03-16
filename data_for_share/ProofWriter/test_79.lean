universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Kind : obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop

axiom T1 : Kind Anne
axiom T2 : Round Anne
axiom T3 : Blue Dave
axiom T4 : Cold Dave
axiom T5 : Furry Dave
axiom T6 : Green Dave
axiom T7 : Quiet Dave
axiom T8 : Green Erin
axiom T9 : Furry Fiona
axiom T10 : Round Fiona

axiom R1 : Quiet Fiona ∧ Kind Fiona → Green Fiona
axiom R2 : ∀ x : obj, Green x → Blue x
axiom R3 : ∀ x : obj, Quiet x ∧ Round x → Cold x
axiom R4 : ∀ x : obj, Kind x → Green x
axiom R5 : ∀ x : obj, Quiet x → Blue x
axiom R6 : ∀ x : obj, Cold x → Furry x
axiom R7 : ∀ x : obj, Blue x ∧ Kind x → Quiet x

theorem anne_is_cold : Cold Anne :=
begin
  sorry
end


theorem not_cold_Anne : ¬ Cold Anne :=
begin
  sorry
end
