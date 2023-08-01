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

axiom A1 : Needs BaldEagle Lion
axiom A2 : Visits BaldEagle Lion
axiom A3 : ¬ Cold Lion
axiom A4 : ¬ Likes Lion Tiger
axiom A5 : Visits Lion Tiger
axiom A6 : Kind Squirrel
axiom A7 : Young Squirrel
axiom A8 : Likes Squirrel Tiger
axiom A9 : ¬ Needs Squirrel Lion
axiom A10 : Visits Squirrel BaldEagle
axiom A11 : Cold Tiger
axiom A12 : Visits Tiger BaldEagle

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
end


theorem squirrel_visits_lion : Visits Squirrel Lion :=
begin
end
