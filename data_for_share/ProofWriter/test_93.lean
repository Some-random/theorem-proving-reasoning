universe u

constant obj : Type u

constant BaldEagle : obj
constant Bear : obj
constant Cat : obj
constant Lion : obj

constant Round : obj → Prop
constant Needs : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop

axiom T1 : Round BaldEagle
axiom T2 : Needs Bear BaldEagle
axiom T3 : Eats Cat Bear
axiom T4 : ¬ Eats Cat Lion
axiom T5 : Round Cat
axiom T6 : Needs Lion Bear
axiom T7 : Sees Lion BaldEagle

axiom R1 : ∀ x : obj, Round x → Sees x BaldEagle
axiom R2 : ∀ x : obj, Red x ∧ ¬ Young x → Needs x Lion
axiom R3 : ∀ x : obj, Sees x BaldEagle → Needs x Lion
axiom R4 : ∀ x : obj, Needs x Lion ∧ Needs x Bear → Round Bear
axiom R5 : ∀ x : obj, Round Lion ∧ ¬ Eats Lion Cat → Eats Cat BaldEagle
axiom R6 : ∀ x : obj, Needs x Lion ∧ Sees Lion BaldEagle → Red x

theorem not_bear_needs_lion : ¬ Needs Bear Lion :=
begin
  sorry
end


theorem bear_needs_lion : Needs Bear Lion :=
begin
  sorry
end
