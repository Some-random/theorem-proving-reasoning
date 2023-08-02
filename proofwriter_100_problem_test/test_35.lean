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

axiom R1 : ∀ x : obj, Green x → Visits x Tiger
axiom R2 : ∀ x : obj, Sees x Bear ∧ Cold x → Green Bear
axiom R3 : ∀ x : obj, Needs Cow Rabbit ∧ Needs Rabbit Cow → Red Rabbit
axiom R4 : ∀ x : obj, Green x → Needs x Cow
axiom R5 : ∀ x : obj, Visits x Tiger → Red Tiger
axiom R6 : ∀ x : obj, Needs x Tiger ∧ Sees Tiger Cow → Needs Cow Bear
axiom R7 : ∀ x : obj, Sees x Bear ∧ Needs x Bear → Sees x Cow
axiom R8 : ∀ x : obj, Visits x Rabbit → Needs Rabbit Tiger
axiom R9 : ∀ x : obj, Needs x Bear ∧ Visits Bear Tiger → Sees x Bear

theorem not_bear_needs_cow : ¬ Needs Bear Cow :=
begin
  sorry
end


theorem bear_needs_cow : Needs Bear Cow :=
begin
  sorry
end
