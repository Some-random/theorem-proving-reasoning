universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Fiona : obj
constant Gary : obj

constant Big : obj → Prop
constant Furry : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Round : obj → Prop
constant Quiet : obj → Prop
constant Rough : obj → Prop

axiom A1 : Big Dave
axiom A2 : Furry Dave
axiom A3 : Blue Erin
axiom A4 : Cold Erin
axiom A5 : Round Erin
axiom A6 : Quiet Fiona
axiom A7 : Rough Gary

-- If something is rough and cold then it is furry
axiom R1 : ∀ x : obj, Rough x ∧ Cold x → Furry x
-- Quiet, big things are not round
axiom R2 : ∀ x : obj, Quiet x ∧ Big x → ¬ Round x
-- If Dave is blue then Dave is furry
axiom R3 : Blue Dave → Furry Dave
-- All quiet, blue things are big
axiom R4 : ∀ x : obj, Quiet x ∧ Blue x → Big x
-- If Fiona is furry then Fiona is blue
axiom R5 : Furry Fiona → Blue Fiona
-- If something is quiet then it is cold
axiom R6 : ∀ x : obj, Quiet x → Cold x
-- All big things are cold
axiom R7 : ∀ x : obj, Big x → Cold x
-- All blue, round things are not quiet
axiom R8 : ∀ x : obj, Blue x ∧ Round x → ¬ Quiet x
-- Cold things are rough
axiom R9 : ∀ x : obj, Cold x → Rough x


theorem erin_is_furry : Furry Erin :=
begin
  sorry
end


theorem not_furry_Erin : ¬ Furry Erin :=
begin
  sorry
end
