universe u

constant obj : Type u

constant BaldEagle : obj
constant Cow : obj
constant Dog : obj
constant Rabbit : obj

constant Big : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Young : obj → Prop
constant Visits : obj → obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop

axiom A1 : Big BaldEagle
axiom A2 : Likes BaldEagle Cow
axiom A3 : Sees BaldEagle Rabbit
axiom A4 : Big Cow
axiom A5 : Sees Cow BaldEagle
axiom A6 : Big Dog
axiom A7 : Young Dog
axiom A8 : Likes Dog BaldEagle
axiom A9 : Sees Rabbit BaldEagle
axiom A10 : Visits Rabbit BaldEagle

-- Rule R1: If the bald eagle sees the rabbit then the rabbit is big
axiom R1 : ∀ x : obj, Sees BaldEagle Rabbit → Big Rabbit

-- Rule R2: If something likes the bald eagle then it is blue
axiom R2 : ∀ x : obj, Likes x BaldEagle → Blue x

-- Rule R3: If something likes the rabbit and the rabbit visits the cow then the cow is young
axiom R3 : ∀ x : obj, Likes x Rabbit ∧ Visits Rabbit Cow → Young Cow

-- Rule R4: If something visits the rabbit then it is round
axiom R4 : ∀ x : obj, Visits x Rabbit → Round x

-- Rule R5: If something is round and it sees the cow then the cow sees the rabbit
axiom R5 : ∀ x : obj, Round x ∧ Sees x Cow → Sees Cow Rabbit

-- Rule R6: If something is big then it visits the cow
axiom R6 : ∀ x : obj, Big x → Visits x Cow

-- Rule R7: If something sees the rabbit then the rabbit visits the bald eagle
axiom R7 : ∀ x : obj, Sees x Rabbit → Visits Rabbit BaldEagle

-- Rule R8: If something is blue then it likes the rabbit
axiom R8 : ∀ x : obj, Blue x → Likes x Rabbit

-- Rule R9: If something likes the cow and the cow is young then it is blue
axiom R9 : ∀ x : obj, Likes x Cow ∧ Young Cow → Blue x


theorem cow_is_young : Young Cow :=
begin
  sorry
end


theorem not_young_cow : ¬ Young Cow :=
begin
  sorry
end
