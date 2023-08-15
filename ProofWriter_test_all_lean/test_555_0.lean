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
constant Cold : obj → Prop
constant Kind : obj → Prop

axiom T1 : Chases Dog Lion
axiom T2 : Nice Dog
axiom T3 : ¬ Eats Lion Tiger
axiom T4 : ¬ Big Lion
axiom T5 : Visits Lion Tiger
axiom T6 : ¬ Chases Mouse Tiger
axiom T7 : Nice Mouse
axiom T8 : Chases Tiger Lion
axiom T9 : Eats Tiger Dog
axiom T10 : ¬ Eats Tiger Mouse
axiom T11 : Visits Tiger Lion

-- If something visits the dog and it is kind then it visits the mouse
axiom R1 : ∀ x : obj, Visits x Dog ∧ Kind x → Visits x Mouse
-- If something chases the dog then it is not red
axiom R2 : ∀ x : obj, Chases x Dog → ¬ Red x
-- If something chases the lion and it visits the dog then it chases the dog
axiom R3 : ∀ x : obj, Chases x Lion ∧ Visits x Dog → Chases x Dog
-- If something chases the lion then it is big
axiom R4 : ∀ x : obj, Chases x Lion → Big x
-- If something eats the lion then it is not cold
axiom R5 : ∀ x : obj, Eats x Lion → ¬ Cold x
-- If something is big then it visits the dog
axiom R6 : ∀ x : obj, Big x → Visits x Dog
-- If something visits the mouse then the mouse is red
axiom R7 : ∀ x : obj, Visits x Mouse → Red Mouse
-- If the tiger visits the dog and the dog is not big then the dog chases the mouse
axiom R8 : Visits Tiger Dog ∧ ¬ Big Dog → Chases Dog Mouse
-- If something visits the tiger and the tiger is not red then it is not nice
axiom R9 : ∀ x : obj, Visits x Tiger ∧ ¬ Red Tiger → ¬ Nice x


theorem not_big_Tiger : ¬ Big Tiger :=
begin
  sorry
end


theorem big_Tiger : Big Tiger :=
begin
  sorry
end
