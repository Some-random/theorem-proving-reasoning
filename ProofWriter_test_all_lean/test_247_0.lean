universe u

constant obj : Type u

constant Cat : obj
constant Dog : obj
constant Mouse : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Big : obj → Prop
constant Nice : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop

axiom T1 : Chases Cat Dog
axiom T2 : Chases Cat Mouse
axiom T3 : Chases Cat Tiger
axiom T4 : Eats Cat Dog
axiom T5 : Big Dog
axiom T6 : Sees Dog Cat
axiom T7 : ¬ Eats Mouse Cat
axiom T8 : Eats Mouse Tiger
axiom T9 : ¬ Sees Mouse Tiger
axiom T10 : Eats Tiger Dog
axiom T11 : Nice Tiger

-- If something is young and it eats the tiger then it eats the dog
axiom R1 : ∀ x : obj, Young x ∧ Eats x Tiger → Eats x Dog
-- If something sees the mouse and it eats the mouse then the mouse sees the tiger
axiom R2 : ∀ x : obj, Sees x Mouse ∧ Eats x Mouse → Sees Mouse Tiger
-- If something sees the mouse then it is big
axiom R3 : ∀ x : obj, Sees x Mouse → Big x
-- If something chases the dog then the dog chases the cat
axiom R4 : ∀ x : obj, Chases x Dog → Chases Dog Cat
-- If something chases the dog then it chases the cat
axiom R5 : ∀ x : obj, Chases x Dog → Chases x Cat
-- If something chases the tiger and the tiger eats the cat then the cat sees the mouse
axiom R6 : ∀ x : obj, Chases x Tiger ∧ Eats Tiger Cat → Sees Cat Mouse
-- If something sees the dog and it chases the tiger then the tiger chases the dog
axiom R7 : ∀ x : obj, Sees x Dog ∧ Chases x Tiger → Chases Tiger Dog
-- If the tiger is green and the tiger is big then the tiger sees the dog
axiom R8 : Green Tiger ∧ Big Tiger → Sees Tiger Dog
-- If something chases the cat then it sees the dog
axiom R9 : ∀ x : obj, Chases x Cat → Sees x Dog


theorem mouse_eats_dog : Eats Mouse Dog :=
begin
  sorry
end


theorem not_mouse_eats_dog : ¬ Eats Mouse Dog :=
begin
  sorry
end
