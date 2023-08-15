universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Cow : obj
constant Rabbit : obj

constant Eats : obj → obj → Prop
constant Blue : obj → Prop
constant Visits : obj → obj → Prop
constant Cold : obj → Prop
constant Sees : obj → obj → Prop
constant Nice : obj → Prop
constant Big : obj → Prop
constant Round : obj → Prop

axiom A1 : Eats BaldEagle Cow
axiom A2 : Blue BaldEagle
axiom A3 : Visits Cat BaldEagle
axiom A4 : Visits Cat Rabbit
axiom A5 : Blue Cow
axiom A6 : Sees Cow Rabbit
axiom A7 : Eats Rabbit BaldEagle
axiom A8 : Cold Rabbit
axiom A9 : Sees Rabbit Cow
axiom A10 : Visits Rabbit Cat

-- Rule R1: If something visits the cow and it sees the cow then it visits the bald eagle
axiom R1 : ∀ x : obj, Visits x Cow ∧ Sees x Cow → Visits x BaldEagle

-- Rule R2: If something is nice then it is big
axiom R2 : ∀ x : obj, Nice x → Big x

-- Rule R3: If something visits the bald eagle then it is nice
axiom R3 : ∀ x : obj, Visits x BaldEagle → Nice x

-- Rule R4: If something is cold and it visits the cow then the cow sees the cat
axiom R4 : ∀ x : obj, Cold x ∧ Visits x Cow → Sees Cow Cat

-- Rule R5: If something is round and it eats the bald eagle then it sees the bald eagle
axiom R5 : ∀ x : obj, Round x ∧ Eats x BaldEagle → Sees x BaldEagle

-- Rule R6: If something visits the cat then it visits the rabbit
axiom R6 : ∀ x : obj, Visits x Cat → Visits x Rabbit

-- Rule R7: If something visits the rabbit and it sees the cow then it visits the cow
axiom R7 : ∀ x : obj, Visits x Rabbit ∧ Sees x Cow → Visits x Cow


theorem not_sees_cow_cat : ¬ Sees Cow Cat :=
begin
  sorry
end


theorem sees_cow_cat : Sees Cow Cat :=
begin
  sorry
end
