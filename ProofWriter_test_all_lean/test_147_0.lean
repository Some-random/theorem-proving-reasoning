universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Squirrel : obj
constant Tiger : obj

constant Cold : obj → Prop
constant Rough : obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Red : obj → Prop
constant Kind : obj → Prop

axiom A1 : Cold BaldEagle
axiom A2 : Rough BaldEagle
axiom A3 : Needs BaldEagle Tiger
axiom A4 : Visits BaldEagle Squirrel
axiom A5 : Cold Lion
axiom A6 : Kind Lion
axiom A7 : Needs Lion Tiger
axiom A8 : Chases Squirrel BaldEagle
axiom A9 : Chases Squirrel Tiger
axiom A10 : Visits Squirrel Tiger
axiom A11 : Red Tiger

-- Rule R1: If someone needs the squirrel then they chase the tiger
axiom R1 : ∀ x : obj, Needs x Squirrel → Chases x Tiger

-- Rule R2: If someone is rough and they chase the squirrel then the squirrel visits the lion
axiom R2 : ∀ x : obj, Rough x ∧ Chases x Squirrel → Visits Squirrel Lion

-- Rule R3: If someone visits the tiger and they visit the lion then the lion needs the bald eagle
axiom R3 : ∀ x : obj, Visits x Tiger ∧ Visits x Lion → Needs Lion BaldEagle

-- Rule R4: If someone visits the bald eagle and the bald eagle visits the squirrel then the bald eagle chases the squirrel
axiom R4 : ∀ x : obj, Visits x BaldEagle ∧ Visits BaldEagle Squirrel → Chases BaldEagle Squirrel

-- Rule R5: If someone is red then they chase the lion
axiom R5 : ∀ x : obj, Red x → Chases x Lion

-- Rule R6: If someone chases the lion and they visit the bald eagle then they need the bald eagle
axiom R6 : ∀ x : obj, Chases x Lion ∧ Visits x BaldEagle → Needs x BaldEagle

-- Rule R7: If someone visits the bald eagle then they need the bald eagle
axiom R7 : ∀ x : obj, Visits x BaldEagle → Needs x BaldEagle

-- Rule R8: If someone chases the lion then they visit the bald eagle
axiom R8 : ∀ x : obj, Chases x Lion → Visits x BaldEagle

-- Rule R9: If someone chases the tiger then the tiger chases the bald eagle
axiom R9 : ∀ x : obj, Chases x Tiger → Chases Tiger BaldEagle



theorem not_bald_eagle_visits_lion : ¬ Visits BaldEagle Lion :=
begin
  sorry
end


theorem bald_eagle_visits_lion : Visits BaldEagle Lion :=
begin
  sorry
end
