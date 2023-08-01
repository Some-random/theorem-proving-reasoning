universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Round : obj → Prop
constant Furry : obj → Prop
constant Nice : obj → Prop
constant Smart : obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Young : obj → Prop

axiom A1 : ¬ Round Bob
axiom A2 : Furry Charlie
axiom A3 : Nice Charlie
axiom A4 : Smart Charlie
axiom A5 : Red Erin
axiom A6 : Furry Fiona
axiom A7 : Young Fiona

-- Rule R1: All red people are not round
axiom R1 : ∀ x : obj, Red x → ¬ Round x

-- Rule R2: Red people are not blue
axiom R2 : ∀ x : obj, Red x → ¬ Blue x

-- Rule R3: All young people are furry
axiom R3 : ∀ x : obj, Young x → Furry x

-- Rule R4: If Erin is red and Erin is not round then Erin is nice
axiom R4 : Red Erin ∧ ¬ Round Erin → Nice Erin

-- Rule R5: If someone is round and nice then they are not young
axiom R5 : ∀ x : obj, Round x ∧ Nice x → ¬ Young x

-- Rule R6: All smart people are young
axiom R6 : ∀ x : obj, Smart x → Young x

-- Rule R7: Nice people are smart
axiom R7 : ∀ x : obj, Nice x → Smart x

theorem charlie_is_round : Round Charlie :=
begin
end


theorem not_round_Charlie : ¬ Round Charlie :=
begin
end
