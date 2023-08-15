universe u

constant obj : Type u

constant BaldEagle : obj
constant Dog : obj
constant Bear : obj
constant Squirrel : obj

constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Visits : obj → obj → Prop
constant Nice : obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop

axiom A1 : Likes BaldEagle Dog
axiom A2 : Sees BaldEagle Dog
axiom A3 : Likes Bear Dog
axiom A4 : Green Dog
axiom A5 : Sees Dog BaldEagle
axiom A6 : Sees Dog Bear
axiom A7 : Sees Squirrel Bear

-- Rule R1: If someone is kind then they visit the bald eagle
axiom R1 : ∀ x : obj, Kind x → Visits x BaldEagle

-- Rule R2: If the dog is nice and the dog is cold then the dog sees the squirrel
axiom R2 : Nice Dog ∧ Cold Dog → Sees Dog Squirrel

-- Rule R3: If someone visits the bald eagle and they are kind then the bald eagle is green
axiom R3 : ∀ x : obj, Visits x BaldEagle ∧ Kind x → Green BaldEagle

-- Rule R4: If someone likes the bald eagle and the bald eagle is green then they like the dog
axiom R4 : ∀ x : obj, Likes x BaldEagle ∧ Green BaldEagle → Likes x Dog

-- Rule R5: If someone is rough and they like the bear then they visit the bald eagle
axiom R5 : ∀ x : obj, Rough x ∧ Likes x Bear → Visits x BaldEagle

-- Rule R6: Green people are kind
axiom R6 : ∀ x : obj, Green x → Kind x

-- Rule R7: If someone visits the bald eagle then the bald eagle sees the dog
axiom R7 : ∀ x : obj, Visits x BaldEagle → Sees BaldEagle Dog

-- Rule R8: If the dog sees the squirrel and the squirrel is rough then the squirrel likes the bald eagle
axiom R8 : Sees Dog Squirrel ∧ Rough Squirrel → Likes Squirrel BaldEagle


theorem bear_visits_bald_eagle : Visits Bear BaldEagle :=
begin
  sorry
end


theorem not_bear_visits_bald_eagle : ¬ Visits Bear BaldEagle :=
begin
  sorry
end
