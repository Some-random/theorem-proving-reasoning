universe u

constant obj : Type u

constant Cat : obj
constant Rabbit : obj
constant Tiger : obj
constant Mouse : obj

constant Chases : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Nice : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop

axiom T1 : Chases Cat Rabbit
axiom T2 : Chases Cat Tiger
axiom T3 : Sees Cat Mouse
axiom T4 : ¬ Sees Cat Rabbit
axiom T5 : Chases Mouse Cat
axiom T6 : ¬ Likes Mouse Cat
axiom T7 : Likes Rabbit Tiger
axiom T8 : Nice Tiger
axiom T9 : Young Tiger
axiom T10 : Likes Tiger Cat

-- All big things are blue
axiom R1 : ∀ x : obj, Big x → Blue x
-- If the cat sees the tiger then the cat chases the tiger
axiom R2 : Sees Cat Tiger → Chases Cat Tiger
-- If something likes the rabbit then the rabbit does not like the mouse
axiom R3 : ∀ x : obj, Likes x Rabbit → ¬ Likes Rabbit Mouse
-- All blue things are young
axiom R4 : ∀ x : obj, Blue x → Young x
-- If something is blue then it is young
axiom R5 : ∀ x : obj, Blue x → Young x
-- If something chases the cat then it likes the mouse
axiom R6 : ∀ x : obj, Chases x Cat → Likes x Mouse
-- If something is young then it likes the tiger
axiom R7 : ∀ x : obj, Young x → Likes x Tiger
-- If something likes the mouse then the mouse is big
axiom R8 : ∀ x : obj, Likes x Mouse → Big Mouse
-- If something sees the mouse and the mouse is not blue then the mouse likes the cat
axiom R9 : ∀ x : obj, Sees x Mouse ∧ ¬ Blue Mouse → Likes Mouse Cat


theorem mouse_is_young : Young Mouse :=
begin
  sorry
end


theorem not_young_Mouse : ¬ Young Mouse :=
begin
  sorry
end
