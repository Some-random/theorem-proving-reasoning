universe u

constant obj : Type u

constant Dog : obj
constant Squirrel : obj
constant Lion : obj
constant Rabbit : obj

constant Chases : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop
constant Green : obj → Prop

axiom A1 : Chases Dog Squirrel
axiom A2 : Chases Lion Rabbit
axiom A3 : Needs Lion Dog
axiom A4 : Visits Lion Dog
axiom A5 : Visits Lion Rabbit
axiom A6 : Cold Rabbit
axiom A7 : Visits Squirrel Dog

-- Rule R1: If something is rough and it chases the rabbit then the rabbit is rough
axiom R1 : ∀ x : obj, Rough x ∧ Chases x Rabbit → Rough Rabbit

-- Rule R2: If something chases the squirrel then it visits the dog
axiom R2 : ∀ x : obj, Chases x Squirrel → Visits x Dog

-- Rule R3: If something chases the lion then it is rough
axiom R3 : ∀ x : obj, Chases x Lion → Rough x

-- Rule R4: If something is green then it needs the dog
axiom R4 : ∀ x : obj, Green x → Needs x Dog

-- Rule R5: If something is green then it needs the lion
axiom R5 : ∀ x : obj, Green x → Needs x Lion

-- Rule R6: If something visits the dog then it is green
axiom R6 : ∀ x : obj, Visits x Dog → Green x

-- Rule R7: If something needs the lion then it chases the lion
axiom R7 : ∀ x : obj, Needs x Lion → Chases x Lion

-- Rule R8: All cold things are green
axiom R8 : ∀ x : obj, Cold x → Green x

-- Rule R9: If the rabbit needs the lion and the lion is cold then the lion visits the squirrel
axiom R9 : ∀ x : obj, Needs Rabbit Lion ∧ Cold Lion → Visits Lion Squirrel


theorem not_rough_Dog : ¬ Rough Dog :=
begin
  sorry
end


theorem rough_Dog : Rough Dog :=
begin
  sorry
end
