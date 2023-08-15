universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Harry : obj

constant Big : obj → Prop
constant Kind : obj → Prop
constant Blue : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant White : obj → Prop
constant Cold : obj → Prop

axiom A1 : Big Anne
axiom A2 : Kind Anne
axiom A3 : Big Charlie
axiom A4 : Big Erin
axiom A5 : Blue Erin
axiom A6 : ¬ Kind Erin
axiom A7 : ¬ Young Erin
axiom A8 : Big Harry
axiom A9 : Nice Harry
axiom A10 : White Harry
axiom A11 : Young Harry

-- Rule R1: All kind, big things are blue
axiom R1 : ∀ x : obj, Kind x ∧ Big x → Blue x

-- Rule R2: If something is young and kind then it is nice
axiom R2 : ∀ x : obj, Young x ∧ Kind x → Nice x

-- Rule R3: Blue, cold things are nice
axiom R3 : ∀ x : obj, Blue x ∧ Cold x → Nice x

-- Rule R4: White things are cold
axiom R4 : ∀ x : obj, White x → Cold x

-- Rule R5: White, big things are cold
axiom R5 : ∀ x : obj, White x ∧ Big x → Cold x

-- Rule R6: If Erin is blue and Erin is white then Erin is nice
axiom R6 : ∀ x : obj, Blue Erin ∧ White Erin → Nice Erin

-- Rule R7: All cold, nice things are young
axiom R7 : ∀ x : obj, Cold x ∧ Nice x → Young x

-- Rule R8: All kind, blue things are white
axiom R8 : ∀ x : obj, Kind x ∧ Blue x → White x


theorem harry_is_white : White Harry :=
begin
  sorry
end


theorem not_white_Harry : ¬ White Harry :=
begin
  sorry
end
