universe u

constant obj : Type u

constant Cat : obj
constant Rabbit : obj
constant Tiger : obj
constant Mouse : obj

constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Blue : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop

axiom T1 : Likes Cat Rabbit
axiom T2 : Likes Cat Tiger
axiom T3 : Blue Mouse
axiom T4 : Nice Mouse
axiom T5 : Round Mouse
axiom T6 : Visits Mouse Tiger
axiom T7 : Likes Rabbit Tiger
axiom T8 : Visits Rabbit Tiger
axiom T9 : Eats Tiger Mouse
axiom T10 : Eats Tiger Rabbit
axiom T11 : Visits Tiger Cat

-- If the mouse is big then the mouse visits the cat
axiom R1 : Big Mouse → Visits Mouse Cat
-- If something visits the mouse then it visits the tiger
axiom R2 : ∀ x : obj, Visits x Mouse → Visits x Tiger
-- If something likes the tiger and the tiger eats the cat then the cat is red
axiom R3 : ∀ x : obj, Likes x Tiger ∧ Eats Tiger Cat → Red Cat
-- If something visits the tiger then the tiger visits the mouse
axiom R4 : ∀ x : obj, Visits x Tiger → Visits Tiger Mouse
-- If something is blue and it visits the cat then it likes the rabbit
axiom R5 : ∀ x : obj, Blue x ∧ Visits x Cat → Likes x Rabbit
-- If something is nice then it likes the cat
axiom R6 : ∀ x : obj, Nice x → Likes x Cat
-- If something is blue then it likes the cat
axiom R7 : ∀ x : obj, Blue x → Likes x Cat
-- If something is round then it is nice
axiom R8 : ∀ x : obj, Round x → Nice x
-- If something visits the tiger then it is round
axiom R9 : ∀ x : obj, Visits x Tiger → Round x


theorem cat_likes_tiger : Likes Cat Tiger :=
begin
  sorry
end


theorem not_cat_likes_tiger : ¬ Likes Cat Tiger :=
begin
  sorry
end
