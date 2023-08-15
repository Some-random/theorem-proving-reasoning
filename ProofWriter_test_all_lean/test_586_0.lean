universe u

constant obj : Type u

constant Charlie : obj
constant Erin : obj
constant Gary : obj
constant Harry : obj

constant Cold : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop

axiom A1 : Cold Charlie
axiom A2 : Round Charlie
axiom A3 : Big Erin
axiom A4 : Kind Erin
axiom A5 : Nice Erin
axiom A6 : Round Erin
axiom A7 : ¬ Big Gary
axiom A8 : ¬ Cold Gary
axiom A9 : Blue Harry
axiom A10 : Kind Harry
axiom A11 : Nice Harry

-- Rule R1: If someone is blue then they are round
axiom R1 : ∀ x : obj, Blue x → Round x

-- Rule R2: All smart people are round
axiom R2 : ∀ x : obj, Smart x → Round x

-- Rule R3: All nice people are round
axiom R3 : ∀ x : obj, Nice x → Round x

-- Rule R4: If Harry is cold then Harry is not kind
axiom R4 : Cold Harry → ¬ Kind Harry

-- Rule R5: If someone is smart then they are kind
axiom R5 : ∀ x : obj, Smart x → Kind x

-- Rule R6: If someone is cold and round then they are smart
axiom R6 : ∀ x : obj, Cold x ∧ Round x → Smart x

-- Rule R7: If someone is kind and blue then they are big
axiom R7 : ∀ x : obj, Kind x ∧ Blue x → Big x

-- Rule R8: All kind people are blue
axiom R8 : ∀ x : obj, Kind x → Blue x

-- Rule R9: If someone is big then they are nice
axiom R9 : ∀ x : obj, Big x → Nice x


theorem gary_is_smart : Smart Gary :=
begin
  sorry
end


theorem not_smart_Gary : ¬ Smart Gary :=
begin
  sorry
end
