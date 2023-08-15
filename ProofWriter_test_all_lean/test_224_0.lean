universe u

constant obj : Type u

constant Erin : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Blue : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop
constant Round : obj → Prop
constant Green : obj → Prop
constant Quiet : obj → Prop
constant Nice : obj → Prop

axiom A1 : Blue Erin
axiom A2 : Cold Erin
axiom A3 : Smart Erin
axiom A4 : Round Fiona
axiom A5 : Cold Gary
axiom A6 : Green Gary
axiom A7 : Quiet Gary
axiom A8 : Round Gary
axiom A9 : Smart Gary
axiom A10 : Smart Harry

-- Rule R1: Nice and green people are round
axiom R1 : ∀ x : obj, Nice x ∧ Green x → Round x

-- Rule R2: Green people are nice
axiom R2 : ∀ x : obj, Green x → Nice x

-- Rule R3: If someone is blue then they are green
axiom R3 : ∀ x : obj, Blue x → Green x

-- Rule R4: If someone is blue then they are smart
axiom R4 : ∀ x : obj, Blue x → Smart x

-- Rule R5: Nice and round people are blue
axiom R5 : ∀ x : obj, Nice x ∧ Round x → Blue x

-- Rule R6: Smart people are green
axiom R6 : ∀ x : obj, Smart x → Green x

-- Rule R7: If Harry is blue and smart then Harry is quiet
axiom R7 : ∀ x : obj, Blue Harry ∧ Smart Harry → Quiet Harry


theorem not_smart_Fiona : ¬ Smart Fiona :=
begin
  sorry
end


theorem smart_Fiona : Smart Fiona :=
begin
  sorry
end
