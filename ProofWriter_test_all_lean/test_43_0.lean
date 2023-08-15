universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Fiona : obj

constant Quiet : obj → Prop
constant Red : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop

axiom A1 : Quiet Anne
axiom A2 : Red Anne
axiom A3 : Kind Bob
axiom A4 : Nice Bob
axiom A5 : Quiet Bob
axiom A6 : ¬ Red Bob
axiom A7 : Round Bob
axiom A8 : Big Charlie
axiom A9 : Kind Charlie
axiom A10 : Quiet Fiona

-- Rule R1: All round things are nice
axiom R1 : ∀ x : obj, Round x → Nice x

-- Rule R2: All kind, red things are rough
axiom R2 : ∀ x : obj, Kind x ∧ Red x → Rough x

-- Rule R3: If something is big then it is quiet
axiom R3 : ∀ x : obj, Big x → Quiet x

-- Rule R4: If something is rough then it is round
axiom R4 : ∀ x : obj, Rough x → Round x

-- Rule R5: If Charlie is nice and big then Charlie is not kind
axiom R5 : Nice Charlie ∧ Big Charlie → ¬ Kind Charlie

-- Rule R6: If something is red then it is kind
axiom R6 : ∀ x : obj, Red x → Kind x

-- Rule R7: If something is round and nice then it is not big
axiom R7 : ∀ x : obj, Round x ∧ Nice x → ¬ Big x


theorem not_rough_Fiona : ¬ Rough Fiona :=
begin
  sorry
end


theorem rough_Fiona : Rough Fiona :=
begin
  sorry
end
