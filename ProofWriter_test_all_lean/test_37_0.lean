universe u

constant obj : Type u

constant Dave : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Blue : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop

axiom A1 : Blue Dave
axiom A2 : Red Erin
axiom A3 : Round Erin
axiom A4 : Smart Erin
axiom A5 : White Erin
axiom A6 : Rough Fiona
axiom A7 : Round Fiona
axiom A8 : Red Harry
axiom A9 : Rough Harry
axiom A10 : Smart Harry

-- Rule R1: All smart, round people are blue
axiom R1 : ∀ x : obj, Smart x ∧ Round x → Blue x

-- Rule R2: If Fiona is round then Fiona is red
axiom R2 : ∀ x : obj, Round Fiona → Red Fiona

-- Rule R3: If someone is red then they are young
axiom R3 : ∀ x : obj, Red x → Young x

-- Rule R4: If Harry is young and Harry is round then Harry is rough
axiom R4 : ∀ x : obj, Young Harry ∧ Round Harry → Rough Harry

-- Rule R5: If someone is young and smart then they are blue
axiom R5 : ∀ x : obj, Young x ∧ Smart x → Blue x

-- Rule R6: White people are smart
axiom R6 : ∀ x : obj, White x → Smart x

-- Rule R7: Young people are round
axiom R7 : ∀ x : obj, Young x → Round x

-- Rule R8: If someone is young then they are white
axiom R8 : ∀ x : obj, Young x → White x


theorem dave_is_red : Red Dave :=
begin
  sorry
end


theorem not_red_Dave : ¬ Red Dave :=
begin
  sorry
end
