universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Lion : obj
constant Rabbit : obj

constant Blue : obj → Prop
constant Cold : obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Nice : obj → Prop

axiom A1 : Blue BaldEagle
axiom A2 : Cold BaldEagle
axiom A3 : Needs BaldEagle Rabbit
axiom A4 : Visits Bear Lion
axiom A5 : Nice Lion
axiom A6 : Likes Lion BaldEagle
axiom A7 : Needs Lion BaldEagle
axiom A8 : Needs Lion Rabbit
axiom A9 : Visits Lion Rabbit
axiom A10 : Likes Rabbit Bear
axiom A11 : Needs Rabbit BaldEagle
axiom A12 : Needs Rabbit Lion
axiom A13 : Visits Rabbit BaldEagle
axiom A14 : Visits Rabbit Bear

-- Rule R1: If someone visits the rabbit then they need the bear
axiom R1 : ∀ x : obj, Visits x Rabbit → Needs x Bear

-- Rule R2: If someone needs the rabbit then the rabbit likes the bear
axiom R2 : ∀ x : obj, Needs x Rabbit → Likes Rabbit Bear

-- Rule R3: If someone visits the bear and the bear needs the rabbit then they need the bear
axiom R3 : ∀ x : obj, Visits x Bear ∧ Needs Bear Rabbit → Needs x Bear

-- Rule R4: If someone needs the bear then they need the rabbit
axiom R4 : ∀ x : obj, Needs x Bear → Needs x Rabbit

-- Rule R5: If the bear needs the lion and the bear likes the bald eagle then the bear visits the bald eagle
axiom R5 : Needs Bear Lion ∧ Likes Bear BaldEagle → Visits Bear BaldEagle

-- Rule R6: If someone is blue and they like the bald eagle then the bald eagle needs the rabbit
axiom R6 : ∀ x : obj, Blue x ∧ Likes x BaldEagle → Needs BaldEagle Rabbit

-- Rule R7: If someone likes the bear then the bear visits the rabbit
axiom R7 : ∀ x : obj, Likes x Bear → Visits Bear Rabbit

-- Rule R8: If the bald eagle likes the rabbit and the bald eagle visits the rabbit then the bald eagle needs the bear
axiom R8 : Likes BaldEagle Rabbit ∧ Visits BaldEagle Rabbit → Needs BaldEagle Bear

-- Rule R9: If the rabbit likes the bear then the bear visits the bald eagle
axiom R9 : Likes Rabbit Bear → Visits Bear BaldEagle


theorem not_like_bear_bald_eagle : ¬ Likes Bear BaldEagle :=
begin
  sorry
end


theorem like_bear_bald_eagle : Likes Bear BaldEagle :=
begin
  sorry
end
