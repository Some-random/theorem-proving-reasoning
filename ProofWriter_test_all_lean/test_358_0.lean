universe u

constant obj : Type u

constant BaldEagle : obj
constant Squirrel : obj
constant Bear : obj
constant Lion : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop

axiom A1 : Chases BaldEagle Squirrel
axiom A2 : Eats BaldEagle Bear
axiom A3 : ¬ Eats Bear Lion
axiom A4 : Visits Bear Lion
axiom A5 : ¬ Eats Lion BaldEagle
axiom A6 : Red Squirrel
axiom A7 : Visits Squirrel BaldEagle

-- Rule R1: If something is round then it eats the squirrel
axiom R1 : ∀ x : obj, Round x → Eats x Squirrel

-- Rule R2: If something is blue and green then it chases the bald eagle
axiom R2 : ∀ x : obj, Blue x ∧ Green x → Chases x BaldEagle

-- Rule R3: If something eats the squirrel then the squirrel is green
axiom R3 : ∀ x : obj, Eats x Squirrel → Green Squirrel

-- Rule R4: If the bald eagle is round then the bald eagle chases the lion
axiom R4 : Round BaldEagle → Chases BaldEagle Lion

-- Rule R5: If something is blue then it chases the squirrel
axiom R5 : ∀ x : obj, Blue x → Chases x Squirrel

-- Rule R6: All red things are blue
axiom R6 : ∀ x : obj, Red x → Blue x

-- Rule R7: If something chases the lion then it is blue
axiom R7 : ∀ x : obj, Chases x Lion → Blue x

-- Rule R8: Blue, red things are round
axiom R8 : ∀ x : obj, Blue x ∧ Red x → Round x

-- Rule R9: If something visits the bald eagle and it is not round then it visits the lion
axiom R9 : ∀ x : obj, Visits x BaldEagle ∧ ¬ Round x → Visits x Lion


theorem squirrel_chases_bald_eagle : Chases Squirrel BaldEagle :=
begin
  sorry
end


theorem not_squirrel_chases_bald_eagle : ¬ Chases Squirrel BaldEagle :=
begin
  sorry
end
