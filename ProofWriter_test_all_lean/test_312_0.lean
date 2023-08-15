universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Lion : obj
constant Rabbit : obj

constant Young : obj → Prop
constant Visits : obj → obj → Prop
constant Round : obj → Prop
constant Needs : obj → obj → Prop
constant Cold : obj → Prop
constant Green : obj → Prop
constant Sees : obj → obj → Prop
constant Rough : obj → Prop

axiom A1 : Young Bear
axiom A2 : Visits Bear Lion
axiom A3 : Round Cat
axiom A4 : Needs Cat Bear
axiom A5 : Cold Lion
axiom A6 : ¬ Green Lion
axiom A7 : Round Lion
axiom A8 : ¬ Needs Lion Bear
axiom A9 : Sees Lion Bear
axiom A10 : Visits Lion Bear
axiom A11 : Visits Lion Cat
axiom A12 : Visits Lion Rabbit
axiom A13 : Green Rabbit
axiom A14 : Rough Rabbit
axiom A15 : Sees Rabbit Lion
axiom A16 : Visits Rabbit Cat

-- Rule R1: If something visits the cat then the cat sees the lion
axiom R1 : ∀ x : obj, Visits x Cat → Sees Cat Lion

-- Rule R2: If something visits the lion and the lion visits the rabbit then it needs the lion
axiom R2 : ∀ x : obj, Visits x Lion ∧ Visits Lion Rabbit → Needs x Lion

-- Rule R3: If something needs the lion and the lion is round then it needs the cat
axiom R3 : ∀ x : obj, Needs x Lion ∧ Round Lion → Needs x Cat

-- Rule R4: If something is green and it needs the rabbit then the rabbit is green
axiom R4 : ∀ x : obj, Green x ∧ Needs x Rabbit → Green Rabbit

-- Rule R5: If something is round then it visits the lion
axiom R5 : ∀ x : obj, Round x → Visits x Lion

-- Rule R6: If something sees the cat and the cat visits the lion then it is not rough
axiom R6 : ∀ x : obj, Sees x Cat ∧ Visits Cat Lion → ¬ Rough x

-- Rule R7: If something needs the cat and it is not green then it sees the cat
axiom R7 : ∀ x : obj, Needs x Cat ∧ ¬ Green x → Sees x Cat

-- Rule R8: If something is young and it visits the bear then it sees the cat
axiom R8 : ∀ x : obj, Young x ∧ Visits x Bear → Sees x Cat


theorem rabbit_needs_cat : Needs Rabbit Cat :=
begin
  sorry
end


theorem not_rabbit_needs_cat : ¬ Needs Rabbit Cat :=
begin
  sorry
end
