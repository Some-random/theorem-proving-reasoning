universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Bear : obj
constant Dog : obj

constant Blue : obj → Prop
constant Red : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop

axiom T1 : Blue BaldEagle
axiom T2 : Red BaldEagle
axiom T3 : Likes BaldEagle Lion
axiom T4 : Needs BaldEagle Bear
axiom T5 : Needs BaldEagle Dog
axiom T6 : ¬ Blue Bear
axiom T7 : Nice Bear
axiom T8 : Needs Bear Dog
axiom T9 : Chases Dog BaldEagle
axiom T10 : Red Dog
axiom T11 : ¬ Needs Dog Bear
axiom T12 : ¬ Likes Lion Bear

axiom R1 : ∀ x : obj, Likes x Lion ∧ ¬ Red x → Chases x Lion
axiom R2 : ∀ x : obj, Red x ∧ Needs x BaldEagle → Needs BaldEagle Lion
axiom R3 : ∀ x : obj, Round x → ¬ Likes x Dog
axiom R4 : Needs BaldEagle Dog → Round Dog
axiom R5 : ∀ x : obj, Likes x Dog → Likes x BaldEagle
axiom R6 : ∀ x : obj, Chases x Lion ∧ Likes Lion Dog → ¬ Likes Dog Lion
axiom R7 : Likes Bear Lion → Likes Lion Dog
axiom R8 : ∀ x : obj, Likes x Bear → Likes Bear Lion
axiom R9 : ∀ x : obj, Round x → Likes x Bear

theorem lion_likes_bald_eagle : Likes Lion BaldEagle :=
begin
  sorry
end


theorem not_lion_likes_bald_eagle : ¬ Likes Lion BaldEagle :=
begin
  sorry
end
