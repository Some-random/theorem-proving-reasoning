universe u

constant obj : Type u

constant Bear : obj
constant Cow : obj
constant Squirrel : obj
constant Lion : obj

constant Eats : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop

axiom A1 : Eats Bear Cow
axiom A2 : Blue Bear
axiom A3 : Eats Cow Squirrel
axiom A4 : Young Cow
axiom A5 : Visits Cow Lion
axiom A6 : Red Lion
axiom A7 : Young Lion
axiom A8 : Visits Lion Cow
axiom A9 : Sees Squirrel Bear
axiom A10 : Visits Squirrel Bear

-- Rule R1: If something sees the cow and the cow eats the squirrel then the cow is red
axiom R1 : ∀ x : obj, Sees x Cow ∧ Eats Cow Squirrel → Red Cow

-- Rule R2: If the cow eats the bear and the bear sees the cow then the bear is blue
axiom R2 : ∀ x : obj, Eats Cow Bear ∧ Sees Bear Cow → Blue Bear

-- Rule R3: If something is blue and it sees the squirrel then the squirrel is round
axiom R3 : ∀ x : obj, Blue x ∧ Sees x Squirrel → Round Squirrel

-- Rule R4: If something sees the squirrel then the squirrel eats the cow
axiom R4 : ∀ x : obj, Sees x Squirrel → Eats Squirrel Cow

-- Rule R5: If the lion sees the cow and the cow visits the squirrel then the cow eats the squirrel
axiom R5 : ∀ x : obj, Sees Lion Cow ∧ Visits Cow Squirrel → Eats Cow Squirrel

-- Rule R6: If something is red then it eats the lion
axiom R6 : ∀ x : obj, Red x → Eats x Lion

-- Rule R7: If the bear visits the squirrel and the bear is round then the bear sees the cow
axiom R7 : ∀ x : obj, Visits Bear Squirrel ∧ Round Bear → Sees Bear Cow

-- Rule R8: If something eats the lion then it sees the cow
axiom R8 : ∀ x : obj, Eats x Lion → Sees x Cow

-- Rule R9: If something is young and cold then it eats the cow
axiom R9 : ∀ x : obj, Young x ∧ Cold x → Eats x Cow


theorem not_red_Cow : ¬ Red Cow :=
begin
  sorry
end


theorem red_Cow : Red Cow :=
begin
  sorry
end
