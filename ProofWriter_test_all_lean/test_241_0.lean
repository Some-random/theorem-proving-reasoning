universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Dave : obj

constant Smart : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Rough : obj → Prop
constant Quiet : obj → Prop
constant Young : obj → Prop
constant Round : obj → Prop

axiom A1 : Smart Anne
axiom A2 : Big Bob
axiom A3 : Blue Bob
axiom A4 : Rough Bob
axiom A5 : Smart Bob
axiom A6 : Smart Charlie
axiom A7 : Quiet Dave

-- Rule R1: Blue and round people are rough
axiom R1 : ∀ x : obj, Blue x ∧ Round x → Rough x

-- Rule R2: If someone is smart and quiet then they are young
axiom R2 : ∀ x : obj, Smart x ∧ Quiet x → Young x

-- Rule R3: Smart people are quiet
axiom R3 : ∀ x : obj, Smart x → Quiet x

-- Rule R4: If someone is round then they are blue
axiom R4 : ∀ x : obj, Round x → Blue x

-- Rule R5: If Dave is big then Dave is quiet
axiom R5 : ∀ x : obj, Big Dave → Quiet Dave

-- Rule R6: If someone is blue then they are young
axiom R6 : ∀ x : obj, Blue x → Young x

-- Rule R7: All rough, young people are round
axiom R7 : ∀ x : obj, Rough x ∧ Young x → Round x

-- Rule R8: Smart people are rough
axiom R8 : ∀ x : obj, Smart x → Rough x

-- Rule R9: Blue, round people are big
axiom R9 : ∀ x : obj, Blue x ∧ Round x → Big x


theorem not_blue_Charlie : ¬ Blue Charlie :=
begin
  sorry
end


theorem blue_Charlie : Blue Charlie :=
begin
  sorry
end
