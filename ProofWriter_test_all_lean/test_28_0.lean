universe u

constant obj : Type u

constant BaldEagle : obj
constant Rabbit : obj
constant Tiger : obj
constant Lion : obj

constant Chases : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop

axiom A1 : Chases BaldEagle Rabbit
axiom A2 : Chases BaldEagle Tiger
axiom A3 : Needs Lion Rabbit
axiom A4 : ¬ Chases Rabbit Lion
axiom A5 : Needs Rabbit BaldEagle
axiom A6 : Needs Rabbit Lion
axiom A7 : Visits Tiger Rabbit

-- Rule R1: If something chases the rabbit then it is big
axiom R1 : ∀ x : obj, Chases x Rabbit → Big x
-- Rule R2: If something needs the tiger then it is big
axiom R2 : ∀ x : obj, Needs x Tiger → Big x
-- Rule R3: If something needs the lion and it visits the rabbit then it chases the lion
axiom R3 : ∀ x : obj, Needs x Lion ∧ Visits x Rabbit → Chases x Lion
-- Rule R4: If something is big then it chases the lion
axiom R4 : ∀ x : obj, Big x → Chases x Lion
-- Rule R5: If something chases the tiger then the tiger needs the rabbit
axiom R5 : ∀ x : obj, Chases x Tiger → Needs Tiger Rabbit
-- Rule R6: If something visits the tiger then the tiger is not green
axiom R6 : ∀ x : obj, Visits x Tiger → ¬ Green Tiger
-- Rule R7: If something chases the lion then the lion chases the rabbit
axiom R7 : ∀ x : obj, Chases x Lion → Chases Lion Rabbit
-- Rule R8: If something chases the rabbit and it does not visit the lion then the lion does not need the rabbit
axiom R8 : ∀ x : obj, Chases x Rabbit ∧ ¬ Visits x Lion → ¬ Needs Lion Rabbit
-- Rule R9: If something chases the tiger then it visits the bald eagle
axiom R9 : ∀ x : obj, Chases x Tiger → Visits x BaldEagle


theorem lion_chases_lion : Chases Lion Lion :=
begin
  sorry
end


theorem not_lion_chases_lion : ¬ Chases Lion Lion :=
begin
  sorry
end
