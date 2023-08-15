universe u

constant obj : Type u

constant Bear : obj
constant Squirrel : obj
constant Rabbit : obj
constant Lion : obj

constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Big : obj → Prop
constant Round : obj → Prop
constant Kind : obj → Prop

axiom A1 : Sees Bear Squirrel
axiom A2 : Visits Bear Rabbit
axiom A3 : ¬ Round Lion
axiom A4 : ¬ Likes Lion Rabbit
axiom A5 : Visits Lion Bear
axiom A6 : ¬ Big Rabbit
axiom A7 : Kind Rabbit
axiom A8 : Likes Rabbit Squirrel
axiom A9 : Sees Rabbit Bear
axiom A10 : ¬ Visits Rabbit Bear
axiom A11 : Visits Squirrel Lion

-- Rule R1: If something is big and it visits the lion then the lion visits the rabbit
axiom R1 : ∀ x : obj, Big x ∧ Visits x Lion → Visits Lion Rabbit

-- Rule R2: If something sees the lion then it does not like the lion
axiom R2 : ∀ x : obj, Sees x Lion → ¬ Likes x Lion

-- Rule R3: If something likes the squirrel then the squirrel visits the rabbit
axiom R3 : ∀ x : obj, Likes x Squirrel → Visits Squirrel Rabbit

-- Rule R4: If something sees the squirrel and it visits the squirrel then the squirrel does not see the lion
axiom R4 : ∀ x : obj, Sees x Squirrel ∧ Visits x Squirrel → ¬ Sees Squirrel Lion

-- Rule R5: If something visits the lion then the lion is not round
axiom R5 : ∀ x : obj, Visits x Lion → ¬ Round Lion

-- Rule R6: If something sees the lion and it does not see the bear then it sees the squirrel
axiom R6 : ∀ x : obj, Sees x Lion ∧ ¬ Sees x Bear → Sees x Squirrel

-- Rule R7: If something visits the rabbit then it sees the lion
axiom R7 : ∀ x : obj, Visits x Rabbit → Sees x Lion

-- Rule R8: If something sees the lion then it is big
axiom R8 : ∀ x : obj, Sees x Lion → Big x


theorem not_sees_squirrel_bear : ¬ Sees Squirrel Bear :=
begin
  sorry
end


theorem sees_squirrel_bear : Sees Squirrel Bear :=
begin
  sorry
end
