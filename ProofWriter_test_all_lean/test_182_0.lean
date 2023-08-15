universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Harry : obj

constant Blue : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop
constant Red : obj → Prop
constant Furry : obj → Prop
constant Cold : obj → Prop
constant Big : obj → Prop

axiom A1 : Blue Bob
axiom A2 : Round Bob
axiom A3 : ¬ Smart Bob
axiom A4 : ¬ Smart Charlie
axiom A5 : Round Dave
axiom A6 : Big Harry
axiom A7 : Smart Harry

-- Rule R1: Round and blue things are not red
axiom R1 : ∀ x : obj, Round x ∧ Blue x → ¬ Red x

-- Rule R2: If something is furry and round then it is cold
axiom R2 : ∀ x : obj, Furry x ∧ Round x → Cold x

-- Rule R3: Smart things are furry
axiom R3 : ∀ x : obj, Smart x → Furry x

-- Rule R4: Cold and round things are smart
axiom R4 : ∀ x : obj, Cold x ∧ Round x → Smart x

-- Rule R5: All cold things are blue
axiom R5 : ∀ x : obj, Cold x → Blue x

-- Rule R6: Furry and big things are round
axiom R6 : ∀ x : obj, Furry x ∧ Big x → Round x


theorem dave_is_round : Round Dave :=
begin
  sorry
end


theorem not_round_Dave : ¬ Round Dave :=
begin
  sorry
end
