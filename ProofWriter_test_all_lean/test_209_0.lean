universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Erin : obj

constant Big : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Rough : obj → Prop

axiom A1 : Big Anne
axiom A2 : Nice Anne
axiom A3 : Round Anne
axiom A4 : Nice Bob
axiom A5 : Round Bob
axiom A6 : Blue Dave
axiom A7 : Red Dave
axiom A8 : Smart Dave
axiom A9 : Red Erin
axiom A10 : Round Erin

-- Rule R1: If someone is big and round then they are smart
axiom R1 : ∀ x : obj, Big x ∧ Round x → Smart x

-- Rule R2: All rough people are blue
axiom R2 : ∀ x : obj, Rough x → Blue x

-- Rule R3: Nice people are big
axiom R3 : ∀ x : obj, Nice x → Big x

-- Rule R4: If someone is nice then they are round
axiom R4 : ∀ x : obj, Nice x → Round x

-- Rule R5: Round, red people are rough
axiom R5 : ∀ x : obj, Round x ∧ Red x → Rough x

-- Rule R6: All round, smart people are red
axiom R6 : ∀ x : obj, Round x ∧ Smart x → Red x


theorem dave_is_rough : Rough Dave :=
begin
  sorry
end


theorem not_rough_Dave : ¬ Rough Dave :=
begin
  sorry
end
