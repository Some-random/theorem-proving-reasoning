universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Cow : obj
constant Dog : obj

constant Eats : obj → obj → Prop
constant Young : obj → Prop
constant Sees : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop
constant Nice : obj → Prop

axiom T1 : Eats BaldEagle Lion
axiom T2 : Young BaldEagle
axiom T3 : Sees Cow Dog
axiom T4 : Sees Cow Lion
axiom T5 : ¬ Visits Cow BaldEagle
axiom T6 : Visits Cow Dog
axiom T7 : ¬ Eats Dog Cow
axiom T8 : Round Dog
axiom T9 : ¬ Visits Dog BaldEagle
axiom T10 : Visits Dog Cow
axiom T11 : Round Lion
axiom T12 : Young Lion

axiom R1 : ∀ x : obj, Visits x Dog ∧ Sees x Cow → ¬ Sees x BaldEagle
axiom R2 : ∀ x : obj, Visits x Dog → Eats x BaldEagle
axiom R3 : ∀ x : obj, Eats x BaldEagle → Rough x
axiom R4 : ∀ x : obj, Rough x → Visits x Dog
axiom R5 : ∀ x : obj, Visits x Lion ∧ ¬ Nice x → Eats Lion BaldEagle
axiom R6 : ∀ x : obj, Sees x Lion ∧ Eats Lion Dog → Eats x Cow
axiom R7 : ∀ x : obj, Visits x Dog → Sees x Cow

theorem nice_BaldEagle : Nice BaldEagle :=
begin
  sorry
end


theorem not_nice_BaldEagle : ¬ Nice BaldEagle :=
begin
  sorry
end
