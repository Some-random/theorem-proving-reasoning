universe u

constant obj : Type u

constant BaldEagle : obj
constant Dog : obj
constant Squirrel : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop

axiom A1 : Chases BaldEagle Dog
axiom A2 : Chases BaldEagle Tiger
axiom A3 : Needs BaldEagle Tiger
axiom A4 : Chases Dog Tiger
axiom A5 : ¬ Likes Dog Squirrel
axiom A6 : Needs Dog Squirrel
axiom A7 : Chases Squirrel Dog
axiom A8 : Young Squirrel
axiom A9 : Likes Squirrel Tiger
axiom A10 : ¬ Cold Tiger
axiom A11 : ¬ Likes Tiger Dog
axiom A12 : Needs Tiger Squirrel

-- Rule R1: If someone likes the tiger and they need the tiger then the tiger is young
axiom R1 : ∀ x : obj, Likes x Tiger ∧ Needs x Tiger → Young Tiger

-- Rule R2: If someone needs the squirrel and the squirrel needs the bald eagle then the bald eagle needs the dog
axiom R2 : ∀ x : obj, Needs x Squirrel ∧ Needs Squirrel BaldEagle → Needs BaldEagle Dog

-- Rule R3: If someone needs the tiger then they are not cold
axiom R3 : ∀ x : obj, Needs x Tiger → ¬ Cold x

-- Rule R4: If someone is young and they need the bald eagle then they need the tiger
axiom R4 : ∀ x : obj, Young x ∧ Needs x BaldEagle → Needs x Tiger

-- Rule R5: If someone is young then they need the bald eagle
axiom R5 : ∀ x : obj, Young x → Needs x BaldEagle

-- Rule R6: If the dog chases the bald eagle and the dog does not need the tiger then the tiger is not red
axiom R6 : ∀ x : obj, Chases Dog BaldEagle ∧ ¬ Needs Dog Tiger → ¬ Red Tiger



theorem tiger_needs_tiger : Needs Tiger Tiger :=
begin
  sorry
end


theorem not_tiger_needs_tiger : ¬ Needs Tiger Tiger :=
begin
  sorry
end
