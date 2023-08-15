universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Dog : obj
constant Lion : obj

constant Chases : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Sees : obj → obj → Prop
constant Rough : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop

axiom A1 : Chases BaldEagle Cat
axiom A2 : Likes BaldEagle Dog
axiom A3 : Green Cat
axiom A4 : Red Cat
axiom A5 : Likes Cat Lion
axiom A6 : Chases Dog Cat
axiom A7 : Red Dog
axiom A8 : Sees Dog BaldEagle
axiom A9 : Sees Dog Lion
axiom A10 : Green Lion
axiom A11 : Rough Lion
axiom A12 : Sees Lion Cat

-- Rule R1: If someone is cold then they like the bald eagle
axiom R1 : ∀ x : obj, Cold x → Likes x BaldEagle

-- Rule R2: If someone sees the cat and they like the bald eagle then the cat is rough
axiom R2 : ∀ x : obj, Sees x Cat ∧ Likes x BaldEagle → Rough Cat

-- Rule R3: If someone sees the bald eagle then the bald eagle likes the dog
axiom R3 : ∀ x : obj, Sees x BaldEagle → Likes BaldEagle Dog

-- Rule R4: All rough people are nice
axiom R4 : ∀ x : obj, Rough x → Nice x

-- Rule R5: If someone sees the lion then they are green
axiom R5 : ∀ x : obj, Sees x Lion → Green x

-- Rule R6: If the bald eagle is red then the bald eagle is nice
axiom R6 : ∀ x : obj, Red BaldEagle → Nice BaldEagle

-- Rule R7: All nice people are cold
axiom R7 : ∀ x : obj, Nice x → Cold x

-- Rule R8: If someone chases the dog and the dog likes the cat then they see the bald eagle
axiom R8 : ∀ x : obj, Chases x Dog ∧ Likes Dog Cat → Sees x BaldEagle

-- Rule R9: If someone is rough then they like the dog
axiom R9 : ∀ x : obj, Rough x → Likes x Dog


theorem not_cold_Lion : ¬ Cold Lion :=
begin
  sorry
end


theorem cold_Lion : Cold Lion :=
begin
  sorry
end
