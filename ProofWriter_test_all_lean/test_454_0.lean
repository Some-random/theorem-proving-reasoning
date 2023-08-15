universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Blue : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Rough : obj → Prop

axiom A1 : Blue Bob
axiom A2 : Cold Bob
axiom A3 : Nice Bob
axiom A4 : Round Bob
axiom A5 : Smart Bob
axiom A6 : White Bob
axiom A7 : Cold Dave
axiom A8 : White Dave
axiom A9 : Blue Erin
axiom A10 : Cold Erin
axiom A11 : Nice Erin
axiom A12 : Round Erin
axiom A13 : Smart Erin
axiom A14 : Blue Fiona
axiom A15 : Nice Fiona
axiom A16 : Smart Fiona

-- Rule R1: White people are nice
axiom R1 : ∀ x : obj, White x → Nice x

-- Rule R2: All rough people are smart
axiom R2 : ∀ x : obj, Rough x → Smart x

-- Rule R3: If someone is blue and rough then they are smart
axiom R3 : ∀ x : obj, Blue x ∧ Rough x → Smart x

-- Rule R4: All nice, rough people are smart
axiom R4 : ∀ x : obj, Nice x ∧ Rough x → Smart x

-- Rule R5: If someone is nice and round then they are rough
axiom R5 : ∀ x : obj, Nice x ∧ Round x → Rough x

-- Rule R6: White, smart people are blue
axiom R6 : ∀ x : obj, White x ∧ Smart x → Blue x

-- Rule R7: All blue people are nice
axiom R7 : ∀ x : obj, Blue x → Nice x

-- Rule R8: Nice people are round
axiom R8 : ∀ x : obj, Nice x → Round x


theorem not_round_Fiona : ¬ Round Fiona :=
begin
  sorry
end


theorem round_Fiona : Round Fiona :=
begin
  sorry
end
