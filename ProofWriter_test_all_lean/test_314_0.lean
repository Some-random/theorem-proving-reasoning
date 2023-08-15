universe u

constant obj : Type u

constant Bear : obj
constant Lion : obj
constant Dog : obj
constant Squirrel : obj

constant Chases : obj → obj → Prop
constant Young : obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop
constant Red : obj → Prop

axiom A1 : Chases Bear Lion
axiom A2 : ¬ Young Bear
axiom A3 : Chases Dog Bear
axiom A4 : Chases Dog Lion
axiom A5 : Chases Dog Squirrel
axiom A6 : Sees Dog Lion
axiom A7 : Visits Dog Squirrel
axiom A8 : ¬ Chases Lion Bear
axiom A9 : ¬ Chases Lion Squirrel
axiom A10 : ¬ Red Lion
axiom A11 : Chases Squirrel Bear
axiom A12 : Chases Squirrel Dog
axiom A13 : Green Squirrel
axiom A14 : Round Squirrel
axiom A15 : Young Squirrel
axiom A16 : Sees Squirrel Dog

-- Rule R1: If something visits the bear then it sees the bear
axiom R1 : ∀ x : obj, Visits x Bear → Sees x Bear

-- Rule R2: If something sees the bear then the bear sees the dog
axiom R2 : ∀ x : obj, Sees x Bear → Sees Bear Dog

-- Rule R3: If something visits the dog and the dog is young then the dog sees the bear
axiom R3 : ∀ x : obj, Visits x Dog ∧ Young Dog → Sees Dog Bear

-- Rule R4: If something is green then it sees the dog
axiom R4 : ∀ x : obj, Green x → Sees x Dog

-- Rule R5: If something sees the dog then it visits the bear
axiom R5 : ∀ x : obj, Sees x Dog → Visits x Bear


theorem not_lion_visits_bear : ¬ Visits Lion Bear :=
begin
  sorry
end


theorem lion_visits_bear : Visits Lion Bear :=
begin
  sorry
end
