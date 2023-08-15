universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Harry : obj

constant Big : obj → Prop
constant Furry : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop

axiom A1 : Big Anne
axiom A2 : Big Bob
axiom A3 : Furry Bob
axiom A4 : Nice Bob
axiom A5 : Rough Bob
axiom A6 : White Bob
axiom A7 : Young Bob
axiom A8 : Blue Erin
axiom A9 : Nice Harry
axiom A10 : Rough Harry
axiom A11 : White Harry
axiom A12 : Young Harry

-- Rule R1: If something is big then it is furry
axiom R1 : ∀ x : obj, Big x → Furry x

-- Rule R2: If Erin is furry and Erin is white then Erin is blue
axiom R2 : ∀ x : obj, Furry Erin ∧ White Erin → Blue Erin

-- Rule R3: If something is furry and big then it is nice
axiom R3 : ∀ x : obj, Furry x ∧ Big x → Nice x

-- Rule R4: If something is big then it is furry
axiom R4 : ∀ x : obj, Big x → Furry x

-- Rule R5: If something is white and nice then it is rough
axiom R5 : ∀ x : obj, White x ∧ Nice x → Rough x

-- Rule R6: Furry, nice things are young
axiom R6 : ∀ x : obj, Furry x ∧ Nice x → Young x

-- Rule R7: Furry, young things are white
axiom R7 : ∀ x : obj, Furry x ∧ Young x → White x

-- Rule R8: All big, blue things are white
axiom R8 : ∀ x : obj, Big x ∧ Blue x → White x

-- Rule R9: Young, blue things are nice
axiom R9 : ∀ x : obj, Young x ∧ Blue x → Nice x


theorem harry_is_big : Big Harry :=
begin
  sorry
end


theorem not_big_Harry : ¬ Big Harry :=
begin
  sorry
end
