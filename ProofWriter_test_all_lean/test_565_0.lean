universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Fiona : obj
constant Harry : obj

constant Big : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant Blue : obj → Prop

axiom A1 : Big Bob
axiom A2 : Round Bob
axiom A3 : ¬ Cold Charlie
axiom A4 : Green Charlie
axiom A5 : Big Fiona
axiom A6 : Green Fiona
axiom A7 : Nice Fiona
axiom A8 : Round Fiona
axiom A9 : Cold Harry
axiom A10 : Nice Harry

-- Rule R1: If someone is rough then they are not nice
axiom R1 : ∀ x : obj, Rough x → ¬ Nice x

-- Rule R2: All green people are nice
axiom R2 : ∀ x : obj, Green x → Nice x

-- Rule R3: If someone is cold then they are nice
axiom R3 : ∀ x : obj, Cold x → Nice x

-- Rule R4: All big people are round
axiom R4 : ∀ x : obj, Big x → Round x

-- Rule R5: All green, blue people are big
axiom R5 : ∀ x : obj, Green x ∧ Blue x → Big x

-- Rule R6: If someone is round then they are not rough
axiom R6 : ∀ x : obj, Round x → ¬ Rough x

-- Rule R7: All nice people are blue
axiom R7 : ∀ x : obj, Nice x → Blue x


theorem charlie_is_blue : Blue Charlie :=
begin
  sorry
end


theorem not_blue_Charlie : ¬ Blue Charlie :=
begin
  sorry
end
