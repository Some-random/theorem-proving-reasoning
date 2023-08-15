universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Squirrel : obj
constant Tiger : obj

constant Big : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop

axiom A1 : Big BaldEagle
axiom A2 : Likes BaldEagle Cat
axiom A3 : Sees BaldEagle Squirrel
axiom A4 : Chases Cat Squirrel
axiom A5 : Sees Cat Squirrel
axiom A6 : Likes Squirrel Cat
axiom A7 : ¬ Likes Squirrel Tiger
axiom A8 : Big Tiger
axiom A9 : ¬ Young Tiger
axiom A10 : Sees Tiger Squirrel

-- Rule R1: If the tiger likes the bald eagle then the bald eagle sees the squirrel
axiom R1 : Likes Tiger BaldEagle → Sees BaldEagle Squirrel

-- Rule R2: If something likes the tiger and it does not chase the cat then the cat is not big
axiom R2 : ∀ x : obj, Likes x Tiger ∧ ¬ Chases x Cat → ¬ Big Cat

-- Rule R3: If something sees the cat then the cat is big
axiom R3 : ∀ x : obj, Sees x Cat → Big Cat

-- Rule R4: If something is big then it sees the bald eagle
axiom R4 : ∀ x : obj, Big x → Sees x BaldEagle

-- Rule R5: If something sees the bald eagle then the bald eagle is young
axiom R5 : ∀ x : obj, Sees x BaldEagle → Young BaldEagle

-- Rule R6: Cold things are big
axiom R6 : ∀ x : obj, Cold x → Big x

-- Rule R7: If something chases the tiger and it sees the cat then the tiger is big
axiom R7 : ∀ x : obj, Chases x Tiger ∧ Sees x Cat → Big Tiger

-- Rule R8: If something is big then it chases the tiger
axiom R8 : ∀ x : obj, Big x → Chases x Tiger

-- Rule R9: If something sees the bald eagle then it sees the cat
axiom R9 : ∀ x : obj, Sees x BaldEagle → Sees x Cat


theorem tiger_chases_tiger : Chases Tiger Tiger :=
begin
  sorry
end


theorem not_tiger_chases_tiger : ¬ Chases Tiger Tiger :=
begin
  sorry
end
