universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Cow : obj
constant Dog : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Green : obj → Prop
constant Needs : obj → obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop

axiom T1 : Big Bear
axiom T2 : Cold Bear
axiom T3 : Likes Bear Cat
axiom T4 : Visits Bear Cat
axiom T5 : Visits Bear Cow
axiom T6 : Green Cat
axiom T7 : Needs Cat Bear
axiom T8 : Needs Cow Dog
axiom T9 : Blue Dog
axiom T10 : Likes Dog Bear
axiom T11 : Visits Dog Cow

-- If something is blue then it is red
axiom R1 : ∀ x : obj, Blue x → Red x
-- If something likes the cow then the cow is big
axiom R2 : ∀ x : obj, Likes x Cow → Big Cow
-- If the cow needs the cat then the cow likes the cat
axiom R3 : ∀ x : obj, Needs Cow Cat → Likes Cow Cat
-- If something is blue then it is cold
axiom R4 : ∀ x : obj, Blue x → Cold x
-- If something is big and it likes the dog then the dog likes the cow
axiom R5 : ∀ x : obj, Big x ∧ Likes x Dog → Likes Dog Cow
-- If something needs the bear and the bear needs the dog then the bear is red
axiom R6 : ∀ x : obj, Needs x Bear ∧ Needs Bear Dog → Red Bear
-- If something likes the bear and it is big then it needs the dog
axiom R7 : ∀ x : obj, Likes x Bear ∧ Big x → Needs x Dog
-- If something is big then it needs the cat
axiom R8 : ∀ x : obj, Big x → Needs x Cat
-- If the bear is big then the bear likes the dog
axiom R9 : ∀ x : obj, Big Bear → Likes Bear Dog


theorem not_likes_cat_dog : ¬ Likes Cat Dog :=
begin
  sorry
end


theorem likes_cat_dog : Likes Cat Dog :=
begin
  sorry
end
