universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Big : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop
constant Blue : obj → Prop

axiom A1 : Big Charlie
axiom A2 : Kind Charlie
axiom A3 : Nice Charlie
axiom A4 : Round Charlie
axiom A5 : Round Erin
axiom A6 : Cold Fiona
axiom A7 : Kind Fiona
axiom A8 : Round Fiona
axiom A9 : Round Harry
axiom A10 : Smart Harry

-- Rule R1: If something is blue then it is cold
axiom R1 : ∀ x : obj, Blue x → Cold x

-- Rule R2: Blue, cold things are nice
axiom R2 : ∀ x : obj, Blue x ∧ Cold x → Nice x

-- Rule R3: Blue things are big
axiom R3 : ∀ x : obj, Blue x → Big x

-- Rule R4: All round things are blue
axiom R4 : ∀ x : obj, Round x → Blue x

-- Rule R5: Smart things are blue
axiom R5 : ∀ x : obj, Smart x → Blue x

-- Rule R6: Round, smart things are kind
axiom R6 : ∀ x : obj, Round x ∧ Smart x → Kind x

-- Rule R7: All nice, round things are smart
axiom R7 : ∀ x : obj, Nice x ∧ Round x → Smart x

-- Rule R8: Nice, round things are big
axiom R8 : ∀ x : obj, Nice x ∧ Round x → Big x


theorem not_smart_erin : ¬ Smart Erin :=
begin
  sorry
end


theorem smart_erin : Smart Erin :=
begin
  sorry
end
