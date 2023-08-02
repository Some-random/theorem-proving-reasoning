universe u

constant obj : Type u

constant Cow : obj
constant Lion : obj
constant Mouse : obj
constant Rabbit : obj

constant Eats : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Green : obj → Prop
constant Big : obj → Prop
constant Round : obj → Prop
constant Needs : obj → obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop

axiom T1 : Eats Cow Lion
axiom T2 : Eats Cow Mouse
axiom T3 : Green Cow
axiom T4 : Visits Cow Lion
axiom T5 : Visits Cow Mouse
axiom T6 : Eats Lion Cow
axiom T7 : Eats Lion Rabbit
axiom T8 : Big Lion
axiom T9 : Green Lion
axiom T10 : Round Lion
axiom T11 : Eats Mouse Lion
axiom T12 : Big Mouse
axiom T13 : Visits Mouse Cow
axiom T14 : Round Rabbit
axiom T15 : Needs Rabbit Cow
axiom T16 : Visits Rabbit Lion

axiom R1 : ∀ x : obj, Eats x Lion ∧ Green Lion → Blue x
axiom R2 : ∀ x : obj, Visits x Cow ∧ Eats x Rabbit → Cold Rabbit
axiom R3 : ∀ x : obj, Needs x Mouse ∧ Needs Mouse Rabbit → Needs Mouse Cow
axiom R4 : ∀ x : obj, Visits x Cow ∧ Big x → Visits Cow Mouse
axiom R5 : ∀ x : obj, Green x ∧ Needs x Rabbit → Eats x Rabbit
axiom R6 : ∀ x : obj, Blue x → Eats x Rabbit
axiom R7 : ∀ x : obj, Cold x → Blue x
axiom R8 : ∀ x : obj, Visits x Cow → Green Cow
axiom R9 : ∀ x : obj, Eats x Lion → Cold x

theorem rabbit_is_cold : Cold Rabbit :=
begin
  sorry
end


theorem not_cold_Rabbit : ¬ Cold Rabbit :=
begin
  sorry
end
