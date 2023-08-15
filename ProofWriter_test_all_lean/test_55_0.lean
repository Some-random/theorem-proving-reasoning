universe u

constant obj : Type u

constant Anne : obj
constant Erin : obj
constant Fiona : obj
constant Harry : obj

constant Quiet : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Furry : obj → Prop
constant Red : obj → Prop

axiom A1 : Quiet Anne
axiom A2 : Rough Anne
axiom A3 : Nice Erin
axiom A4 : Rough Erin
axiom A5 : Round Erin
axiom A6 : Big Fiona
axiom A7 : Furry Fiona
axiom A8 : Nice Fiona
axiom A9 : Quiet Fiona
axiom A10 : Red Fiona
axiom A11 : Rough Fiona
axiom A12 : Round Fiona
axiom A13 : Red Harry
axiom A14 : Rough Harry

-- Rule R1: All nice, big people are quiet
axiom R1 : ∀ x : obj, Nice x ∧ Big x → Quiet x

-- Rule R2: Quiet people are round
axiom R2 : ∀ x : obj, Quiet x → Round x

-- Rule R3: Rough, big people are furry
axiom R3 : ∀ x : obj, Rough x ∧ Big x → Furry x

-- Rule R4: Big people are rough
axiom R4 : ∀ x : obj, Big x → Rough x

-- Rule R5: If someone is furry then they are nice
axiom R5 : ∀ x : obj, Furry x → Nice x

-- Rule R6: If someone is rough then they are big
axiom R6 : ∀ x : obj, Rough x → Big x

-- Rule R7: If Harry is round then Harry is big
axiom R7 : ∀ x : obj, Round Harry → Big Harry


theorem not_nice_Harry : ¬ Nice Harry :=
begin
  sorry
end


theorem nice_Harry : Nice Harry :=
begin
  sorry
end
