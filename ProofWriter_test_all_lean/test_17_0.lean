universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Gary : obj
constant Harry : obj

constant Furry : obj → Prop
constant Green : obj → Prop
constant White : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop

axiom A1 : Furry Charlie
axiom A2 : Green Charlie
axiom A3 : White Charlie
axiom A4 : Blue Dave
axiom A5 : Cold Dave
axiom A6 : Cold Gary
axiom A7 : Rough Gary
axiom A8 : Blue Harry
axiom A9 : Furry Harry
axiom A10 : Rough Harry
axiom A11 : White Harry

-- Rule R1: Nice and cold people are green
axiom R1 : ∀ x : obj, Nice x ∧ Cold x → Green x

-- Rule R2: Rough people are green
axiom R2 : ∀ x : obj, Rough x → Green x

-- Rule R3: Green people are blue
axiom R3 : ∀ x : obj, Green x → Blue x

-- Rule R4: If someone is blue then they are nice
axiom R4 : ∀ x : obj, Blue x → Nice x

-- Rule R5: Furry and green people are rough
axiom R5 : ∀ x : obj, Furry x ∧ Green x → Rough x

-- Rule R6: Green and nice people are furry
axiom R6 : ∀ x : obj, Green x ∧ Nice x → Furry x

-- Rule R7: White people are nice
axiom R7 : ∀ x : obj, White x → Nice x

-- Rule R8: Cold people are blue
axiom R8 : ∀ x : obj, Cold x → Blue x

-- Rule R9: All rough and nice people are white
axiom R9 : ∀ x : obj, Rough x ∧ Nice x → White x


theorem not_furry_Dave : ¬ Furry Dave :=
begin
  sorry
end


theorem furry_Dave : Furry Dave :=
begin
  sorry
end
