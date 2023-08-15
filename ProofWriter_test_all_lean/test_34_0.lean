universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Lion : obj
constant Squirrel : obj

constant Big : obj → Prop
constant Green : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Round : obj → Prop

axiom A1 : Big BaldEagle
axiom A2 : ¬ Green BaldEagle
axiom A3 : Likes BaldEagle Bear
axiom A4 : Likes BaldEagle Squirrel
axiom A5 : Chases Bear Lion
axiom A6 : Green Bear
axiom A7 : Visits Bear BaldEagle
axiom A8 : Visits Bear Squirrel
axiom A9 : ¬ Green Lion
axiom A10 : Likes Lion Bear
axiom A11 : Visits Lion Squirrel
axiom A12 : Chases Squirrel BaldEagle
axiom A13 : Cold Squirrel
axiom A14 : Visits Squirrel BaldEagle

-- Rule R1: If someone is cold then they are not young
axiom R1 : ∀ x : obj, Cold x → ¬ Young x

-- Rule R2: All big people are not green
axiom R2 : ∀ x : obj, Big x → ¬ Green x

-- Rule R3: If the lion is big and the lion is green then the lion chases the bald eagle
axiom R3 : Big Lion ∧ Green Lion → Chases Lion BaldEagle

-- Rule R4: If someone chases the bald eagle then they like the bear
axiom R4 : ∀ x : obj, Chases x BaldEagle → Likes x Bear

-- Rule R5: If someone is round and they visit the bald eagle then the bald eagle likes the squirrel
axiom R5 : ∀ x : obj, Round x ∧ Visits x BaldEagle → Likes BaldEagle Squirrel

-- Rule R6: If someone visits the lion then they like the bald eagle
axiom R6 : ∀ x : obj, Visits x Lion → Likes x BaldEagle

-- Rule R7: If the lion visits the squirrel and the squirrel chases the bear then the bear chases the bald eagle
axiom R7 : Visits Lion Squirrel ∧ Chases Squirrel Bear → Chases Bear BaldEagle

-- Rule R8: If someone visits the lion then they are cold
axiom R8 : ∀ x : obj, Visits x Lion → Cold x

-- Rule R9: If someone likes the bear then they chase the bear
axiom R9 : ∀ x : obj, Likes x Bear → Chases x Bear


theorem bear_chases_bald_eagle : Chases Bear BaldEagle :=
begin
  sorry
end


theorem not_bear_chases_bald_eagle : ¬ Chases Bear BaldEagle :=
begin
  sorry
end
