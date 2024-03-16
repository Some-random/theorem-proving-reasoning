universe u

constant obj : Type u

constant Bear : obj
constant Cow : obj
constant Lion : obj
constant Mouse : obj

constant Round : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop
constant Needs : obj → obj → Prop
constant Kind : obj → Prop

axiom T1 : Round Bear
axiom T2 : Likes Bear Cow
axiom T3 : Visits Bear Lion
axiom T4 : Big Cow
axiom T5 : Rough Cow
axiom T6 : Needs Lion Bear
axiom T7 : Likes Mouse Lion

axiom R1 : ∀ x : obj, Visits x Lion → Round x
axiom R2 : ∀ x : obj, Needs x Bear → Needs x Lion
axiom R3 : ∀ x : obj, Needs x Lion → Visits x Lion
axiom R4 : ∀ x : obj, Visits x Lion ∧ Round Lion → Likes x Lion
axiom R5 : ∀ x : obj, Rough x → Needs x Lion
axiom R6 : ∀ x : obj, Likes x Lion ∧ Needs x Lion → Visits Lion Mouse
axiom R7 : ∀ x : obj, Rough x → Visits x Lion
axiom R8 : ∀ x : obj, Likes x Lion ∧ Big Lion → Kind x

theorem lion_visits_lion : Visits Lion Lion :=
begin
  sorry
end


theorem not_lion_visits_lion : ¬ Visits Lion Lion :=
begin
  sorry
end
