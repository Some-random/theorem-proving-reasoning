universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Harry : obj

constant Blue : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop
constant Big : obj → Prop

axiom A1 : Blue Anne
axiom A2 : Cold Anne
axiom A3 : Furry Anne
axiom A4 : Red Anne
axiom A5 : Round Anne
axiom A6 : White Anne
axiom A7 : Big Bob
axiom A8 : Round Dave
axiom A9 : White Dave
axiom A10 : Big Harry
axiom A11 : Red Harry
axiom A12 : White Harry

-- Rule R1: All blue things are white
axiom R1 : ∀ x : obj, Blue x → White x

-- Rule R2: If something is cold then it is red
axiom R2 : ∀ x : obj, Cold x → Red x

-- Rule R3: Furry, blue things are red
axiom R3 : ∀ x : obj, Furry x ∧ Blue x → Red x

-- Rule R4: If something is round and big then it is blue
axiom R4 : ∀ x : obj, Round x ∧ Big x → Blue x

-- Rule R5: If Anne is cold and red then Anne is big
axiom R5 : ∀ x : obj, Cold Anne ∧ Red Anne → Big Anne

-- Rule R6: All red things are round
axiom R6 : ∀ x : obj, Red x → Round x

-- Rule R7: If something is big then it is cold
axiom R7 : ∀ x : obj, Big x → Cold x

-- Rule R8: If something is cold and furry then it is white
axiom R8 : ∀ x : obj, Cold x ∧ Furry x → White x


theorem not_round_Bob : ¬ Round Bob :=
begin
  sorry
end


theorem round_Bob : Round Bob :=
begin
  sorry
end
