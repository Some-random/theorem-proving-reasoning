universe u

constant obj : Type u

constant Bear : obj
constant Cow : obj
constant Rabbit : obj
constant Tiger : obj

constant Blue : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop
constant Sees : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop

axiom A1 : Blue Bear
axiom A2 : Green Bear
axiom A3 : Red Bear
axiom A4 : Sees Bear Rabbit
axiom A5 : Blue Cow
axiom A6 : Needs Cow Tiger
axiom A7 : Visits Cow Rabbit
axiom A8 : Cold Rabbit
axiom A9 : Nice Rabbit
axiom A10 : Needs Rabbit Cow
axiom A11 : Sees Rabbit Cow
axiom A12 : Sees Rabbit Tiger
axiom A13 : Needs Tiger Bear
axiom A14 : Needs Tiger Rabbit
axiom A15 : Visits Tiger Bear
axiom A16 : Visits Tiger Cow

-- Rule R1: If something is green then it visits the tiger
axiom R1 : ∀ x : obj, Green x → Visits x Tiger

-- Rule R2: If something sees the bear and it is cold then the bear is green
axiom R2 : ∀ x : obj, Sees x Bear ∧ Cold x → Green Bear

-- Rule R3: If the cow needs the rabbit and the rabbit needs the cow then the rabbit is red
axiom R3 : Needs Cow Rabbit ∧ Needs Rabbit Cow → Red Rabbit

-- Rule R4: If something is green then it needs the cow
axiom R4 : ∀ x : obj, Green x → Needs x Cow

-- Rule R5: If something visits the tiger then the tiger is red
axiom R5 : ∀ x : obj, Visits x Tiger → Red Tiger

-- Rule R6: If something needs the tiger and the tiger sees the cow then the cow needs the bear
axiom R6 : ∀ x : obj, Needs x Tiger ∧ Sees Tiger Cow → Needs Cow Bear

-- Rule R7: If something sees the bear and it needs the bear then it sees the cow
axiom R7 : ∀ x : obj, Sees x Bear ∧ Needs x Bear → Sees x Cow

-- Rule R8: If something visits the rabbit then the rabbit needs the tiger
axiom R8 : ∀ x : obj, Visits x Rabbit → Needs Rabbit Tiger

-- Rule R9: If something needs the bear and the bear visits the tiger then it sees the bear
axiom R9 : ∀ x : obj, Needs x Bear ∧ Visits Bear Tiger → Sees x Bear


theorem cow_visits_rabbit : Visits Cow Rabbit :=
begin
  sorry
end


theorem not_cow_visits_rabbit : ¬ Visits Cow Rabbit :=
begin
  sorry
end
