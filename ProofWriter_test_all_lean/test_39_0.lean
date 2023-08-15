universe u

constant obj : Type u

constant Bear : obj
constant Mouse : obj
constant Squirrel : obj
constant Tiger : obj

constant Green : obj → Prop
constant Kind : obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop

axiom A1 : Green Bear
axiom A2 : Kind Bear
axiom A3 : Needs Mouse Bear
axiom A4 : Visits Mouse Bear
axiom A5 : Visits Mouse Squirrel
axiom A6 : Visits Mouse Tiger
axiom A7 : Chases Squirrel Bear
axiom A8 : Cold Squirrel
axiom A9 : Nice Squirrel
axiom A10 : Green Tiger
axiom A11 : Needs Tiger Bear

-- Rule R1: If something needs the mouse then it is kind
axiom R1 : ∀ x : obj, Needs x Mouse → Kind x
-- Rule R2: If the mouse is young then the mouse needs the bear
axiom R2 : Young Mouse → Needs Mouse Bear
-- Rule R3: If something chases the bear then it needs the tiger
axiom R3 : ∀ x : obj, Chases x Bear → Needs x Tiger
-- Rule R4: If something needs the squirrel and it visits the mouse then the mouse needs the squirrel
axiom R4 : ∀ x : obj, Needs x Squirrel ∧ Visits x Mouse → Needs Mouse Squirrel
-- Rule R5: If something visits the squirrel then it needs the mouse
axiom R5 : ∀ x : obj, Visits x Squirrel → Needs x Mouse
-- Rule R6: If something chases the squirrel and the squirrel is nice then it is young
axiom R6 : ∀ x : obj, Chases x Squirrel ∧ Nice Squirrel → Young x
-- Rule R7: If something visits the mouse and the mouse is green then it needs the tiger
axiom R7 : ∀ x : obj, Visits x Mouse ∧ Green Mouse → Needs x Tiger
-- Rule R8: If something is kind and it visits the tiger then the tiger visits the squirrel
axiom R8 : ∀ x : obj, Kind x ∧ Visits x Tiger → Visits Tiger Squirrel
-- Rule R9: If the bear needs the squirrel and the bear visits the tiger then the bear chases the tiger
axiom R9 : Needs Bear Squirrel ∧ Visits Bear Tiger → Chases Bear Tiger


theorem squirrel_chases_tiger : Chases Squirrel Tiger :=
begin
  sorry
end


theorem not_squirrel_chases_tiger : ¬ Chases Squirrel Tiger :=
begin
  sorry
end
