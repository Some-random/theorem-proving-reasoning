universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Fiona : obj
constant Gary : obj

constant Nice : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Red : obj → Prop
constant Green : obj → Prop

axiom A1 : Nice Anne
axiom A2 : Young Anne
axiom A3 : Cold Dave
axiom A4 : Smart Dave
axiom A5 : White Dave
axiom A6 : Nice Fiona
axiom A7 : ¬ Red Fiona
axiom A8 : Young Fiona
axiom A9 : Cold Gary
axiom A10 : Red Gary

-- Rule R1: If someone is smart then they are green
axiom R1 : ∀ x : obj, Smart x → Green x

-- Rule R2: If someone is green then they are nice
axiom R2 : ∀ x : obj, Green x → Nice x

-- Rule R3: Nice people are young
axiom R3 : ∀ x : obj, Nice x → Young x

-- Rule R4: If someone is white then they are young
axiom R4 : ∀ x : obj, White x → Young x

-- Rule R5: If someone is cold then they are white
axiom R5 : ∀ x : obj, Cold x → White x

-- Rule R6: If someone is green and smart then they are white
axiom R6 : ∀ x : obj, Green x ∧ Smart x → White x

-- Rule R7: All young, red people are smart
axiom R7 : ∀ x : obj, Young x ∧ Red x → Smart x

-- Rule R8: If Fiona is red then Fiona is green
axiom R8 : Red Fiona → Green Fiona

-- Rule R9: If Anne is smart then Anne is not green
axiom R9 : Smart Anne → ¬ Green Anne


theorem dave_is_nice : Nice Dave :=
begin
  sorry
end


theorem not_nice_Dave : ¬ Nice Dave :=
begin
  sorry
end
