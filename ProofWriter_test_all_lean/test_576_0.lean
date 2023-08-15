universe u

constant obj : Type u

constant BaldEagle : obj
constant Rabbit : obj
constant Tiger : obj
constant Bear : obj

constant Chases : obj → obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop
constant Sees : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Big : obj → Prop

axiom A1 : Chases BaldEagle Rabbit
axiom A2 : ¬ Chases BaldEagle Tiger
axiom A3 : Green BaldEagle
axiom A4 : Red BaldEagle
axiom A5 : Young BaldEagle
axiom A6 : Sees BaldEagle Rabbit
axiom A7 : Sees Bear BaldEagle
axiom A8 : Red Rabbit
axiom A9 : Needs Rabbit BaldEagle
axiom A10 : Chases Tiger Bear
axiom A11 : Green Tiger
axiom A12 : Sees Tiger BaldEagle

-- Rule R1: If something is young and red then it is green
axiom R1 : ∀ x : obj, Young x ∧ Red x → Green x

-- Rule R2: If something sees the bear then it needs the tiger
axiom R2 : ∀ x : obj, Sees x Bear → Needs x Tiger

-- Rule R3: If something needs the bald eagle then the bald eagle chases the rabbit
axiom R3 : ∀ x : obj, Needs x BaldEagle → Chases BaldEagle Rabbit

-- Rule R4: If something is big and it chases the rabbit then it sees the bear
axiom R4 : ∀ x : obj, Big x ∧ Chases x Rabbit → Sees x Bear

-- Rule R5: If something sees the rabbit and it needs the tiger then the tiger is not blue
axiom R5 : ∀ x : obj, Sees x Rabbit ∧ Needs x Tiger → ¬ Green Tiger

-- Rule R6: If something chases the rabbit then it sees the bald eagle
axiom R6 : ∀ x : obj, Chases x Rabbit → Sees x BaldEagle

-- Rule R7: If the rabbit is not young and the rabbit does not need the bald eagle then the rabbit sees the bear
axiom R7 : ¬ Young Rabbit ∧ ¬ Needs Rabbit BaldEagle → Sees Rabbit Bear

-- Rule R8: If something is red and it needs the bear then it is big
axiom R8 : ∀ x : obj, Red x ∧ Needs x Bear → Big x

-- Rule R9: If something is red then it needs the bear
axiom R9 : ∀ x : obj, Red x → Needs x Bear


theorem not_big_Rabbit : ¬ Big Rabbit :=
begin
  sorry
end


theorem big_Rabbit : Big Rabbit :=
begin
  sorry
end
