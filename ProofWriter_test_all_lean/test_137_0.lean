universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Lion : obj
constant Squirrel : obj

constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Cold : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop
constant Kind : obj → Prop
constant Red : obj → Prop

axiom A1 : Eats BaldEagle Lion
axiom A2 : Cold BaldEagle
axiom A3 : Sees BaldEagle Cat
axiom A4 : Eats Cat Lion
axiom A5 : Round Cat
axiom A6 : Sees Cat BaldEagle
axiom A7 : Chases Lion Cat
axiom A8 : Eats Lion Cat
axiom A9 : Eats Lion Squirrel
axiom A10 : Chases Squirrel BaldEagle
axiom A11 : Chases Squirrel Lion
axiom A12 : Eats Squirrel Lion
axiom A13 : Cold Squirrel
axiom A14 : Kind Squirrel

-- Rule R1: If something is round then it sees the cat
axiom R1 : ∀ x : obj, Round x → Sees x Cat

-- Rule R2: If something chases the cat and the cat is cold then the cat eats the squirrel
axiom R2 : ∀ x : obj, Chases x Cat ∧ Cold Cat → Eats Cat Squirrel

-- Rule R3: If something chases the cat and it is kind then it is round
axiom R3 : ∀ x : obj, Chases x Cat ∧ Kind x → Round x

-- Rule R4: If the lion eats the squirrel and the lion sees the cat then the lion is young
axiom R4 : ∀ x : obj, Eats Lion Squirrel ∧ Sees Lion Cat → Young Lion

-- Rule R5: If something is cold then it chases the cat
axiom R5 : ∀ x : obj, Cold x → Chases x Cat

-- Rule R6: If the squirrel eats the bald eagle and the bald eagle is cold then the bald eagle is round
axiom R6 : ∀ x : obj, Eats Squirrel BaldEagle ∧ Cold BaldEagle → Round BaldEagle

-- Rule R7: If something chases the bald eagle and it is young then it chases the squirrel
axiom R7 : ∀ x : obj, Chases x BaldEagle ∧ Young x → Chases x Squirrel

-- Rule R8: If something eats the squirrel and it eats the cat then the squirrel chases the cat
axiom R8 : ∀ x : obj, Eats x Squirrel ∧ Eats x Cat → Chases Squirrel Cat

-- Rule R9: If something is round then it eats the bald eagle
axiom R9 : ∀ x : obj, Round x → Eats x BaldEagle


theorem not_red_squirrel : ¬ Red Squirrel :=
begin
  sorry
end


theorem red_squirrel : Red Squirrel :=
begin
  sorry
end
