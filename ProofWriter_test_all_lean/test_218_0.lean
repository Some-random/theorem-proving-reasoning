universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Rabbit : obj
constant Dog : obj

constant Sees : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop
constant Needs : obj → obj → Prop
constant Blue : obj → Prop
constant Nice : obj → Prop

axiom A1 : Sees BaldEagle Lion
axiom A2 : Sees BaldEagle Rabbit
axiom A3 : Chases Dog Lion
axiom A4 : Chases Lion Rabbit
axiom A5 : Kind Lion
axiom A6 : Rough Lion
axiom A7 : Needs Lion Rabbit
axiom A8 : Chases Rabbit Dog
axiom A9 : Blue Rabbit
axiom A10 : Nice Rabbit
axiom A11 : Sees Rabbit Lion

-- Rule R1: If something sees the bald eagle then the bald eagle sees the rabbit
axiom R1 : ∀ x : obj, Sees x BaldEagle → Sees BaldEagle Rabbit

-- Rule R2: If something needs the dog then the dog sees the rabbit
axiom R2 : ∀ x : obj, Needs x Dog → Sees Dog Rabbit

-- Rule R3: If something needs the dog and the dog is kind then the dog chases the rabbit
axiom R3 : ∀ x : obj, Needs x Dog ∧ Kind Dog → Chases Dog Rabbit

-- Rule R4: If something needs the rabbit and the rabbit is blue then the rabbit sees the bald eagle
axiom R4 : ∀ x : obj, Needs x Rabbit ∧ Blue Rabbit → Sees Rabbit BaldEagle

-- Rule R5: If something sees the rabbit and the rabbit sees the lion then it is kind
axiom R5 : ∀ x : obj, Sees x Rabbit ∧ Sees Rabbit Lion → Kind x

-- Rule R6: If the lion is rough and the lion needs the rabbit then the lion is kind
axiom R6 : ∀ x : obj, Rough Lion ∧ Needs Lion Rabbit → Kind Lion

-- Rule R7: If something sees the bald eagle then the bald eagle needs the dog
axiom R7 : ∀ x : obj, Sees x BaldEagle → Needs BaldEagle Dog

-- Rule R8: If something sees the rabbit then the rabbit sees the dog
axiom R8 : ∀ x : obj, Sees x Rabbit → Sees Rabbit Dog

-- Rule R9: If the bald eagle chases the rabbit and the bald eagle is nice then the rabbit chases the dog
axiom R9 : ∀ x : obj, Chases BaldEagle Rabbit ∧ Nice BaldEagle → Chases Rabbit Dog


theorem bald_eagle_is_kind : Kind BaldEagle :=
begin
  sorry
end


theorem not_kind_bald_eagle : ¬ Kind BaldEagle :=
begin
  sorry
end
