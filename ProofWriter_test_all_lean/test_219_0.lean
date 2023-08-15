universe u

constant obj : Type u

constant Cat : obj
constant Dog : obj
constant Squirrel : obj
constant Tiger : obj

constant Eats : obj → obj → Prop
constant Round : obj → Prop
constant Needs : obj → obj → Prop
constant Likes : obj → obj → Prop
constant Blue : obj → Prop
constant Kind : obj → Prop
constant Big : obj → Prop

axiom T1 : Eats Cat Squirrel
axiom T2 : Round Cat
axiom T3 : Needs Cat Dog
axiom T4 : Needs Cat Squirrel
axiom T5 : Likes Dog Cat
axiom T6 : Likes Dog Tiger
axiom T7 : Blue Squirrel
axiom T8 : ¬ Round Squirrel
axiom T9 : Blue Tiger
axiom T10 : Kind Tiger
axiom T11 : Round Tiger
axiom T12 : Needs Tiger Squirrel

-- If something likes the tiger and the tiger needs the dog then it is round
axiom R1 : ∀ x : obj, Likes x Tiger ∧ Needs Tiger Dog → Round x
-- If something eats the cat then it needs the dog
axiom R2 : ∀ x : obj, Eats x Cat → Needs x Dog
-- If something is big then it needs the dog
axiom R3 : ∀ x : obj, Big x → Needs x Dog
-- If the dog likes the tiger and the tiger likes the dog then the dog does not like the squirrel
axiom R4 : Likes Dog Tiger ∧ Likes Tiger Dog → ¬ Likes Dog Squirrel
-- If something is round then it eats the cat
axiom R5 : ∀ x : obj, Round x → Eats x Cat
-- If something needs the cat and it eats the tiger then the tiger needs the dog
axiom R6 : ∀ x : obj, Needs x Cat ∧ Eats x Tiger → Needs Tiger Dog
-- If something needs the dog and it does not eat the tiger then it is blue
axiom R7 : ∀ x : obj, Needs x Dog ∧ ¬ Eats x Tiger → Blue x
-- If the dog is round then the dog eats the squirrel
axiom R8 : Round Dog → Eats Dog Squirrel
-- If something likes the tiger and it is kind then the tiger likes the cat
axiom R9 : ∀ x : obj, Likes x Tiger ∧ Kind x → Likes Tiger Cat


theorem cat_eats_cat : Eats Cat Cat :=
begin
  sorry
end


theorem not_cat_eats_cat : ¬ Eats Cat Cat :=
begin
  sorry
end
