universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Fiona : obj

constant Blue : obj → Prop
constant Green : obj → Prop
constant Smart : obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Blue Anne
axiom A2 : Blue Bob
axiom A3 : Green Bob
axiom A4 : Smart Bob
axiom A5 : Big Dave
axiom A6 : Nice Dave
axiom A7 : Smart Fiona

axiom R1 : ∀ x : obj, Nice x → ¬ Green x
axiom R2 : ∀ x : obj, Quiet x ∧ Blue x → Big x
axiom R3 : ∀ x : obj, Blue x → Young x
axiom R4 : ∀ x : obj, Nice x → Quiet x
axiom R5 : ∀ x : obj, Young x → Blue x
axiom R6 : ∀ x : obj, Young Anne → Quiet Anne
axiom R7 : ∀ x : obj, Young Dave → Green Dave
axiom R8 : ∀ x : obj, Big x ∧ Quiet x → Nice x
axiom R9 : ∀ x : obj, Blue Fiona → ¬ Green Fiona

theorem not_quiet_Anne : ¬ Quiet Anne :=
begin
  sorry
end


theorem quiet_Anne : Quiet Anne :=
begin
  sorry
end
