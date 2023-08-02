universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Harry : obj

constant Green : obj → Prop
constant Nice : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Cold : obj → Prop
constant Blue : obj → Prop
constant Rough : obj → Prop

axiom A1 : Green Bob
axiom A2 : Nice Charlie
axiom A3 : Smart Charlie
axiom A4 : White Charlie
axiom A5 : Nice Erin
axiom A6 : Nice Harry
axiom A7 : White Harry

axiom R1 : Green Charlie → Blue Charlie
axiom R2 : ∀ x : obj, Nice x → Cold x
axiom R3 : ∀ x : obj, Cold x → Blue x
axiom R4 : ∀ x : obj, Rough x → Green x
axiom R5 : ∀ x : obj, Blue x → Green x
axiom R6 : ∀ x : obj, Blue x ∧ Green x → White x
axiom R7 : ∀ x : obj, Smart Bob ∧ Blue Bob → ¬ Green Bob
axiom R8 : White Charlie → Nice Charlie
axiom R9 : ∀ x : obj, White x → Smart x

theorem not_smart_erin : ¬ Smart Erin :=
begin
  sorry
end


theorem smart_erin : Smart Erin :=
begin
  sorry
end
