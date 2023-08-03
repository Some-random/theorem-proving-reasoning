universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Squirrel : obj
constant Tiger : obj

constant Green : obj → Prop
constant Nice : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Young : obj → Prop
constant Cold : obj → Prop
constant Round : obj → Prop
constant Sees : obj → obj → Prop

axiom T1 : Green BaldEagle
axiom T2 : Likes BaldEagle Squirrel
axiom T3 : Likes BaldEagle Tiger
axiom T4 : Nice Bear
axiom T5 : Round Bear
axiom T6 : Likes Bear BaldEagle
axiom T7 : Likes Bear Tiger
axiom T8 : Young Squirrel
axiom T9 : Likes Squirrel Bear
axiom T10 : Needs Squirrel BaldEagle
axiom T11 : Sees Squirrel Tiger
axiom T12 : Cold Tiger
axiom T13 : Likes Tiger Bear
axiom T14 : Likes Tiger Squirrel
axiom T15 : Needs Tiger Bear
axiom T16 : Sees Tiger Bear

axiom R1 : ∀ x : obj, Needs x BaldEagle ∧ Likes BaldEagle Bear → Needs BaldEagle Tiger
axiom R2 : ∀ x : obj, Needs x Squirrel → Needs x Tiger
axiom R3 : ∀ x : obj, Green x → Needs x Squirrel
axiom R4 : ∀ x : obj, Needs x Bear ∧ Needs x BaldEagle → Likes Bear BaldEagle
axiom R5 : ∀ x : obj, Likes x BaldEagle → Young x
axiom R6 : ∀ x : obj, Likes x Bear ∧ Sees x BaldEagle → Needs x Bear
axiom R7 : ∀ x : obj, Round x → Green x
axiom R8 : ∀ x : obj, Sees x Squirrel ∧ Likes Squirrel Bear → Cold x
axiom R9 : ∀ x : obj, Needs x Bear ∧ Green Bear → Round x

theorem not_young_Tiger : ¬ Young Tiger :=
begin
  sorry
end


theorem young_Tiger : Young Tiger :=
begin
  sorry
end
