universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Nice : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop
constant Young : obj → Prop
constant Rough : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Nice Anne
axiom A2 : Red Erin
axiom A3 : ¬ Round Erin
axiom A4 : ¬ Nice Fiona
axiom A5 : ¬ Blue Harry
axiom A6 : Red Harry
axiom A7 : Young Harry

-- If Harry is blue and Harry is nice then Harry is red
axiom R1 : Blue Harry ∧ Nice Harry → Red Harry
-- If something is young and round then it is rough
axiom R2 : ∀ x : obj, Young x ∧ Round x → Rough x
-- All young, nice things are rough
axiom R3 : ∀ x : obj, Young x ∧ Nice x → Rough x
-- Round, quiet things are young
axiom R4 : ∀ x : obj, Round x ∧ Quiet x → Young x
-- If Erin is young and Erin is round then Erin is blue
axiom R5 : Young Erin ∧ Round Erin → Blue Erin
-- Nice things are quiet
axiom R6 : ∀ x : obj, Nice x → Quiet x
-- All quiet things are round
axiom R7 : ∀ x : obj, Quiet x → Round x
-- Rough things are not red
axiom R8 : ∀ x : obj, Rough x → ¬ Red x
-- If something is round and red then it is blue
axiom R9 : ∀ x : obj, Round x ∧ Red x → Blue x


theorem not_young_Anne : ¬ Young Anne :=
begin
  sorry
end


theorem young_Anne : Young Anne :=
begin
  sorry
end
