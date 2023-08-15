universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Quiet : obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop
constant Blue : obj → Prop

axiom A1 : Quiet Anne
axiom A2 : Cold Charlie
axiom A3 : ¬ Quiet Charlie
axiom A4 : Young Charlie
axiom A5 : Nice Erin
axiom A6 : Quiet Erin
axiom A7 : Smart Erin
axiom A8 : ¬ Quiet Fiona
axiom A9 : Round Fiona
axiom A10 : Young Fiona

-- Rule R1: All smart, cold people are round
axiom R1 : ∀ x : obj, Smart x ∧ Cold x → Round x

-- Rule R2: If someone is cold then they are young
axiom R2 : ∀ x : obj, Cold x → Young x

-- Rule R3: If someone is young and quiet then they are blue
axiom R3 : ∀ x : obj, Young x ∧ Quiet x → Blue x

-- Rule R4: If someone is round and not quiet then they are blue
axiom R4 : ∀ x : obj, Round x ∧ ¬ Quiet x → Blue x

-- Rule R5: Nice, blue people are cold
axiom R5 : ∀ x : obj, Nice x ∧ Blue x → Cold x

-- Rule R6: If someone is quiet then they are cold
axiom R6 : ∀ x : obj, Quiet x → Cold x

-- Rule R7: All blue people are smart
axiom R7 : ∀ x : obj, Blue x → Smart x



theorem not_round_Anne : ¬ Round Anne :=
begin
  sorry
end


theorem round_Anne : Round Anne :=
begin
  sorry
end
