universe u

constant obj : Type u

constant BaldEagle : obj
constant Dog : obj
constant Lion : obj
constant Rabbit : obj

constant Cold : obj → Prop
constant Green : obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop
constant Sees : obj → obj → Prop

axiom A1 : Cold BaldEagle
axiom A2 : Green BaldEagle
axiom A3 : Needs BaldEagle Lion
axiom A4 : Visits BaldEagle Rabbit
axiom A5 : Sees Dog Lion
axiom A6 : Cold Lion
axiom A7 : Green Lion
axiom A8 : Needs Lion Dog
axiom A9 : Needs Lion Rabbit
axiom A10 : Visits Lion BaldEagle
axiom A11 : Visits Lion Dog
axiom A12 : Round Rabbit
axiom A13 : Visits Rabbit Dog
axiom A14 : Visits Rabbit Lion

-- Rule R1: If something is round then it is rough
axiom R1 : ∀ x : obj, Round x → Rough x

-- Rule R2: If something visits the rabbit and it needs the bald eagle then the rabbit visits the bald eagle
axiom R2 : ∀ x : obj, Visits x Rabbit ∧ Needs x BaldEagle → Visits Rabbit BaldEagle

-- Rule R3: If something is rough then it visits the lion
axiom R3 : ∀ x : obj, Rough x → Visits x Lion

-- Rule R4: If the dog needs the rabbit and the rabbit sees the bald eagle then the bald eagle sees the dog
axiom R4 : ∀ x : obj, Needs Dog Rabbit ∧ Sees Rabbit BaldEagle → Sees BaldEagle Dog

-- Rule R5: If the rabbit visits the lion and the rabbit needs the dog then the dog is round
axiom R5 : ∀ x : obj, Visits Rabbit Lion ∧ Needs Rabbit Dog → Round Dog

-- Rule R6: If something visits the rabbit then the rabbit needs the bald eagle
axiom R6 : ∀ x : obj, Visits x Rabbit → Needs Rabbit BaldEagle

-- Rule R7: If something visits the lion and the lion needs the dog then it needs the dog
axiom R7 : ∀ x : obj, Visits x Lion ∧ Needs Lion Dog → Needs x Dog



theorem rabbit_visits_rabbit : Visits Rabbit Rabbit :=
begin
  sorry
end


theorem not_rabbit_visits_rabbit : ¬ Visits Rabbit Rabbit :=
begin
  sorry
end
