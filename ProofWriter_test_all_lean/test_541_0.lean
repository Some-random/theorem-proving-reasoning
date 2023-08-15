universe u

constant obj : Type u

constant BaldEagle : obj
constant Squirrel : obj
constant Cat : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Rough : obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop
constant Big : obj → Prop

axiom A1 : Chases BaldEagle Squirrel
axiom A2 : Eats Cat Squirrel
axiom A3 : Rough Cat
axiom A4 : Young Cat
axiom A5 : ¬ Sees Cat BaldEagle
axiom A6 : Blue Squirrel
axiom A7 : Chases Tiger Squirrel

-- Rule R1: If the tiger eats the bald eagle then the tiger chases the bald eagle
axiom R1 : ∀ x : obj, Eats Tiger BaldEagle → Chases Tiger BaldEagle

-- Rule R2: If something chases the cat then the cat eats the bald eagle
axiom R2 : ∀ x : obj, Chases x Cat → Eats Cat BaldEagle

-- Rule R3: If the cat sees the squirrel and the cat is not rough then the squirrel is big
axiom R3 : ∀ x : obj, Sees Cat Squirrel ∧ ¬ Rough Cat → Big Squirrel

-- Rule R4: If something sees the bald eagle and it does not chase the cat then the cat chases the bald eagle
axiom R4 : ∀ x : obj, Sees x BaldEagle ∧ ¬ Chases x Cat → Chases Cat BaldEagle

-- Rule R5: If something eats the tiger then the tiger is young
axiom R5 : ∀ x : obj, Eats x Tiger → Young Tiger

-- Rule R6: If something chases the squirrel then it eats the tiger
axiom R6 : ∀ x : obj, Chases x Squirrel → Eats x Tiger

-- Rule R7: If something eats the squirrel then it eats the bald eagle
axiom R7 : ∀ x : obj, Eats x Squirrel → Eats x BaldEagle

-- Rule R8: If the squirrel sees the bald eagle and the cat does not chase the squirrel then the cat does not eat the squirrel
axiom R8 : ∀ x : obj, Sees Squirrel BaldEagle ∧ ¬ Chases Cat Squirrel → ¬ Eats Cat Squirrel

-- Rule R9: If something is young then it eats the squirrel
axiom R9 : ∀ x : obj, Young x → Eats x Squirrel


theorem not_eats_BaldEagle_Squirrel : ¬ Eats BaldEagle Squirrel :=
begin
  sorry
end


theorem eats_BaldEagle_Squirrel : Eats BaldEagle Squirrel :=
begin
  sorry
end
