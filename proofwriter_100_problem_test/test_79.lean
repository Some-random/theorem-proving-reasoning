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

axiom A1 : Kind Anne
axiom A2 : Round Anne
axiom A3 : Blue Dave
axiom A4 : Cold Dave
axiom A5 : Furry Dave
axiom A6 : Green Dave
axiom A7 : Quiet Dave
axiom A8 : Green Erin
axiom A9 : Furry Fiona
axiom A10 : Round Fiona

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
