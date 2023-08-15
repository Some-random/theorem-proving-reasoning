universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Rabbit : obj
constant Tiger : obj

constant Big : obj → Prop
constant Red : obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Blue : obj → Prop

axiom A1 : Big BaldEagle
axiom A2 : Red BaldEagle
axiom A3 : Sees BaldEagle Tiger
axiom A4 : Visits BaldEagle Bear
axiom A5 : Needs Bear BaldEagle
axiom A6 : Sees Bear BaldEagle
axiom A7 : ¬ Sees Bear Tiger
axiom A8 : Big Rabbit
axiom A9 : Needs Rabbit BaldEagle
axiom A10 : Needs Rabbit Bear
axiom A11 : Visits Rabbit Tiger
axiom A12 : Needs Tiger BaldEagle
axiom A13 : Needs Tiger Rabbit
axiom A14 : Visits Tiger Bear

-- Rule R1: If something is big then it needs the tiger
axiom R1 : ∀ x : obj, Big x → Needs x Tiger

-- Rule R2: If something needs the tiger and it sees the bald eagle then the tiger is big
axiom R2 : ∀ x : obj, Needs x Tiger ∧ Sees x BaldEagle → Big Tiger

-- Rule R3: If something needs the tiger and it visits the bear then the tiger needs the rabbit
axiom R3 : ∀ x : obj, Needs x Tiger ∧ Visits x Bear → Needs Tiger Rabbit

-- Rule R4: If the bald eagle visits the bear and the bald eagle needs the tiger then the bear needs the tiger
axiom R4 : ∀ x : obj, Visits BaldEagle Bear ∧ Needs BaldEagle Tiger → Needs Bear Tiger

-- Rule R5: If something needs the tiger then it is red
axiom R5 : ∀ x : obj, Needs x Tiger → Red x

-- Rule R6: If the bear sees the rabbit then the rabbit sees the tiger
axiom R6 : ∀ x : obj, Sees Bear Rabbit → Sees Rabbit Tiger

-- Rule R7: If something is blue then it visits the bear
axiom R7 : ∀ x : obj, Blue x → Visits x Bear

-- Rule R8: If something is blue and it needs the tiger then it does not visit the bald eagle
axiom R8 : ∀ x : obj, Blue x ∧ Needs x Tiger → ¬ Visits x BaldEagle


theorem tiger_is_blue : Blue Tiger :=
begin
  sorry
end


theorem not_blue_tiger : ¬ Blue Tiger :=
begin
  sorry
end
