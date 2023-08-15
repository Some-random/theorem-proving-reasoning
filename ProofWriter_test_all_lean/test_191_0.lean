universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Lion : obj
constant Mouse : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Young : obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop

axiom A1 : Chases BaldEagle Cat
axiom A2 : ¬ Chases BaldEagle Mouse
axiom A3 : Young BaldEagle
axiom A4 : ¬ Chases Cat BaldEagle
axiom A5 : ¬ Eats Cat BaldEagle
axiom A6 : Rough Cat
axiom A7 : Young Cat
axiom A8 : Sees Cat BaldEagle
axiom A9 : Chases Lion BaldEagle
axiom A10 : Chases Lion Cat
axiom A11 : Eats Lion BaldEagle
axiom A12 : Eats Lion Cat
axiom A13 : Chases Mouse BaldEagle
axiom A14 : Chases Mouse Lion
axiom A15 : Eats Mouse BaldEagle
axiom A16 : Young Mouse

-- Rule R1: If something is kind then it is round
axiom R1 : ∀ x : obj, Kind x → Round x

-- Rule R2: If something chases the bald eagle then it is round
axiom R2 : ∀ x : obj, Chases x BaldEagle → Round x

-- Rule R3: If something is round then it sees the bald eagle
axiom R3 : ∀ x : obj, Round x → Sees x BaldEagle

-- Rule R4: If something chases the cat and the cat chases the bald eagle then it eats the bald eagle
axiom R4 : ∀ x : obj, Chases x Cat ∧ Chases Cat BaldEagle → Eats x BaldEagle

-- Rule R5: If something chases the cat then the cat sees the lion
axiom R5 : ∀ x : obj, Chases x Cat → Sees Cat Lion

-- Rule R6: If something sees the cat then it chases the bald eagle
axiom R6 : ∀ x : obj, Sees x Cat → Chases x BaldEagle

-- Rule R7: If the bald eagle is young and the bald eagle chases the lion then the bald eagle sees the lion
axiom R7 : ∀ x : obj, Young BaldEagle ∧ Chases BaldEagle Lion → Sees BaldEagle Lion

-- Rule R8: If the mouse eats the cat and the mouse eats the bald eagle then the bald eagle eats the cat
axiom R8 : ∀ x : obj, Eats Mouse Cat ∧ Eats Mouse BaldEagle → Eats BaldEagle Cat

-- Rule R9: If something sees the bald eagle and it chases the cat then the bald eagle sees the cat
axiom R9 : ∀ x : obj, Sees x BaldEagle ∧ Chases x Cat → Sees BaldEagle Cat


theorem cat_sees_lion : Sees Cat Lion :=
begin
  sorry
end


theorem not_cat_sees_lion : ¬ Sees Cat Lion :=
begin
  sorry
end
