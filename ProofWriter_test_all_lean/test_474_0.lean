universe u

constant obj : Type u

constant Bob : obj
constant Erin : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Quiet : obj → Prop
constant White : obj → Prop
constant Red : obj → Prop
constant Green : obj → Prop
constant Smart : obj → Prop
constant Round : obj → Prop

axiom A1 : Big Bob
axiom A2 : Quiet Bob
axiom A3 : White Erin
axiom A4 : Big Gary
axiom A5 : Red Gary
axiom A6 : Green Harry
axiom A7 : Smart Harry

-- Rule R1: If someone is smart and big then they are white
axiom R1 : ∀ x : obj, Smart x ∧ Big x → White x

-- Rule R2: All quiet, red people are smart
axiom R2 : ∀ x : obj, Quiet x ∧ Red x → Smart x

-- Rule R3: If someone is smart and white then they are green
axiom R3 : ∀ x : obj, Smart x ∧ White x → Green x

-- Rule R4: Red, round people are quiet
axiom R4 : ∀ x : obj, Red x ∧ Round x → Quiet x

-- Rule R5: If someone is big then they are round
axiom R5 : ∀ x : obj, Big x → Round x

-- Rule R6: If Erin is round and quiet then Erin is smart
axiom R6 : Round Erin ∧ Quiet Erin → Smart Erin

-- Rule R7: If someone is red and green then they are big
axiom R7 : ∀ x : obj, Red x ∧ Green x → Big x


theorem erin_is_smart : Smart Erin :=
begin
  sorry
end


theorem not_smart_Erin : ¬ Smart Erin :=
begin
  sorry
end
