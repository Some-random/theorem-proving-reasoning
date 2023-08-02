universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Gary : obj

constant Kind : obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop
constant Green : obj → Prop
constant White : obj → Prop
constant Cold : obj → Prop
constant Big : obj → Prop

axiom A1 : Kind Bob
axiom A2 : Round Bob
axiom A3 : Rough Charlie
axiom A4 : Green Erin
axiom A5 : Rough Erin
axiom A6 : Round Erin
axiom A7 : Cold Gary

axiom R1 : ∀ x : obj, Rough x → Green x
axiom R2 : ∀ x : obj, Green x → White x
axiom R3 : ∀ x : obj, White x → ¬ Big x
axiom R4 : ∀ x : obj, Green x ∧ ¬ Big x → Kind x
axiom R5 : ∀ x : obj, Kind x ∧ ¬ Big x → Round x

theorem not_white_Erin : ¬ White Erin :=
begin
  sorry
end


theorem white_Erin : White Erin :=
begin
  sorry
end
