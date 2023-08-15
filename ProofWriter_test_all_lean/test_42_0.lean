universe u

constant obj : Type u

constant Anne : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Blue : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant Rough : obj → Prop
constant Big : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop

axiom A1 : Blue Anne
axiom A2 : Nice Anne
axiom A3 : Quiet Anne
axiom A4 : Rough Anne
axiom A5 : Big Fiona
axiom A6 : Blue Fiona
axiom A7 : Quiet Fiona
axiom A8 : Blue Gary
axiom A9 : Quiet Gary
axiom A10 : Rough Gary
axiom A11 : White Gary
axiom A12 : White Harry

-- Rule R1: All big people are rough
axiom R1 : ∀ x : obj, Big x → Rough x

-- Rule R2: All blue, nice people are big
axiom R2 : ∀ x : obj, Blue x ∧ Nice x → Big x

-- Rule R3: If someone is rough then they are green
axiom R3 : ∀ x : obj, Rough x → Green x

-- Rule R4: All nice people are big
axiom R4 : ∀ x : obj, Nice x → Big x

-- Rule R5: Green people are blue
axiom R5 : ∀ x : obj, Green x → Blue x

-- Rule R6: Rough, white people are nice
axiom R6 : ∀ x : obj, Rough x ∧ White x → Nice x

-- Rule R7: White people are nice
axiom R7 : ∀ x : obj, White x → Nice x

-- Rule R8: Green people are nice
axiom R8 : ∀ x : obj, Green x → Nice x


theorem not_blue_Harry : ¬ Blue Harry :=
begin
  sorry
end


theorem blue_Harry : Blue Harry :=
begin
  sorry
end
