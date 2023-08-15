universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Dave : obj
constant Erin : obj

constant Kind : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop
constant Rough : obj → Prop

axiom A1 : Kind Anne
axiom A2 : Red Anne
axiom A3 : Round Anne
axiom A4 : Blue Charlie
axiom A5 : Quiet Charlie
axiom A6 : Red Charlie
axiom A7 : Blue Dave
axiom A8 : Quiet Erin
axiom A9 : Red Erin
axiom A10 : Smart Erin

-- Rule R1: If something is round then it is rough
axiom R1 : ∀ x : obj, Round x → Rough x

-- Rule R2: Smart things are kind
axiom R2 : ∀ x : obj, Smart x → Kind x

-- Rule R3: If something is rough then it is kind
axiom R3 : ∀ x : obj, Rough x → Kind x

-- Rule R4: All blue things are red
axiom R4 : ∀ x : obj, Blue x → Red x

-- Rule R5: Red things are round
axiom R5 : ∀ x : obj, Red x → Round x

-- Rule R6: All kind, blue things are round
axiom R6 : ∀ x : obj, Kind x ∧ Blue x → Round x

-- Rule R7: If Dave is kind and Dave is rough then Dave is quiet
axiom R7 : Kind Dave ∧ Rough Dave → Quiet Dave


theorem not_quiet_Dave : ¬ Quiet Dave :=
begin
  sorry
end


theorem quiet_Dave : Quiet Dave :=
begin
  sorry
end
