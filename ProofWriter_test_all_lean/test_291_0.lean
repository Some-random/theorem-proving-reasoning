universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Cow : obj
constant Mouse : obj

constant Kind : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Rough : obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop

axiom T1 : Kind Bear
axiom T2 : Likes Bear Cat
axiom T3 : Likes Cat Bear
axiom T4 : Needs Cat Cow
axiom T5 : Sees Cat Bear
axiom T6 : Sees Cat Cow
axiom T7 : Rough Cow
axiom T8 : Likes Mouse Cat
axiom T9 : Needs Mouse Bear
axiom T10 : Sees Mouse Cow

-- If someone sees the bear then they need the mouse
axiom R1 : ∀ x : obj, Sees x Bear → Needs x Mouse
-- If someone needs the bear and the bear needs the cow then the bear needs the cat
axiom R2 : ∀ x : obj, Needs x Bear ∧ Needs Bear Cow → Needs Bear Cat
-- If someone likes the cow then the cow sees the bear
axiom R3 : ∀ x : obj, Likes x Cow → Sees Cow Bear
-- If the bear is red and the bear needs the cow then the cow needs the bear
axiom R4 : ∀ x : obj, Red Bear ∧ Needs Bear Cow → Needs Cow Bear
-- If someone needs the mouse then they are big
axiom R5 : ∀ x : obj, Needs x Mouse → Big x
-- If someone sees the bear and they are big then they like the cow
axiom R6 : ∀ x : obj, Sees x Bear ∧ Big x → Likes x Cow
-- If the cat needs the mouse then the mouse needs the cow
axiom R7 : ∀ x : obj, Needs Cat Mouse → Needs Mouse Cow
-- If someone is kind then they see the cat
axiom R8 : ∀ x : obj, Kind x → Sees x Cat


theorem cow_sees_bear : Sees Cow Bear :=
begin
  sorry
end


theorem not_cow_sees_bear : ¬ Sees Cow Bear :=
begin
  sorry
end
