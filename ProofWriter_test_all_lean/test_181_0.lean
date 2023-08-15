universe u

constant obj : Type u

constant Lion : obj
constant Mouse : obj
constant Rabbit : obj
constant Squirrel : obj

constant Cold : obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop

axiom A1 : Cold Lion
axiom A2 : ¬ Needs Lion Mouse
axiom A3 : Visits Lion Squirrel
axiom A4 : Cold Mouse
axiom A5 : ¬ Visits Mouse Squirrel
axiom A6 : Cold Rabbit
axiom A7 : Rough Rabbit
axiom A8 : ¬ Needs Rabbit Lion
axiom A9 : ¬ Visits Rabbit Squirrel
axiom A10 : Kind Squirrel
axiom A11 : Needs Squirrel Mouse
axiom A12 : Needs Squirrel Rabbit
axiom A13 : ¬ Sees Squirrel Lion
axiom A14 : ¬ Sees Squirrel Rabbit

-- Rule R1: If something needs the rabbit and the rabbit sees the mouse then the mouse does not see the lion
axiom R1 : ∀ x : obj, Needs x Rabbit ∧ Sees Rabbit Mouse → ¬ Sees Mouse Lion

-- Rule R2: If something is rough then it visits the mouse
axiom R2 : ∀ x : obj, Rough x → Visits x Mouse

-- Rule R3: If something needs the rabbit and it visits the mouse then the mouse needs the rabbit
axiom R3 : ∀ x : obj, Needs x Rabbit ∧ Visits x Mouse → Needs Mouse Rabbit

-- Rule R4: If something needs the rabbit and the rabbit is cold then it is rough
axiom R4 : ∀ x : obj, Needs x Rabbit ∧ Cold Rabbit → Rough x

-- Rule R5: If something needs the rabbit then the rabbit needs the squirrel
axiom R5 : ∀ x : obj, Needs x Rabbit → Needs Rabbit Squirrel

-- Rule R6: If the squirrel sees the lion and the squirrel is not green then the lion needs the squirrel
axiom R6 : ∀ x : obj, Sees Squirrel Lion ∧ ¬ Green Squirrel → Needs Lion Squirrel

-- Rule R7: If something is big then it visits the lion
axiom R7 : ∀ x : obj, Big x → Visits x Lion

-- Rule R8: If something visits the squirrel and the squirrel sees the lion then the lion is not kind
axiom R8 : ∀ x : obj, Visits x Squirrel ∧ Sees Squirrel Lion → ¬ Kind Lion



theorem not_needs_mouse_rabbit : ¬ Needs Mouse Rabbit :=
begin
  sorry
end


theorem needs_mouse_rabbit : Needs Mouse Rabbit :=
begin
  sorry
end
