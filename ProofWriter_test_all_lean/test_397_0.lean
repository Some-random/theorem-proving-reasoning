universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Fiona : obj

constant Round : obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop
constant Smart : obj → Prop
constant Rough : obj → Prop

axiom A1 : Round Anne
axiom A2 : Blue Bob
axiom A3 : Kind Bob
axiom A4 : Red Bob
axiom A5 : Big Dave
axiom A6 : Kind Dave
axiom A7 : Smart Dave
axiom A8 : Big Fiona
axiom A9 : Red Fiona
axiom A10 : Rough Fiona
axiom A11 : Round Fiona

-- Rule R1: If Bob is round and Bob is red then Bob is rough
axiom R1 : ∀ x : obj, Round Bob ∧ Red Bob → Rough Bob

-- Rule R2: Big people are kind
axiom R2 : ∀ x : obj, Big x → Kind x

-- Rule R3: All blue people are big
axiom R3 : ∀ x : obj, Blue x → Big x

-- Rule R4: All round people are blue
axiom R4 : ∀ x : obj, Round x → Blue x

-- Rule R5: All smart, red people are kind
axiom R5 : ∀ x : obj, Smart x ∧ Red x → Kind x

-- Rule R6: All kind people are rough
axiom R6 : ∀ x : obj, Kind x → Rough x

-- Rule R7: All rough, big people are smart
axiom R7 : ∀ x : obj, Rough x ∧ Big x → Smart x

-- Rule R8: Round, smart people are blue
axiom R8 : ∀ x : obj, Round x ∧ Smart x → Blue x

-- Rule R9: If Fiona is smart and Fiona is red then Fiona is big
axiom R9 : ∀ x : obj, Smart Fiona ∧ Red Fiona → Big Fiona


theorem not_smart_Anne : ¬ Smart Anne :=
begin
  sorry
end


theorem smart_Anne : Smart Anne :=
begin
  sorry
end
