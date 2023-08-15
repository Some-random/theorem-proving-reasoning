universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Rough : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Green : obj → Prop

axiom A1 : Big Anne
axiom A2 : Rough Anne
axiom A3 : Blue Dave
axiom A4 : Cold Dave
axiom A5 : Red Dave
axiom A6 : Rough Dave
axiom A7 : Round Dave
axiom A8 : Round Gary
axiom A9 : Cold Harry
axiom A10 : Rough Harry

-- Rule R1: All round things are blue
axiom R1 : ∀ x : obj, Round x → Blue x

-- Rule R2: If something is cold then it is blue
axiom R2 : ∀ x : obj, Cold x → Blue x

-- Rule R3: Blue, red things are round
axiom R3 : ∀ x : obj, Blue x ∧ Red x → Round x

-- Rule R4: If something is rough then it is red
axiom R4 : ∀ x : obj, Rough x → Red x

-- Rule R5: All big, red things are cold
axiom R5 : ∀ x : obj, Big x ∧ Red x → Cold x

-- Rule R6: All round things are green
axiom R6 : ∀ x : obj, Round x → Green x

-- Rule R7: Round, cold things are big
axiom R7 : ∀ x : obj, Round x ∧ Cold x → Big x

-- Rule R8: If something is green then it is blue
axiom R8 : ∀ x : obj, Green x → Blue x


theorem anne_is_blue : Blue Anne :=
begin
  sorry
end


theorem not_blue_Anne : ¬ Blue Anne :=
begin
  sorry
end
