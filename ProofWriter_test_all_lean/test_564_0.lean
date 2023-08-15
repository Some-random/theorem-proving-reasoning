universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Cow : obj
constant Lion : obj

constant Chases : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Red : obj → Prop
constant Green : obj → Prop
constant Cold : obj → Prop
constant Nice : obj → Prop

axiom A1 : Chases Bear Cat
axiom A2 : Chases Bear Cow
axiom A3 : Likes Bear Cat
axiom A4 : Likes Bear Lion
axiom A5 : Visits Bear Cat
axiom A6 : Red Cat
axiom A7 : Visits Cat Bear
axiom A8 : Visits Cat Cow
axiom A9 : Visits Cow Lion
axiom A10 : Chases Lion Cat
axiom A11 : Nice Lion

-- Rule R1: If something likes the bear and it visits the lion then it is green
axiom R1 : ∀ x : obj, Likes x Bear ∧ Visits x Lion → Green x

-- Rule R2: If something likes the lion and the lion is nice then it chases the lion
axiom R2 : ∀ x : obj, Likes x Lion ∧ Nice Lion → Chases x Lion

-- Rule R3: If something is green and it chases the cow then the cow is cold
axiom R3 : ∀ x : obj, Green x ∧ Chases x Cow → Cold Cow

-- Rule R4: Cold things are green
axiom R4 : ∀ x : obj, Cold x → Green x

-- Rule R5: If something chases the lion and the lion chases the cat then it is cold
axiom R5 : ∀ x : obj, Chases x Lion ∧ Chases Lion Cat → Cold x

-- Rule R6: If the lion likes the cat and the cat chases the lion then the lion is nice
axiom R6 : ∀ x : obj, Likes Lion Cat ∧ Chases Cat Lion → Nice Lion

-- Rule R7: If something likes the cat then it likes the lion
axiom R7 : ∀ x : obj, Likes x Cat → Likes x Lion

-- Rule R8: If something chases the lion then the lion visits the bear
axiom R8 : ∀ x : obj, Chases x Lion → Visits Lion Bear


theorem not_chase_bear_lion : ¬ Chases Bear Lion :=
begin
  sorry
end


theorem chase_bear_lion : Chases Bear Lion :=
begin
  sorry
end
