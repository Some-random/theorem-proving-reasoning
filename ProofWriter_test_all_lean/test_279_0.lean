universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Green : obj → Prop
constant Quiet : obj → Prop
constant Round : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop

axiom A1 : Green Anne
axiom A2 : Quiet Anne
axiom A3 : Round Dave
axiom A4 : Nice Erin
axiom A5 : ¬ Nice Fiona
axiom A6 : Quiet Fiona
axiom A7 : Rough Fiona

-- If something is rough and green then it is round
axiom R1 : ∀ x : obj, Rough x ∧ Green x → Round x
-- All smart things are round
axiom R2 : ∀ x : obj, Smart x → Round x
-- If something is round and blue then it is rough
axiom R3 : ∀ x : obj, Round x ∧ Blue x → Rough x
-- All blue things are rough
axiom R4 : ∀ x : obj, Blue x → Rough x
-- Quiet things are green
axiom R5 : ∀ x : obj, Quiet x → Green x
-- Round things are green
axiom R6 : ∀ x : obj, Round x → Green x
-- All nice things are blue
axiom R7 : ∀ x : obj, Nice x → Blue x
-- All rough, nice things are blue
axiom R8 : ∀ x : obj, Rough x ∧ Nice x → Blue x
-- Rough, nice things are quiet
axiom R9 : ∀ x : obj, Rough x ∧ Nice x → Quiet x


theorem not_green_Fiona : ¬ Green Fiona :=
begin
  sorry
end


theorem green_Fiona : Green Fiona :=
begin
  sorry
end
