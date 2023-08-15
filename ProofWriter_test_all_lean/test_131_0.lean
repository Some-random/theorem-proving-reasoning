universe u

constant obj : Type u

constant BaldEagle : obj
constant Mouse : obj
constant Squirrel : obj
constant Lion : obj

constant Chases : obj → obj → Prop
constant Cold : obj → Prop
constant Blue : obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Red : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop

axiom A1 : Chases BaldEagle Mouse
axiom A2 : Chases BaldEagle Squirrel
axiom A3 : Cold BaldEagle
axiom A4 : Chases Lion BaldEagle
axiom A5 : ¬ Chases Lion Mouse
axiom A6 : Chases Lion Squirrel
axiom A7 : Blue Lion
axiom A8 : Needs Lion Squirrel
axiom A9 : Visits Lion Squirrel
axiom A10 : ¬ Visits Mouse BaldEagle
axiom A11 : ¬ Visits Mouse Squirrel
axiom A12 : Cold Squirrel
axiom A13 : Red Squirrel
axiom A14 : ¬ Visits Squirrel Lion

-- Rule R1: If something visits the mouse then the mouse is green
axiom R1 : ∀ x : obj, Visits x Mouse → Green Mouse

-- Rule R2: If the mouse does not chase the lion then the mouse needs the lion
axiom R2 : ∀ x : obj, ¬ Chases Mouse Lion → Needs Mouse Lion

-- Rule R3: If something visits the squirrel and the squirrel does not chase the lion then the lion is green
axiom R3 : ∀ x : obj, Visits x Squirrel ∧ ¬ Chases Squirrel Lion → Green Lion

-- Rule R4: If something is young then it visits the bald eagle
axiom R4 : ∀ x : obj, Young x → Visits x BaldEagle

-- Rule R5: If something visits the bald eagle then the bald eagle visits the squirrel
axiom R5 : ∀ x : obj, Visits x BaldEagle → Visits BaldEagle Squirrel

-- Rule R6: If something visits the squirrel and the squirrel is red then it is young
axiom R6 : ∀ x : obj, Visits x Squirrel ∧ Red Squirrel → Young x

-- Rule R7: If something needs the squirrel and it is not cold then the squirrel chases the bald eagle
axiom R7 : ∀ x : obj, Needs x Squirrel ∧ ¬ Cold x → Chases Squirrel BaldEagle


theorem bald_eagle_is_young : Young BaldEagle :=
begin
  sorry
end


theorem not_young_bald_eagle : ¬ Young BaldEagle :=
begin
  sorry
end
