universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Rabbit : obj
constant Squirrel : obj

constant Cold : obj → Prop
constant Rough : obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Blue : obj → Prop
constant Big : obj → Prop
constant Round : obj → Prop

axiom T1 : Cold Bear
axiom T2 : Rough Bear
axiom T3 : Needs Bear Cat
axiom T4 : Needs Bear Rabbit
axiom T5 : Sees Bear Rabbit
axiom T6 : Eats Cat Bear
axiom T7 : Blue Cat
axiom T8 : Eats Rabbit Cat
axiom T9 : Eats Rabbit Squirrel
axiom T10 : Big Rabbit
axiom T11 : Rough Rabbit
axiom T12 : Round Rabbit
axiom T13 : Eats Squirrel Bear
axiom T14 : Eats Squirrel Cat
axiom T15 : Big Squirrel
axiom T16 : Rough Squirrel

-- If something eats the rabbit then the rabbit sees the bear
axiom R1 : ∀ x : obj, Eats x Rabbit → Sees Rabbit Bear
-- If something eats the rabbit then it needs the squirrel
axiom R2 : ∀ x : obj, Eats x Rabbit → Needs x Squirrel
-- If something sees the bear and it sees the cat then the cat sees the rabbit
axiom R3 : ∀ x : obj, Sees x Bear ∧ Sees x Cat → Sees Cat Rabbit
-- If something sees the rabbit and the rabbit is rough then it sees the cat
axiom R4 : ∀ x : obj, Sees x Rabbit ∧ Rough Rabbit → Sees x Cat
-- All round, blue things are big
axiom R5 : ∀ x : obj, Round x ∧ Blue x → Big x
-- If the bear is big and the bear sees the squirrel then the bear is round
axiom R6 : ∀ x : obj, Big Bear ∧ Sees Bear Squirrel → Round Bear
-- If something sees the cat then it sees the bear
axiom R7 : ∀ x : obj, Sees x Cat → Sees x Bear


theorem not_needs_bear_squirrel : ¬ Needs Bear Squirrel :=
begin
  sorry
end


theorem needs_bear_squirrel : Needs Bear Squirrel :=
begin
  sorry
end
