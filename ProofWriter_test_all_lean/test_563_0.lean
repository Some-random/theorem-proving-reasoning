universe u

constant obj : Type u

constant Bear : obj
constant Cow : obj
constant Mouse : obj
constant Rabbit : obj

constant Blue : obj → Prop
constant Young : obj → Prop
constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Round : obj → Prop

axiom A1 : Blue Bear
axiom A2 : Young Bear
axiom A3 : Chases Cow Mouse
axiom A4 : Eats Cow Mouse
axiom A5 : ¬ Visits Cow Rabbit
axiom A6 : ¬ Round Mouse
axiom A7 : Chases Rabbit Bear

-- Rule R1: If something is young and blue then it visits the mouse
axiom R1 : ∀ x : obj, Young x ∧ Blue x → Visits x Mouse

-- Rule R2: If something chases the rabbit and the rabbit does not visit the bear then it does not visit the rabbit
axiom R2 : ∀ x : obj, Chases x Rabbit ∧ ¬ Visits Rabbit Bear → ¬ Visits x Rabbit

-- Rule R3: If something chases the rabbit then it visits the rabbit
axiom R3 : ∀ x : obj, Chases x Rabbit → Visits x Rabbit

-- Rule R4: If something is round then it chases the rabbit
axiom R4 : ∀ x : obj, Round x → Chases x Rabbit

-- Rule R5: If something chases the rabbit then the rabbit is young
axiom R5 : ∀ x : obj, Chases x Rabbit → Young Rabbit

-- Rule R6: If something chases the bear then the bear eats the rabbit
axiom R6 : ∀ x : obj, Chases x Bear → Eats Bear Rabbit

-- Rule R7: If something visits the cow then the cow eats the bear
axiom R7 : ∀ x : obj, Visits x Cow → Eats Cow Bear

-- Rule R8: If something eats the bear then the bear is round
axiom R8 : ∀ x : obj, Eats x Bear → Round Bear

-- Rule R9: If the bear visits the mouse then the bear visits the cow
axiom R9 : Visits Bear Mouse → Visits Bear Cow



theorem not_visits_bear_cow : ¬ Visits Bear Cow :=
begin
  sorry
end


theorem visits_bear_cow : Visits Bear Cow :=
begin
  sorry
end
