universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Cow : obj
constant Rabbit : obj

constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop

axiom A1 : Likes BaldEagle Cat
axiom A2 : Visits BaldEagle Rabbit
axiom A3 : Needs Cat BaldEagle
axiom A4 : Needs Cat Cow
axiom A5 : Visits Cat Rabbit
axiom A6 : Likes Cow BaldEagle
axiom A7 : Likes Cow Rabbit
axiom A8 : Visits Cow BaldEagle
axiom A9 : Green Rabbit
axiom A10 : Red Rabbit
axiom A11 : Needs Rabbit Cat

-- Rule R1: If someone needs the bald eagle and they are red then they visit the cow
axiom R1 : ∀ x : obj, Needs x BaldEagle ∧ Red x → Visits x Cow

-- Rule R2: If someone needs the bald eagle then the bald eagle needs the rabbit
axiom R2 : ∀ x : obj, Needs x BaldEagle → Needs BaldEagle Rabbit

-- Rule R3: If someone needs the cat then they like the bald eagle
axiom R3 : ∀ x : obj, Needs x Cat → Likes x BaldEagle

-- Rule R4: If someone needs the bald eagle then they are red
axiom R4 : ∀ x : obj, Needs x BaldEagle → Red x

-- Rule R5: If someone is green then they need the bald eagle
axiom R5 : ∀ x : obj, Green x → Needs x BaldEagle

-- Rule R6: If someone likes the bald eagle and they need the bald eagle then the bald eagle visits the rabbit
axiom R6 : ∀ x : obj, Likes x BaldEagle ∧ Needs x BaldEagle → Visits BaldEagle Rabbit

-- Rule R7: If the cat likes the bald eagle then the bald eagle visits the cow
axiom R7 : ∀ x : obj, Likes Cat BaldEagle → Visits BaldEagle Cow

-- Rule R8: If someone visits the cow then they need the cat
axiom R8 : ∀ x : obj, Visits x Cow → Needs x Cat

-- Rule R9: If the cow is rough and the cow is nice then the cow is red
axiom R9 : ∀ x : obj, Rough Cow ∧ Nice Cow → Red Cow


theorem rabbit_visits_cat : Visits Rabbit Cat :=
begin
  sorry
end


theorem not_rabbit_visits_cat : ¬ Visits Rabbit Cat :=
begin
  sorry
end
