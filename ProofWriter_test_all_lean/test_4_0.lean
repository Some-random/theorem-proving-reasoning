universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Dog : obj
constant Mouse : obj

constant Green : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Young : obj → Prop
constant Sees : obj → obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Cold : obj → Prop

axiom T1 : Green Bear
axiom T2 : Likes Bear Cat
axiom T3 : Likes Bear Dog
axiom T4 : Visits Bear Dog
axiom T5 : Young Cat
axiom T6 : Sees Cat Bear
axiom T7 : Sees Cat Dog
axiom T8 : Visits Cat Bear
axiom T9 : Visits Cat Mouse
axiom T10 : Round Dog
axiom T11 : Likes Dog Bear
axiom T12 : Likes Dog Mouse
axiom T13 : Visits Dog Mouse
axiom T14 : Big Mouse
axiom T15 : Cold Mouse
axiom T16 : Round Mouse

-- If something visits the mouse and the mouse visits the dog then it is cold
axiom R1 : ∀ x : obj, Visits x Mouse ∧ Visits Mouse Dog → Cold x
-- If something likes the cat then it visits the dog
axiom R2 : ∀ x : obj, Likes x Cat → Visits x Dog
-- If something is cold then it likes the cat
axiom R3 : ∀ x : obj, Cold x → Likes x Cat
-- If something is green then it sees the dog
axiom R4 : ∀ x : obj, Green x → Sees x Dog
-- If something likes the mouse then it sees the cat
axiom R5 : ∀ x : obj, Likes x Mouse → Sees x Cat
-- If something is green and cold then it likes the cat
axiom R6 : ∀ x : obj, Green x ∧ Cold x → Likes x Cat
-- If something is big and it visits the bear then the bear is green
axiom R7 : ∀ x : obj, Big x ∧ Visits x Bear → Green Bear


theorem not_cold_Cat : ¬ Cold Cat :=
begin
  sorry
end


theorem cold_Cat : Cold Cat :=
begin
  sorry
end
