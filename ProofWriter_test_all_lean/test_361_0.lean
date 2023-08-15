universe u

constant obj : Type u

constant BaldEagle : obj
constant Dog : obj
constant Squirrel : obj
constant Rabbit : obj

constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Red : obj → Prop

axiom A1 : Eats BaldEagle Dog
axiom A2 : Sees BaldEagle Dog
axiom A3 : Cold Dog
axiom A4 : Likes Dog Squirrel
axiom A5 : Sees Dog Rabbit
axiom A6 : Eats Rabbit Dog
axiom A7 : Eats Rabbit Squirrel
axiom A8 : Likes Rabbit Dog
axiom A9 : Sees Rabbit Squirrel
axiom A10 : Likes Squirrel BaldEagle

-- Rule R1: If someone is cold and they like the bald eagle then they eat the rabbit
axiom R1 : ∀ x : obj, Cold x ∧ Likes x BaldEagle → Eats x Rabbit

-- Rule R2: If someone likes the dog and they see the squirrel then the dog likes the bald eagle
axiom R2 : ∀ x : obj, Likes x Dog ∧ Sees x Squirrel → Likes Dog BaldEagle

-- Rule R3: If the bald eagle sees the dog and the bald eagle is cold then the bald eagle likes the dog
axiom R3 : ∀ x : obj, Sees BaldEagle Dog ∧ Cold BaldEagle → Likes BaldEagle Dog

-- Rule R4: If someone likes the rabbit then they are young
axiom R4 : ∀ x : obj, Likes x Rabbit → Young x

-- Rule R5: If someone likes the dog and the dog likes the squirrel then they like the bald eagle
axiom R5 : ∀ x : obj, Likes x Dog ∧ Likes Dog Squirrel → Likes x BaldEagle

-- Rule R6: If the bald eagle is red and the bald eagle likes the squirrel then the squirrel eats the rabbit
axiom R6 : ∀ x : obj, Red BaldEagle ∧ Likes BaldEagle Squirrel → Eats Squirrel Rabbit

-- Rule R7: If the dog likes the bald eagle and the bald eagle sees the dog then the bald eagle is cold
axiom R7 : ∀ x : obj, Likes Dog BaldEagle ∧ Sees BaldEagle Dog → Cold BaldEagle

-- Rule R8: If someone sees the bald eagle then the bald eagle is young
axiom R8 : ∀ x : obj, Sees x BaldEagle → Young BaldEagle


theorem rabbit_likes_dog : Likes Rabbit Dog :=
begin
  sorry
end


theorem not_rabbit_likes_dog : ¬ Likes Rabbit Dog :=
begin
  sorry
end
