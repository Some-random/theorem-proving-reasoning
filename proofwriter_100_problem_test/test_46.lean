universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Green : obj → Prop
constant Big : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop

axiom A1 : Green Anne
axiom A2 : Big Charlie
axiom A3 : Quiet Charlie
axiom A4 : Round Charlie
axiom A5 : Green Erin
axiom A6 : Kind Erin
axiom A7 : Nice Erin
axiom A8 : Quiet Erin
axiom A9 : Blue Fiona
axiom A10 : Kind Fiona
axiom A11 : Quiet Fiona

axiom R1 : ∀ x : obj, Kind x → Nice x
axiom R2 : ∀ x : obj, Round x ∧ Quiet x → Blue x
axiom R3 : ∀ x : obj, Kind Charlie → Big Charlie
axiom R4 : ∀ x : obj, Big x ∧ Blue x → Kind x
axiom R5 : ∀ x : obj, Nice x → Quiet x
axiom R6 : ∀ x : obj, Green x → Big x
axiom R7 : ∀ x : obj, Quiet x → Kind x
axiom R8 : ∀ x : obj, Big x → Kind x
axiom R9 : ∀ x : obj, Green Anne → Round Anne

theorem not_blue_Erin : ¬ Blue Erin :=
begin
  sorry
end


theorem blue_Erin : Blue Erin :=
begin
  sorry
end
