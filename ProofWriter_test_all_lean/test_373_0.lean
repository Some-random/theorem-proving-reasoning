universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Cat : obj
constant Squirrel : obj

constant Chases : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop

axiom A1 : Chases BaldEagle Bear
axiom A2 : Needs BaldEagle Cat
axiom A3 : Visits BaldEagle Squirrel
axiom A4 : ¬ Chases Bear Squirrel
axiom A5 : Blue Bear
axiom A6 : Chases Cat Squirrel
axiom A7 : Visits Cat Bear
axiom A8 : Visits Cat Squirrel
axiom A9 : Green Squirrel
axiom A10 : ¬ Needs Squirrel Cat

-- Rule R1: If someone is cold and they visit the bear then the bear does not need the squirrel
axiom R1 : ∀ x : obj, Cold x ∧ Visits x Bear → ¬ Needs Bear Squirrel

-- Rule R2: If the bald eagle is blue and the bald eagle visits the cat then the cat is nice
axiom R2 : Blue BaldEagle ∧ Visits BaldEagle Cat → Nice Cat

-- Rule R3: If someone is blue then they visit the cat
axiom R3 : ∀ x : obj, Blue x → Visits x Cat

-- Rule R4: If someone visits the bear then the bear needs the cat
axiom R4 : ∀ x : obj, Visits x Bear → Needs Bear Cat

-- Rule R5: If the bear visits the bald eagle then the bear visits the cat
axiom R5 : Visits Bear BaldEagle → Visits Bear Cat

-- Rule R6: If someone needs the squirrel then the squirrel chases the cat
axiom R6 : ∀ x : obj, Needs x Squirrel → Chases Squirrel Cat

-- Rule R7: If the bear needs the bald eagle and the bear needs the cat then the bald eagle is blue
axiom R7 : Needs Bear BaldEagle ∧ Needs Bear Cat → Blue BaldEagle

-- Rule R8: If someone visits the cat then they need the bald eagle
axiom R8 : ∀ x : obj, Visits x Cat → Needs x BaldEagle

-- Rule R9: If someone needs the bear and they are blue then the bear does not visit the squirrel
axiom R9 : ∀ x : obj, Needs x Bear ∧ Blue x → ¬ Visits Bear Squirrel


theorem cold_bald_eagle : Cold BaldEagle :=
begin
  sorry
end


theorem not_cold_bald_eagle : ¬ Cold BaldEagle :=
begin
  sorry
end
