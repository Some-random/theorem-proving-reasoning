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

axiom A1 : Blue BaldEagle
axiom A2 : Red BaldEagle
axiom A3 : Likes BaldEagle Lion
axiom A4 : Needs BaldEagle Bear
axiom A5 : Needs BaldEagle Dog
axiom A6 : ¬ Blue Bear
axiom A7 : Nice Bear
axiom A8 : Needs Bear Dog
axiom A9 : Chases Dog BaldEagle
axiom A10 : Red Dog
axiom A11 : ¬ Needs Dog Bear
axiom A12 : ¬ Likes Lion Bear

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
end


theorem not_lion_likes_bald_eagle : ¬ Likes Lion BaldEagle :=
begin
end
