universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Harry : obj

constant Green : obj → Prop
constant Blue : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Kind : obj → Prop
constant White : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Green Anne
axiom A2 : Blue Charlie
axiom A3 : ¬ Green Charlie
axiom A4 : Nice Charlie
axiom A5 : Young Erin
axiom A6 : Kind Harry
axiom A7 : White Harry

-- Rule R1: If something is blue then it is nice
axiom R1 : ∀ x : obj, Blue x → Nice x

-- Rule R2: If something is blue and not quiet then it is nice
axiom R2 : ∀ x : obj, Blue x ∧ ¬ Quiet x → Nice x

-- Rule R3: If something is nice then it is kind
axiom R3 : ∀ x : obj, Nice x → Kind x

-- Rule R4: If Erin is green then Erin is white
axiom R4 : Green Erin → White Erin

-- Rule R5: All green things are blue
axiom R5 : ∀ x : obj, Green x → Blue x

-- Rule R6: If something is young then it is white
axiom R6 : ∀ x : obj, Young x → White x

-- Rule R7: If Harry is white then Harry is young
axiom R7 : White Harry → Young Harry

-- Rule R8: If Erin is nice and Erin is blue then Erin is young
axiom R8 : Nice Erin ∧ Blue Erin → Young Erin

-- Rule R9: All white things are green
axiom R9 : ∀ x : obj, White x → Green x


theorem harry_is_young : Young Harry :=
begin
  sorry
end


theorem not_young_Harry : ¬ Young Harry :=
begin
  sorry
end
