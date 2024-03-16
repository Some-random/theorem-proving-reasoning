universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Gary : obj

constant Young : obj → Prop
constant Red : obj → Prop
constant Rough : obj → Prop
constant Green : obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Quiet : obj → Prop

axiom T1 : Young Anne
axiom T2 : Red Bob
axiom T3 : Rough Bob
axiom T4 : Green Erin
axiom T5 : Kind Erin
axiom T6 : Kind Gary
axiom T7 : Round Gary

axiom R1 : ∀ x : obj, Red Anne ∧ Young Anne → Quiet Anne
axiom R2 : ∀ x : obj, Round x → Kind x
axiom R3 : ∀ x : obj, Green x ∧ Red x → Rough x
axiom R4 : ∀ x : obj, Round x → Quiet x
axiom R5 : ∀ x : obj, Young x → Round x
axiom R6 : ∀ x : obj, Kind x ∧ Red x → Young x
axiom R7 : ∀ x : obj, Red x ∧ Round x → Young x
axiom R8 : ∀ x : obj, Round x ∧ Quiet x → Green x
axiom R9 : ∀ x : obj, Red x ∧ Rough x → Kind x

theorem gary_is_young : Young Gary :=
begin
  sorry
end


theorem not_young_Gary : ¬ Young Gary :=
begin
  sorry
end
