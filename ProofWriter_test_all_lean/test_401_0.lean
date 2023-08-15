universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Fiona : obj

constant Nice : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Furry : obj → Prop
constant Smart : obj → Prop

axiom A1 : Nice Anne
axiom A2 : Big Bob
axiom A3 : Blue Bob
axiom A4 : Cold Bob
axiom A5 : Big Charlie
axiom A6 : Cold Charlie
axiom A7 : Nice Charlie
axiom A8 : Young Charlie
axiom A9 : Furry Fiona
axiom A10 : Young Fiona

-- If someone is furry and nice then they are cold
axiom R1 : ∀ x : obj, Furry x ∧ Nice x → Cold x
-- If Bob is blue and Bob is big then Bob is cold
axiom R2 : Blue Bob ∧ Big Bob → Cold Bob
-- All blue, cold people are big
axiom R3 : ∀ x : obj, Blue x ∧ Cold x → Big x
-- If someone is nice then they are smart
axiom R4 : ∀ x : obj, Nice x → Smart x
-- All smart, big people are nice
axiom R5 : ∀ x : obj, Smart x ∧ Big x → Nice x
-- All smart people are blue
axiom R6 : ∀ x : obj, Smart x → Blue x
-- Blue, smart people are furry
axiom R7 : ∀ x : obj, Blue x ∧ Smart x → Furry x
-- Furry, cold people are smart
axiom R8 : ∀ x : obj, Furry x ∧ Cold x → Smart x
-- Cold people are big
axiom R9 : ∀ x : obj, Cold x → Big x


theorem not_big_Anne : ¬ Big Anne :=
begin
  sorry
end


theorem big_Anne : Big Anne :=
begin
  sorry
end
