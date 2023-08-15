universe u

constant obj : Type u

constant Bear : obj
constant Lion : obj
constant Mouse : obj
constant Cat : obj

constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Green : obj → Prop
constant Blue : obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop

axiom A1 : ¬ Needs Bear Lion
axiom A2 : Needs Bear Mouse
axiom A3 : Visits Bear Cat
axiom A4 : ¬ Visits Bear Lion
axiom A5 : Visits Bear Mouse
axiom A6 : Likes Cat Lion
axiom A7 : Green Lion
axiom A8 : Visits Lion Bear
axiom A9 : Visits Lion Cat
axiom A10 : Visits Lion Mouse
axiom A11 : Needs Mouse Lion
axiom A12 : Visits Mouse Bear

-- Rule R1: If something visits the lion and the lion is not blue then the lion is not green
axiom R1 : ∀ x : obj, Visits x Lion ∧ ¬ Blue Lion → ¬ Green Lion

-- Rule R2: If something is green then it likes the mouse
axiom R2 : ∀ x : obj, Green x → Likes x Mouse

-- Rule R3: If something likes the mouse then the mouse needs the lion
axiom R3 : ∀ x : obj, Likes x Mouse → Needs Mouse Lion

-- Rule R4: If something visits the bear then it is not nice
axiom R4 : ∀ x : obj, Visits x Bear → ¬ Nice x

-- Rule R5: If something likes the cat then it needs the bear
axiom R5 : ∀ x : obj, Likes x Cat → Needs x Bear

-- Rule R6: If something is young and it visits the mouse then it likes the cat
axiom R6 : ∀ x : obj, Young x ∧ Visits x Mouse → Likes x Cat

-- Rule R7: If something visits the cat and it is not nice then it is young
axiom R7 : ∀ x : obj, Visits x Cat ∧ ¬ Nice x → Young x

-- Rule R8: If something needs the bear then it needs the mouse
axiom R8 : ∀ x : obj, Needs x Bear → Needs x Mouse


theorem lion_does_not_need_bear : ¬ Needs Lion Bear :=
begin
  sorry
end


theorem lion_needs_bear : Needs Lion Bear :=
begin
  sorry
end
