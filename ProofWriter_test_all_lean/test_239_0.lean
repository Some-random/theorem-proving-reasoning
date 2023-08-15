universe u

constant obj : Type u

constant Dog : obj
constant Lion : obj
constant Mouse : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Nice : obj → Prop
constant Eats : obj → obj → Prop
constant Big : obj → Prop
constant Visits : obj → obj → Prop
constant Red : obj → Prop
constant Kind : obj → Prop
constant Cold : obj → Prop

axiom A1 : Chases Dog Lion
axiom A2 : Nice Dog
axiom A3 : ¬ Eats Lion Tiger
axiom A4 : ¬ Big Lion
axiom A5 : Visits Lion Tiger
axiom A6 : ¬ Chases Mouse Tiger
axiom A7 : Nice Mouse
axiom A8 : Chases Tiger Lion
axiom A9 : Eats Tiger Dog
axiom A10 : ¬ Eats Tiger Mouse
axiom A11 : Visits Tiger Lion

-- Rule R1: If something visits the dog and it is kind then it visits the mouse
axiom R1 : ∀ x : obj, Visits x Dog ∧ Kind x → Visits x Mouse

-- Rule R2: If something chases the dog then it is not red
axiom R2 : ∀ x : obj, Chases x Dog → ¬ Red x

-- Rule R3: If something chases the lion and it visits the dog then it chases the dog
axiom R3 : ∀ x : obj, Chases x Lion ∧ Visits x Dog → Chases x Dog

-- Rule R4: If something chases the lion then it is big
axiom R4 : ∀ x : obj, Chases x Lion → Big x

-- Rule R5: If something eats the lion then it is not cold
axiom R5 : ∀ x : obj, Eats x Lion → ¬ Cold x

-- Rule R6: If something is big then it visits the dog
axiom R6 : ∀ x : obj, Big x → Visits x Dog

-- Rule R7: If something visits the mouse then the mouse is red
axiom R7 : ∀ x : obj, Visits x Mouse → Red Mouse

-- Rule R8: If the tiger visits the dog and the dog is not big then the dog chases the mouse
axiom R8 : ∀ x : obj, Visits Tiger Dog ∧ ¬ Big Dog → Chases Dog Mouse

-- Rule R9: If something visits the tiger and the tiger is not red then it is not nice
axiom R9 : ∀ x : obj, Visits x Tiger ∧ ¬ Red Tiger → ¬ Nice x


theorem not_visits_dog_dog : ¬ Visits Dog Dog :=
begin
  sorry
end


theorem visits_dog_dog : Visits Dog Dog :=
begin
  sorry
end
