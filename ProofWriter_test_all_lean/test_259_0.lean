universe u

constant obj : Type u

constant Bob : obj
constant Erin : obj
constant Gary : obj
constant Harry : obj

constant Blue : obj → Prop
constant Round : obj → Prop
constant Nice : obj → Prop
constant Smart : obj → Prop
constant Furry : obj → Prop
constant Young : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Blue Bob
axiom A2 : Round Bob
axiom A3 : Nice Erin
axiom A4 : Round Erin
axiom A5 : Smart Erin
axiom A6 : ¬ Young Gary
axiom A7 : Blue Harry
axiom A8 : Furry Harry
axiom A9 : Nice Harry
axiom A10 : Round Harry

-- Rule R1: All smart things are furry
axiom R1 : ∀ x : obj, Smart x → Furry x

-- Rule R2: Young and nice things are furry
axiom R2 : ∀ x : obj, Young x ∧ Nice x → Furry x

-- Rule R3: If something is furry then it is young
axiom R3 : ∀ x : obj, Furry x → Young x

-- Rule R4: Round and nice things are not quiet
axiom R4 : ∀ x : obj, Round x ∧ Nice x → ¬ Quiet x

-- Rule R5: All round things are smart
axiom R5 : ∀ x : obj, Round x → Smart x

-- Rule R6: If Bob is young then Bob is nice
axiom R6 : ∀ x : obj, Young Bob → Nice Bob

-- Rule R7: If something is smart and not young then it is blue
axiom R7 : ∀ x : obj, Smart x ∧ ¬ Young x → Blue x


theorem not_nice_Bob : ¬ Nice Bob :=
begin
  sorry
end


theorem nice_Bob : Nice Bob :=
begin
  sorry
end
