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

axiom R1 : ∀ x : obj, Sees x Bear → Needs x Mouse
axiom R2 : ∀ x : obj, Needs x Bear ∧ Needs Bear Cow → Needs Bear Cat
axiom R3 : ∀ x : obj, Likes x Cow → Sees Cow Bear
axiom R4 : ∀ x : obj, Red Bear ∧ Needs Bear Cow → Needs Cow Bear
axiom R5 : ∀ x : obj, Needs x Mouse → Big x
axiom R6 : ∀ x : obj, Sees x Bear ∧ Big x → Likes x Cow
axiom R7 : ∀ x : obj, Needs Cat Mouse → Needs Mouse Cow
axiom R8 : ∀ x : obj, Kind x → Sees x Cat

theorem not_mouse_needs_cow : ¬ Needs Mouse Cow :=
begin
  sorry
end


theorem mouse_needs_cow : Needs Mouse Cow :=
begin
  sorry
end
