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

axiom A1 : Blue Charlie
axiom A2 : Quiet Charlie
axiom A3 : Blue Dave
axiom A4 : Cold Dave
axiom A5 : Young Dave
axiom A6 : Blue Erin
axiom A7 : Quiet Erin
axiom A8 : White Erin
axiom A9 : Young Erin
axiom A10 : Cold Gary
axiom A11 : Quiet Gary
axiom A12 : Young Gary

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
