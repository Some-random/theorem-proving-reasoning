universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Dog : obj
constant Cat : obj

constant Nice : obj → Prop
constant Round : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Green : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Eats : obj → obj → Prop

axiom A1 : Nice BaldEagle
axiom A2 : Round BaldEagle
axiom A3 : Likes BaldEagle Lion
axiom A4 : Visits BaldEagle Dog
axiom A5 : Green Cat
axiom A6 : Nice Cat
axiom A7 : Round Cat
axiom A8 : Likes Cat BaldEagle
axiom A9 : Likes Cat Dog
axiom A10 : Visits Cat Dog
axiom A11 : Eats Dog Cat
axiom A12 : Big Dog
axiom A13 : Blue Dog
axiom A14 : Blue Lion

-- Rule R1: If something is nice and green then it visits the bald eagle
axiom R1 : ∀ x : obj, Nice x ∧ Green x → Visits x BaldEagle

-- Rule R2: If something is big then it eats the lion
axiom R2 : ∀ x : obj, Big x → Eats x Lion

-- Rule R3: If the bald eagle visits the lion then the lion is nice
axiom R3 : ∀ x : obj, Visits BaldEagle Lion → Nice Lion

-- Rule R4: If the bald eagle likes the cat then the bald eagle visits the dog
axiom R4 : ∀ x : obj, Likes BaldEagle Cat → Visits BaldEagle Dog

-- Rule R5: Round things are big
axiom R5 : ∀ x : obj, Round x → Big x

-- Rule R6: If something eats the cat and the cat eats the dog then the cat eats the lion
axiom R6 : ∀ x : obj, Eats x Cat ∧ Eats Cat Dog → Eats Cat Lion

-- Rule R7: If something visits the dog and it eats the lion then the lion is round
axiom R7 : ∀ x : obj, Visits x Dog ∧ Eats x Lion → Round Lion


theorem not_round_lion : ¬ Round Lion :=
begin
  sorry
end


theorem round_lion : Round Lion :=
begin
  sorry
end
