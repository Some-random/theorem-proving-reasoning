universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Erin : obj
constant Fiona : obj

constant Big : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop
constant Green : obj → Prop

axiom A1 : Big Charlie
axiom A2 : Nice Dave
axiom A3 : Round Dave
axiom A4 : Big Erin
axiom A5 : Nice Erin
axiom A6 : Red Fiona
axiom A7 : Rough Fiona

-- If someone is red and big then they are nice
axiom R1 : ∀ x : obj, Red x ∧ Big x → Nice x
-- If Dave is round and Dave is rough then Dave is big
axiom R2 : Round Dave ∧ Rough Dave → Big Dave
-- If someone is round and young then they are big
axiom R3 : ∀ x : obj, Round x ∧ Young x → Big x
-- All nice people are young
axiom R4 : ∀ x : obj, Nice x → Young x
-- If Charlie is round and Charlie is big then Charlie is young
axiom R5 : Round Charlie ∧ Big Charlie → Young Charlie
-- If someone is red then they are big
axiom R6 : ∀ x : obj, Red x → Big x
-- All rough, green people are round
axiom R7 : ∀ x : obj, Rough x ∧ Green x → Round x
-- If someone is big then they are red
axiom R8 : ∀ x : obj, Big x → Red x
-- Young people are green
axiom R9 : ∀ x : obj, Young x → Green x


theorem not_nice_Fiona : ¬ Nice Fiona :=
begin
  sorry
end


theorem nice_Fiona : Nice Fiona :=
begin
  sorry
end
