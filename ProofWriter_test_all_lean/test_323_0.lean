universe u

constant obj : Type u

constant BaldEagle : obj
constant Tiger : obj
constant Dog : obj
constant Bear : obj

constant Chases : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Kind : obj → Prop
constant Needs : obj → obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Round : obj → Prop

axiom A1 : Chases BaldEagle Tiger
axiom A2 : Visits BaldEagle Dog
axiom A3 : ¬ Kind Bear
axiom A4 : Needs Bear BaldEagle
axiom A5 : Needs Bear Tiger
axiom A6 : Chases Dog BaldEagle
axiom A7 : Chases Dog Bear
axiom A8 : ¬ Cold Dog
axiom A9 : Needs Dog Bear
axiom A10 : Kind Tiger
axiom A11 : ¬ Young Tiger

-- Rule R1: If someone visits the bald eagle then the bald eagle chases the tiger
axiom R1 : ∀ x : obj, Visits x BaldEagle → Chases BaldEagle Tiger

-- Rule R2: If someone visits the tiger then the tiger does not need the dog
axiom R2 : ∀ x : obj, Visits x Tiger → ¬ Needs Tiger Dog

-- Rule R3: If the dog chases the bear and the dog is round then the bear visits the dog
axiom R3 : Chases Dog Bear ∧ Round Dog → Visits Bear Dog

-- Rule R4: If someone chases the tiger and they chase the bald eagle then the bald eagle needs the dog
axiom R4 : ∀ x : obj, Chases x Tiger ∧ Chases x BaldEagle → Needs BaldEagle Dog

-- Rule R5: If someone needs the dog then the dog is round
axiom R5 : ∀ x : obj, Needs x Dog → Round Dog

-- Rule R6: If someone visits the dog then they chase the bald eagle
axiom R6 : ∀ x : obj, Visits x Dog → Chases x BaldEagle


theorem tiger_is_round : Round Tiger :=
begin
  sorry
end


theorem not_round_tiger : ¬ Round Tiger :=
begin
  sorry
end
