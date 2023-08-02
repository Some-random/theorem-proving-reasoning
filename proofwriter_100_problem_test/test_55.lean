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

axiom R1 : Likes Tiger BaldEagle → Sees BaldEagle Squirrel
axiom R2 : ∀ x : obj, Likes x Tiger ∧ ¬ Chases x Cat → ¬ Big Cat
axiom R3 : ∀ x : obj, Sees x Cat → Big Cat
axiom R4 : ∀ x : obj, Big x → Sees x BaldEagle
axiom R5 : ∀ x : obj, Sees x BaldEagle → Young BaldEagle
axiom R6 : ∀ x : obj, Cold x → Big x
axiom R7 : ∀ x : obj, Chases x Tiger ∧ Sees x Cat → Big Tiger
axiom R8 : ∀ x : obj, Big x → Chases x Tiger
axiom R9 : ∀ x : obj, Sees x BaldEagle → Sees x Cat

theorem tiger_chases_tiger : Chases Tiger Tiger :=
begin
  sorry
end


theorem not_tiger_chases_tiger : ¬ Chases Tiger Tiger :=
begin
  sorry
end
