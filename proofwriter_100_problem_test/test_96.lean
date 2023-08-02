universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Harry : obj

constant Kind : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop
constant Red : obj → Prop
constant Furry : obj → Prop
constant Cold : obj → Prop

axiom A1 : Kind Anne
axiom A2 : ¬ Big Charlie
axiom A3 : Green Charlie
axiom A4 : Green Erin
axiom A5 : ¬ Kind Erin
axiom A6 : Big Harry
axiom A7 : Green Harry

axiom R1 : ∀ x : obj, Big x ∧ Green x → Young x
axiom R2 : ∀ x : obj, Big x → Young x
axiom R3 : ∀ x : obj, Red x → Green x
axiom R4 : ∀ x : obj, Kind x → ¬ Red x
axiom R5 : ∀ x : obj, Furry x → Kind x
axiom R6 : ∀ x : obj, Young Harry → Cold Harry
axiom R7 : ∀ x : obj, Young x ∧ Cold x → Furry x

theorem erin_is_furry : Furry Erin :=
begin
  sorry
end


theorem not_furry_erin : ¬ Furry Erin :=
begin
  sorry
end
