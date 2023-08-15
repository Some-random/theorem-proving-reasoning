universe u

constant obj : Type u

constant BaldEagle : obj
constant Rabbit : obj
constant Squirrel : obj
constant Lion : obj

constant Red : obj → Prop
constant Round : obj → Prop
constant Green : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Chases : obj → obj → Prop

axiom A1 : Chases BaldEagle Rabbit
axiom A2 : Red BaldEagle
axiom A3 : Round BaldEagle
axiom A4 : Likes BaldEagle Squirrel
axiom A5 : Chases Lion Squirrel
axiom A6 : Round Lion
axiom A7 : Green Rabbit
axiom A8 : Nice Rabbit
axiom A9 : Likes Rabbit BaldEagle
axiom A10 : Sees Rabbit Squirrel
axiom A11 : Round Squirrel
axiom A12 : Sees Squirrel BaldEagle

-- Rule R1: If something likes the rabbit then the rabbit sees the lion
axiom R1 : ∀ x : obj, Likes x Rabbit → Sees Rabbit Lion

-- Rule R2: If something chases the squirrel and it likes the bald eagle then the squirrel is nice
axiom R2 : ∀ x : obj, Chases x Squirrel ∧ Likes x BaldEagle → Nice Squirrel

-- Rule R3: If something is nice and it likes the squirrel then the squirrel chases the rabbit
axiom R3 : ∀ x : obj, Nice x ∧ Likes x Squirrel → Chases Squirrel Rabbit

-- Rule R4: If something likes the bald eagle and it sees the rabbit then it likes the squirrel
axiom R4 : ∀ x : obj, Likes x BaldEagle ∧ Sees x Rabbit → Likes x Squirrel

-- Rule R5: If something likes the squirrel and it likes the lion then the lion likes the bald eagle
axiom R5 : ∀ x : obj, Likes x Squirrel ∧ Likes x Lion → Likes Lion BaldEagle

-- Rule R6: If something is young then it sees the rabbit
axiom R6 : ∀ x : obj, Young x → Sees x Rabbit

-- Rule R7: Green things are round
axiom R7 : ∀ x : obj, Green x → Round x

-- Rule R8: All round things are young
axiom R8 : ∀ x : obj, Round x → Young x

-- Rule R9: If the squirrel is nice then the squirrel likes the rabbit
axiom R9 : ∀ x : obj, Nice Squirrel → Likes Squirrel Rabbit


theorem not_sees_rabbit_rabbit : ¬ Sees Rabbit Rabbit :=
begin
  sorry
end


theorem sees_rabbit_rabbit : Sees Rabbit Rabbit :=
begin
  sorry
end
