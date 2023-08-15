universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Harry : obj

constant Green : obj → Prop
constant Nice : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Cold : obj → Prop
constant Blue : obj → Prop
constant Rough : obj → Prop

axiom A1 : Green Bob
axiom A2 : Nice Charlie
axiom A3 : Smart Charlie
axiom A4 : White Charlie
axiom A5 : Nice Erin
axiom A6 : Nice Harry
axiom A7 : White Harry

-- Rule R1: If Charlie is green then Charlie is blue
axiom R1 : Green Charlie → Blue Charlie

-- Rule R2: All nice people are cold
axiom R2 : ∀ x : obj, Nice x → Cold x

-- Rule R3: All cold people are blue
axiom R3 : ∀ x : obj, Cold x → Blue x

-- Rule R4: Rough people are green
axiom R4 : ∀ x : obj, Rough x → Green x

-- Rule R5: If someone is blue then they are green
axiom R5 : ∀ x : obj, Blue x → Green x

-- Rule R6: Blue, green people are white
axiom R6 : ∀ x : obj, Blue x ∧ Green x → White x

-- Rule R7: If Bob is smart and Bob is blue then Bob is not green
axiom R7 : Smart Bob ∧ Blue Bob → ¬ Green Bob

-- Rule R8: If Charlie is white then Charlie is nice
axiom R8 : White Charlie → Nice Charlie

-- Rule R9: All white people are smart
axiom R9 : ∀ x : obj, White x → Smart x


theorem bob_is_nice : Nice Bob :=
begin
  sorry
end


theorem not_nice_Bob : ¬ Nice Bob :=
begin
  sorry
end
