universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Bear : obj
constant Dog : obj

constant Blue : obj → Prop
constant Red : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Round : obj → Prop
constant Nice : obj → Prop

axiom A1 : Blue BaldEagle
axiom A2 : Red BaldEagle
axiom A3 : Likes BaldEagle Lion
axiom A4 : Needs BaldEagle Bear
axiom A5 : Needs BaldEagle Dog
axiom A6 : ¬ Blue Bear
axiom A7 : Nice Bear
axiom A8 : Needs Bear Dog
axiom A9 : Chases Dog BaldEagle
axiom A10 : Red Dog
axiom A11 : ¬ Needs Dog Bear
axiom A12 : ¬ Likes Lion Bear

-- Rule R1: If something likes the lion and it is not red then it chases the lion
axiom R1 : ∀ x : obj, Likes x Lion ∧ ¬ Red x → Chases x Lion

-- Rule R2: If something is red and it needs the bald eagle then the bald eagle needs the lion
axiom R2 : ∀ x : obj, Red x ∧ Needs x BaldEagle → Needs BaldEagle Lion

-- Rule R3: If something is round then it does not like the dog
axiom R3 : ∀ x : obj, Round x → ¬ Likes x Dog

-- Rule R4: If the bald eagle needs the dog then the dog is round
axiom R4 : Needs BaldEagle Dog → Round Dog

-- Rule R5: If something likes the dog then it likes the bald eagle
axiom R5 : ∀ x : obj, Likes x Dog → Likes x BaldEagle

-- Rule R6: If something chases the lion and the lion likes the dog then the dog does not like the lion
axiom R6 : ∀ x : obj, Chases x Lion ∧ Likes Lion Dog → ¬ Likes Dog Lion

-- Rule R7: If the bear likes the lion then the lion likes the dog
axiom R7 : Likes Bear Lion → Likes Lion Dog

-- Rule R8: If something likes the bear then the bear likes the lion
axiom R8 : ∀ x : obj, Likes x Bear → Likes Bear Lion

-- Rule R9: If something is round then it likes the bear
axiom R9 : ∀ x : obj, Round x → Likes x Bear


theorem dog_is_round : Round Dog :=
begin
  sorry
end


theorem not_round_Dog : ¬ Round Dog :=
begin
  sorry
end
