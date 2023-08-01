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

axiom R1 : ∀ x : obj, Blue x → Red x
axiom R2 : ∀ x : obj, Likes x Cow → Big Cow
axiom R3 : ∀ x : obj, Needs Cow Cat → Likes Cow Cat
axiom R4 : ∀ x : obj, Blue x → Cold x
axiom R5 : ∀ x : obj, Big x ∧ Likes x Dog → Likes Dog Cow
axiom R6 : ∀ x : obj, Needs x Bear ∧ Needs Bear Dog → Red Bear
axiom R7 : ∀ x : obj, Likes x Bear ∧ Big x → Needs x Dog
axiom R8 : ∀ x : obj, Big x → Needs x Cat
axiom R9 : Big Bear → Likes Bear Dog

theorem dog_is_big : Big Dog :=
begin
end


theorem not_big_dog : ¬ Big Dog :=
begin
end
