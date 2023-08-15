universe u

constant obj : Type u

constant BaldEagle : obj
constant Cow : obj
constant Dog : obj
constant Tiger : obj

constant Cold : obj → Prop
constant Nice : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop

axiom A1 : Cold BaldEagle
axiom A2 : Nice BaldEagle
axiom A3 : Likes BaldEagle Cow
axiom A4 : Likes BaldEagle Tiger
axiom A5 : Sees BaldEagle Cow
axiom A6 : Sees BaldEagle Dog
axiom A7 : Sees BaldEagle Tiger
axiom A8 : Visits BaldEagle Cow
axiom A9 : Young Cow
axiom A10 : Visits Cow BaldEagle
axiom A11 : Sees Dog BaldEagle
axiom A12 : Visits Dog Tiger
axiom A13 : Blue Tiger
axiom A14 : Cold Tiger
axiom A15 : Young Tiger
axiom A16 : Visits Tiger Cow

-- Rule R1: If something is big and it visits the bald eagle then it visits the cow
axiom R1 : ∀ x : obj, Big x ∧ Visits x BaldEagle → Visits x Cow

-- Rule R2: If something likes the tiger and the tiger is big then it is big
axiom R2 : ∀ x : obj, Likes x Tiger ∧ Big Tiger → Big x

-- Rule R3: If something visits the cow and the cow is young then it is big
axiom R3 : ∀ x : obj, Visits x Cow ∧ Young Cow → Big x

-- Rule R4: If something visits the tiger then it is young
axiom R4 : ∀ x : obj, Visits x Tiger → Young x

-- Rule R5: If the tiger likes the dog then the tiger visits the bald eagle
axiom R5 : ∀ x : obj, Likes Tiger Dog → Visits Tiger BaldEagle

-- Rule R6: If something is big then it visits the dog
axiom R6 : ∀ x : obj, Big x → Visits x Dog

-- Rule R7: If something visits the dog then it is cold
axiom R7 : ∀ x : obj, Visits x Dog → Cold x

-- Rule R8: If something is young then it likes the tiger
axiom R8 : ∀ x : obj, Young x → Likes x Tiger


theorem dog_is_young : Young Dog :=
begin
  sorry
end


theorem not_young_Dog : ¬ Young Dog :=
begin
  sorry
end
