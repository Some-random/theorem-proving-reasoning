universe u

constant obj : Type u

constant Cat : obj
constant Cow : obj
constant Lion : obj
constant Mouse : obj

constant Young : obj → Prop
constant Visits : obj → obj → Prop
constant Cold : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Nice : obj → Prop

axiom T1 : Young Cat
axiom T2 : Visits Cat Mouse
axiom T3 : Cold Cow
axiom T4 : Likes Cow Lion
axiom T5 : Cold Lion
axiom T6 : Likes Lion Cat
axiom T7 : Needs Lion Mouse
axiom T8 : Visits Lion Mouse
axiom T9 : Cold Mouse
axiom T10 : Red Mouse
axiom T11 : Young Mouse
axiom T12 : Likes Mouse Cat
axiom T13 : Needs Mouse Cat
axiom T14 : Needs Mouse Cow

axiom R1 : ∀ x : obj, Needs x Cat ∧ Red Cat → Blue x
axiom R2 : ∀ x : obj, Blue x → Red x
axiom R3 : ∀ x : obj, Likes x Mouse ∧ Likes Mouse Cat → Blue Cat
axiom R4 : ∀ x : obj, Cold x ∧ Red x → Likes x Mouse
axiom R5 : ∀ x : obj, Needs x Cow ∧ Cold x → Young x
axiom R6 : ∀ x : obj, Nice x → Visits x Lion
axiom R7 : ∀ x : obj, Needs x Lion → Likes x Cat
axiom R8 : ∀ x : obj, Visits x Cat ∧ Likes x Lion → Blue Cat
axiom R9 : ∀ x : obj, Cold x ∧ Blue x → Needs x Lion

theorem mouse_visits_lion : Visits Mouse Lion :=
begin
  sorry
end


theorem not_mouse_visits_lion : ¬ Visits Mouse Lion :=
begin
  sorry
end
