universe u

constant obj : Type u

constant Cat : obj
constant Dog : obj
constant Mouse : obj
constant Tiger : obj

constant Big : obj → Prop
constant Nice : obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop

axiom T1 : Big Cat
axiom T2 : Nice Cat
axiom T3 : Sees Cat Dog
axiom T4 : Visits Cat Dog
axiom T5 : Big Dog
axiom T6 : Nice Dog
axiom T7 : Nice Mouse
axiom T8 : Red Mouse
axiom T9 : Eats Tiger Cat
axiom T10 : Eats Tiger Dog
axiom T11 : Visits Tiger Mouse

-- If someone visits the tiger then the tiger sees the mouse
axiom R1 : ∀ x : obj, Visits x Tiger → Sees Tiger Mouse
-- If the cat eats the dog and the cat sees the dog then the cat is big
axiom R2 : Eats Cat Dog ∧ Sees Cat Dog → Big Cat
-- If someone eats the dog then they visit the cat
axiom R3 : ∀ x : obj, Eats x Dog → Visits x Cat
-- If the tiger is young and the tiger is nice then the tiger eats the mouse
axiom R4 : Young Tiger ∧ Nice Tiger → Eats Tiger Mouse
-- If someone sees the mouse and the mouse is red then the mouse visits the tiger
axiom R5 : ∀ x : obj, Sees x Mouse ∧ Red Mouse → Visits Mouse Tiger
-- If someone visits the tiger then they visit the cat
axiom R6 : ∀ x : obj, Visits x Tiger → Visits x Cat
-- If someone visits the cat and the cat visits the dog then the dog visits the tiger
axiom R7 : ∀ x : obj, Visits x Cat ∧ Visits Cat Dog → Visits Dog Tiger
-- If the cat sees the tiger then the cat eats the dog
axiom R8 : Sees Cat Tiger → Eats Cat Dog


theorem not_mouse_eats_mouse : ¬ Eats Mouse Mouse :=
begin
  sorry
end


theorem mouse_eats_mouse : Eats Mouse Mouse :=
begin
  sorry
end
