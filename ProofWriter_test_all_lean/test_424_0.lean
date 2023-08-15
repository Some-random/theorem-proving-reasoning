universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Gary : obj

constant Young : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Young Anne
axiom A2 : Red Bob
axiom A3 : Rough Bob
axiom A4 : Green Erin
axiom A5 : Kind Erin
axiom A6 : Kind Gary
axiom A7 : Round Gary

-- If Anne is red and Anne is young then Anne is quiet
axiom R1 : Red Anne ∧ Young Anne → Quiet Anne
-- Round things are kind
axiom R2 : ∀ x : obj, Round x → Kind x
-- If something is green and red then it is rough
axiom R3 : ∀ x : obj, Green x ∧ Red x → Rough x
-- If something is round then it is quiet
axiom R4 : ∀ x : obj, Round x → Quiet x
-- If something is young then it is round
axiom R5 : ∀ x : obj, Young x → Round x
-- Kind, red things are young
axiom R6 : ∀ x : obj, Kind x ∧ Red x → Young x
-- All red, round things are young
axiom R7 : ∀ x : obj, Red x ∧ Round x → Young x
-- If something is round and quiet then it is green
axiom R8 : ∀ x : obj, Round x ∧ Quiet x → Green x
-- All red, rough things are kind
axiom R9 : ∀ x : obj, Red x ∧ Rough x → Kind x


theorem gary_is_young : Young Gary :=
begin
  sorry
end


theorem not_young_Gary : ¬ Young Gary :=
begin
  sorry
end
