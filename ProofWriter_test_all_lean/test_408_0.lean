universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Harry : obj

constant Round : obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop

axiom A1 : Round Anne
axiom A2 : Big Bob
axiom A3 : Nice Bob
axiom A4 : Round Bob
axiom A5 : Big Dave
axiom A6 : Blue Dave
axiom A7 : Furry Dave
axiom A8 : Smart Dave
axiom A9 : Smart Harry
axiom A10 : White Harry

-- Rule R1: All blue, round people are smart
axiom R1 : ∀ x : obj, Blue x ∧ Round x → Smart x

-- Rule R2: All nice, round people are furry
axiom R2 : ∀ x : obj, Nice x ∧ Round x → Furry x

-- Rule R3: Smart, blue people are nice
axiom R3 : ∀ x : obj, Smart x ∧ Blue x → Nice x

-- Rule R4: If Anne is furry and Anne is round then Anne is big
axiom R4 : ∀ x : obj, Furry Anne ∧ Round Anne → Big Anne

-- Rule R5: All blue, smart people are white
axiom R5 : ∀ x : obj, Blue x ∧ Smart x → White x

-- Rule R6: Nice people are furry
axiom R6 : ∀ x : obj, Nice x → Furry x

-- Rule R7: All furry, big people are blue
axiom R7 : ∀ x : obj, Furry x ∧ Big x → Blue x

-- Rule R8: If someone is round then they are blue
axiom R8 : ∀ x : obj, Round x → Blue x


theorem bob_is_blue : Blue Bob :=
begin
  sorry
end


theorem not_blue_Bob : ¬ Blue Bob :=
begin
  sorry
end
