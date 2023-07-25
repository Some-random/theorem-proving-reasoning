universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Fiona : obj
constant Gary : obj

constant Kind : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant Young : obj → Prop
constant Rough : obj → Prop

axiom T1 : Kind Anne
axiom T2 : Red Anne
axiom T3 : White Dave
axiom T4 : ¬ Nice Fiona
axiom T5 : Quiet Fiona
axiom T6 : Young Fiona
axiom T7 : Quiet Gary

axiom R1 : ∀ x : obj, Rough x → ¬ Kind x
axiom R2 : ∀ x : obj, Red x → Young x
axiom R3 : ∀ x : obj, White x → Rough x
axiom R4 : ∀ x : obj, Quiet x → Red x
axiom R5 : ∀ x : obj, Nice x → Quiet x
axiom R6 : ∀ x : obj, Quiet x ∧ Young x → White x

theorem gary_is_not_kind : ¬ Kind Gary :=
begin
  apply R1,
  apply R3,
  apply R6,
  split,
  exact T7,
  apply R2,
  apply R4,
  exact T7,
end

-- The answer is True