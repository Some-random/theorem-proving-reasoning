universe u

constant obj : Type u

constant Bear : obj
constant Cow : obj
constant Lion : obj
constant Mouse : obj

constant Round : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop
constant Needs : obj → obj → Prop
constant Kind : obj → Prop

axiom A1 : Round Bear
axiom A2 : Likes Bear Cow
axiom A3 : Visits Bear Lion
axiom A4 : Big Cow
axiom A5 : Rough Cow
axiom A6 : Needs Lion Bear
axiom A7 : Likes Mouse Lion

-- Rule R1: If someone visits the lion then they are round
axiom R1 : ∀ x : obj, Visits x Lion → Round x

-- Rule R2: If someone needs the bear then they need the lion
axiom R2 : ∀ x : obj, Needs x Bear → Needs x Lion

-- Rule R3: If someone needs the lion then they visit the lion
axiom R3 : ∀ x : obj, Needs x Lion → Visits x Lion

-- Rule R4: If someone visits the lion and the lion is round then they like the lion
axiom R4 : ∀ x : obj, Visits x Lion ∧ Round Lion → Likes x Lion

-- Rule R5: If someone is rough then they need the lion
axiom R5 : ∀ x : obj, Rough x → Needs x Lion

-- Rule R6: If someone likes the lion and they need the lion then the lion visits the mouse
axiom R6 : ∀ x : obj, Likes x Lion ∧ Needs x Lion → Visits Lion Mouse

-- Rule R7: If someone is rough then they visit the lion
axiom R7 : ∀ x : obj, Rough x → Visits x Lion

-- Rule R8: If someone likes the lion and the lion is big then they are kind
axiom R8 : ∀ x : obj, Likes x Lion ∧ Big Lion → Kind x


theorem lion_visits_lion : Visits Lion Lion :=
begin
  sorry
end


theorem not_lion_visits_lion : ¬ Visits Lion Lion :=
begin
  sorry
end
