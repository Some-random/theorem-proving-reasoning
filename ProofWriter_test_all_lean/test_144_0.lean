universe u

constant obj : Type u

constant Bob : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop
constant Smart : obj → Prop
constant Green : obj → Prop
constant White : obj → Prop
constant Blue : obj → Prop

axiom A1 : Big Bob
axiom A2 : Cold Bob
axiom A3 : Furry Bob
axiom A4 : Smart Bob
axiom A5 : Cold Fiona
axiom A6 : ¬ Green Fiona
axiom A7 : White Fiona
axiom A8 : Smart Gary
axiom A9 : Big Harry
axiom A10 : Cold Harry
axiom A11 : Smart Harry

-- Rule R1: All green people are furry
axiom R1 : ∀ x : obj, Green x → Furry x

-- Rule R2: If Gary is furry and Gary is not smart then Gary is white
axiom R2 : ∀ x : obj, Furry Gary ∧ ¬ Smart Gary → White Gary

-- Rule R3: Smart people are green
axiom R3 : ∀ x : obj, Smart x → Green x

-- Rule R4: If Bob is not green and Bob is not white then Bob is furry
axiom R4 : ∀ x : obj, ¬ Green Bob ∧ ¬ White Bob → Furry Bob

-- Rule R5: Big people are cold
axiom R5 : ∀ x : obj, Big x → Cold x

-- Rule R6: If someone is smart and furry then they are big
axiom R6 : ∀ x : obj, Smart x ∧ Furry x → Big x

-- Rule R7: If someone is white and not cold then they are not blue
axiom R7 : ∀ x : obj, White x ∧ ¬ Cold x → ¬ Blue x

-- Rule R8: All cold people are not blue
axiom R8 : ∀ x : obj, Cold x → ¬ Blue x


theorem gary_is_cold : Cold Gary :=
begin
  sorry
end


theorem not_cold_Gary : ¬ Cold Gary :=
begin
  sorry
end
