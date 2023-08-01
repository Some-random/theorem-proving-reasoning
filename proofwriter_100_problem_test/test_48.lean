universe u

constant obj : Type u

constant BaldEagle : obj
constant Dog : obj
constant Rabbit : obj
constant Squirrel : obj

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

axiom R1 : ∀ x : obj, Cold x ∧ Likes x BaldEagle → Eats x Rabbit
axiom R2 : ∀ x : obj, Likes x Dog ∧ Sees x Squirrel → Likes Dog BaldEagle
axiom R3 : ∀ x : obj, Sees BaldEagle Dog ∧ Cold BaldEagle → Likes BaldEagle Dog
axiom R4 : ∀ x : obj, Likes x Rabbit → Young x
axiom R5 : ∀ x : obj, Likes x Dog ∧ Likes Dog Squirrel → Likes x BaldEagle
axiom R6 : ∀ x : obj, Red BaldEagle ∧ Likes BaldEagle Squirrel → Eats Squirrel Rabbit
axiom R7 : ∀ x : obj, Likes Dog BaldEagle ∧ Sees BaldEagle Dog → Cold BaldEagle
axiom R8 : ∀ x : obj, Sees x BaldEagle → Young BaldEagle

theorem not_eat_BaldEagle_Rabbit : ¬ Eats BaldEagle Rabbit :=
begin
end


theorem eat_BaldEagle_Rabbit : Eats BaldEagle Rabbit :=
begin
end
