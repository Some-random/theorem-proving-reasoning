universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Squirrel : obj
constant Tiger : obj

constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Cold : obj → Prop
constant Likes : obj → obj → Prop
constant Kind : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop

axiom T1 : Needs BaldEagle Lion
axiom T2 : Visits BaldEagle Lion
axiom T3 : ¬ Cold Lion
axiom T4 : ¬ Likes Lion Tiger
axiom T5 : Visits Lion Tiger
axiom T6 : Kind Squirrel
axiom T7 : Young Squirrel
axiom T8 : Likes Squirrel Tiger
axiom T9 : ¬ Needs Squirrel Lion
axiom T10 : Visits Squirrel BaldEagle
axiom T11 : Cold Tiger
axiom T12 : Visits Tiger BaldEagle

axiom R1 : ∀ x : obj, Visits x BaldEagle → Big x
axiom R2 : ∀ x : obj, Big x → Needs x Squirrel
axiom R3 : ∀ x : obj, Visits x Squirrel ∧ Visits x Lion → Needs x Squirrel
axiom R4 : ∀ x : obj, Needs x Squirrel → Green x
axiom R5 : ∀ x : obj, Young x → Needs x Tiger
axiom R6 : ∀ x : obj, Green x → Young x
axiom R7 : ∀ x : obj, Big x ∧ Visits x Lion → Needs Lion Squirrel
axiom R8 : ∀ x : obj, Big Squirrel ∧ ¬ Likes Squirrel Tiger → ¬ Big Tiger

theorem not_squirrel_visits_lion : ¬ Visits Squirrel Lion :=
begin
  sorry
end


theorem squirrel_visits_lion : Visits Squirrel Lion :=
begin
  sorry
end
