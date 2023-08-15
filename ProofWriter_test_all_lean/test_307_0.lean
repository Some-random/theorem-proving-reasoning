universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Lion : obj
constant Tiger : obj

constant Green : obj → Prop
constant Red : obj → Prop
constant Chases : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Young : obj → Prop

axiom A1 : Green BaldEagle
axiom A2 : Red BaldEagle
axiom A3 : Chases Cat Lion
axiom A4 : Sees Cat Tiger
axiom A5 : Visits Cat BaldEagle
axiom A6 : Visits Cat Lion
axiom A7 : Chases Lion Cat
axiom A8 : Red Lion
axiom A9 : Sees Lion BaldEagle
axiom A10 : Sees Lion Cat
axiom A11 : Chases Tiger Cat
axiom A12 : Sees Tiger Cat
axiom A13 : Visits Tiger BaldEagle
axiom A14 : Visits Tiger Lion

-- Rule R1: If something sees the lion and it sees the bald eagle then it chases the cat
axiom R1 : ∀ x : obj, Sees x Lion ∧ Sees x BaldEagle → Chases x Cat

-- Rule R2: If something chases the cat then it is young
axiom R2 : ∀ x : obj, Chases x Cat → Young x

-- Rule R3: If something visits the tiger and the tiger sees the cat then it sees the lion
axiom R3 : ∀ x : obj, Visits x Tiger ∧ Sees Tiger Cat → Sees x Lion

-- Rule R4: If something visits the tiger and the tiger visits the lion then it sees the bald eagle
axiom R4 : ∀ x : obj, Visits x Tiger ∧ Visits Tiger Lion → Sees x BaldEagle

-- Rule R5: If the lion sees the bald eagle then the bald eagle visits the tiger
axiom R5 : ∀ x : obj, Sees Lion BaldEagle → Visits BaldEagle Tiger

-- Rule R6: If something is young then it visits the lion
axiom R6 : ∀ x : obj, Young x → Visits x Lion


theorem bald_eagle_chases_cat : Chases BaldEagle Cat :=
begin
  sorry
end


theorem not_bald_eagle_chases_cat : ¬ Chases BaldEagle Cat :=
begin
  sorry
end
