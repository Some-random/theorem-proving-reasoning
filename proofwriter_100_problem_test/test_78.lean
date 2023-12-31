universe u

constant obj : Type u

constant BaldEagle : obj
constant Squirrel : obj
constant Bear : obj
constant Lion : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop

axiom T1 : Chases BaldEagle Squirrel
axiom T2 : Eats BaldEagle Bear
axiom T3 : ¬ Eats Bear Lion
axiom T4 : Visits Bear Lion
axiom T5 : ¬ Eats Lion BaldEagle
axiom T6 : Red Squirrel
axiom T7 : Visits Squirrel BaldEagle

axiom R1 : ∀ x : obj, Round x → Eats x Squirrel
axiom R2 : ∀ x : obj, Blue x ∧ Green x → Chases x BaldEagle
axiom R3 : ∀ x : obj, Eats x Squirrel → Green Squirrel
axiom R4 : Round BaldEagle → Chases BaldEagle Lion
axiom R5 : ∀ x : obj, Blue x → Chases x Squirrel
axiom R6 : ∀ x : obj, Red x → Blue x
axiom R7 : ∀ x : obj, Chases x Lion → Blue x
axiom R8 : ∀ x : obj, Blue x ∧ Red x → Round x
axiom R9 : ∀ x : obj, Visits x BaldEagle ∧ ¬ Round x → Visits x Lion

theorem squirrel_chases_bald_eagle : Chases Squirrel BaldEagle :=
begin
  sorry
end


theorem not_squirrel_chases_bald_eagle : ¬ Chases Squirrel BaldEagle :=
begin
  sorry
end
