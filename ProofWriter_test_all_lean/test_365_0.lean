universe u

constant obj : Type u

constant Bear : obj
constant Mouse : obj
constant Rabbit : obj
constant Squirrel : obj

constant Kind : obj → Prop
constant Chases : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Blue : obj → Prop
constant Needs : obj → obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop

axiom A1 : Kind Bear
axiom A2 : Chases Mouse Bear
axiom A3 : Chases Mouse Rabbit
axiom A4 : Visits Mouse Rabbit
axiom A5 : Blue Rabbit
axiom A6 : Needs Rabbit Mouse
axiom A7 : Chases Squirrel Mouse
axiom A8 : Chases Squirrel Rabbit
axiom A9 : Blue Squirrel
axiom A10 : Green Squirrel
axiom A11 : Young Squirrel

-- Rule R1: If the squirrel is young and the squirrel needs the rabbit then the squirrel visits the rabbit
axiom R1 : Young Squirrel ∧ Needs Squirrel Rabbit → Visits Squirrel Rabbit

-- Rule R2: If something is cold then it needs the squirrel
axiom R2 : ∀ x : obj, Cold x → Needs x Squirrel

-- Rule R3: If something visits the mouse and the mouse needs the squirrel then it needs the rabbit
axiom R3 : ∀ x : obj, Visits x Mouse ∧ Needs Mouse Squirrel → Needs x Rabbit

-- Rule R4: If something chases the bear then it is cold
axiom R4 : ∀ x : obj, Chases x Bear → Cold x

-- Rule R5: If something visits the bear and the bear visits the squirrel then the squirrel visits the rabbit
axiom R5 : ∀ x : obj, Visits x Bear ∧ Visits Bear Squirrel → Visits Squirrel Rabbit

-- Rule R6: If something needs the squirrel then the squirrel visits the mouse
axiom R6 : ∀ x : obj, Needs x Squirrel → Visits Squirrel Mouse

-- Rule R7: If the mouse visits the bear and the mouse visits the squirrel then the squirrel visits the bear
axiom R7 : Visits Mouse Bear ∧ Visits Mouse Squirrel → Visits Squirrel Bear


theorem bear_needs_rabbit : Needs Bear Rabbit :=
begin
  sorry
end


theorem not_bear_needs_rabbit : ¬ Needs Bear Rabbit :=
begin
  sorry
end
