universe u

constant obj : Type u

constant Bear : obj
constant Rabbit : obj
constant Squirrel : obj
constant Tiger : obj

constant Cold : obj → Prop
constant Green : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop
constant Visits : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop

axiom A1 : Cold Bear
axiom A2 : ¬ Green Bear
axiom A3 : Rough Bear
axiom A4 : Cold Rabbit
axiom A5 : Nice Squirrel
axiom A6 : ¬ Visits Squirrel Rabbit
axiom A7 : Visits Squirrel Tiger
axiom A8 : Chases Tiger Bear
axiom A9 : ¬ Eats Tiger Rabbit
axiom A10 : Cold Tiger
axiom A11 : Nice Tiger
axiom A12 : ¬ Rough Tiger
axiom A13 : Visits Tiger Rabbit
axiom A14 : Visits Tiger Squirrel

-- Rule R1: If something is green and it visits the squirrel then the squirrel is green
axiom R1 : ∀ x : obj, Green x ∧ Visits x Squirrel → Green Squirrel

-- Rule R2: If something chases the rabbit then it eats the bear
axiom R2 : ∀ x : obj, Chases x Rabbit → Eats x Bear

-- Rule R3: If the squirrel eats the rabbit and the rabbit visits the bear then the bear is not red
axiom R3 : Eats Squirrel Rabbit ∧ Visits Rabbit Bear → ¬ Green Bear

-- Rule R4: If something is cold then it chases the rabbit
axiom R4 : ∀ x : obj, Cold x → Chases x Rabbit

-- Rule R5: If the rabbit chases the squirrel then the squirrel eats the bear
axiom R5 : Chases Rabbit Squirrel → Eats Squirrel Bear

-- Rule R6: If something chases the bear and it visits the tiger then the tiger chases the squirrel
axiom R6 : ∀ x : obj, Chases x Bear ∧ Visits x Tiger → Chases Tiger Squirrel

-- Rule R7: If something is cold and not nice then it eats the rabbit
axiom R7 : ∀ x : obj, Cold x ∧ ¬ Nice x → Eats x Rabbit

-- Rule R8: If something eats the bear and the bear visits the squirrel then it eats the rabbit
axiom R8 : ∀ x : obj, Eats x Bear ∧ Visits Bear Squirrel → Eats x Rabbit

-- Rule R9: If something eats the bear then it chases the squirrel
axiom R9 : ∀ x : obj, Eats x Bear → Chases x Squirrel


theorem tiger_chases_squirrel : Chases Tiger Squirrel :=
begin
  sorry
end


theorem not_tiger_chases_squirrel : ¬ Chases Tiger Squirrel :=
begin
  sorry
end
