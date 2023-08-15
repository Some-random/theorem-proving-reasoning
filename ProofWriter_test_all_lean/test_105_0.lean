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

-- If Bob is round and Bob is red then Bob is rough
axiom R1 : Round Bob ∧ Red Bob → Rough Bob
-- Big people are kind
axiom R2 : ∀ x : obj, Big x → Kind x
-- All blue people are big
axiom R3 : ∀ x : obj, Blue x → Big x
-- All round people are blue
axiom R4 : ∀ x : obj, Round x → Blue x
-- All smart, red people are kind
axiom R5 : ∀ x : obj, Smart x ∧ Red x → Kind x
-- All kind people are rough
axiom R6 : ∀ x : obj, Kind x → Rough x
-- All rough, big people are smart
axiom R7 : ∀ x : obj, Rough x ∧ Big x → Smart x
-- Round, smart people are blue
axiom R8 : ∀ x : obj, Round x ∧ Smart x → Blue x
-- If Fiona is smart and Fiona is red then Fiona is big
axiom R9 : Smart Fiona ∧ Red Fiona → Big Fiona


theorem not_smart_Bob : ¬ Smart Bob :=
begin
  sorry
end


theorem smart_Bob : Smart Bob :=
begin
  sorry
end
