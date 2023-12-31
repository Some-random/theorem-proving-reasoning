universe u

constant obj : Type u

constant BaldEagle : obj
constant Dog : obj
constant Lion : obj
constant Mouse : obj

constant Kind : obj → Prop
constant Red : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Rough : obj → Prop

axiom T1 : Kind BaldEagle
axiom T2 : ¬ Red BaldEagle
axiom T3 : Likes BaldEagle Dog
axiom T4 : Needs Dog Lion
axiom T5 : ¬ Needs Lion BaldEagle
axiom T6 : Likes Mouse Dog
axiom T7 : ¬ Sees Mouse Dog

axiom R1 : ∀ x : obj, Needs x Mouse → ¬ Sees Mouse BaldEagle
axiom R2 : ∀ x : obj, Needs x Dog → Needs Dog Lion
axiom R3 : ∀ x : obj, Rough x → Sees x Mouse
axiom R4 : ∀ x : obj, Sees x Mouse → Kind Mouse
axiom R5 : ∀ x : obj, Needs x Lion → ¬ Sees x BaldEagle
axiom R6 : ∀ x : obj, Sees x Dog → Needs x Mouse
axiom R7 : ∀ x : obj, Kind x → Rough x
axiom R8 : ∀ x : obj, Sees x Mouse → Likes x Lion

theorem mouse_is_rough : Rough Mouse :=
begin
  sorry
end


theorem not_rough_mouse : ¬ Rough Mouse :=
begin
  sorry
end
