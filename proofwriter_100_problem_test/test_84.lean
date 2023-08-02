universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Erin : obj

constant Cold : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop
constant Furry : obj → Prop

axiom A1 : Cold Anne
axiom A2 : ¬ Green Anne
axiom A3 : ¬ Kind Anne
axiom A4 : Quiet Anne
axiom A5 : Round Anne
axiom A6 : Kind Bob
axiom A7 : Round Bob
axiom A8 : Cold Charlie
axiom A9 : Quiet Charlie
axiom A10 : Round Charlie
axiom A11 : Furry Erin

axiom R1 : ∀ x : obj, Quiet x → Rough x
axiom R2 : ∀ x : obj, Cold x → Round x
axiom R3 : ∀ x : obj, Green x → Quiet x
axiom R4 : ∀ x : obj, Cold x → Quiet x
axiom R5 : ∀ x : obj, Green x → Quiet x
axiom R6 : ∀ x : obj, Kind x ∧ Green x → Furry x
axiom R7 : ∀ x : obj, Furry x → Green x
axiom R8 : ∀ x : obj, Kind Bob → ¬ Rough Bob
axiom R9 : ∀ x : obj, Rough x ∧ Green x → Cold x

theorem erin_is_quiet : Quiet Erin :=
begin
  sorry
end


theorem not_quiet_Erin : ¬ Quiet Erin :=
begin
  sorry
end
