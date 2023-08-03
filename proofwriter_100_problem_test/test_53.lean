universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Fiona : obj

constant Quiet : obj → Prop
constant Red : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop
constant Rough : obj → Prop

axiom T1 : Quiet Anne
axiom T2 : Red Anne
axiom T3 : Kind Bob
axiom T4 : Nice Bob
axiom T5 : Quiet Bob
axiom T6 : ¬ Red Bob
axiom T7 : Round Bob
axiom T8 : Big Charlie
axiom T9 : Kind Charlie
axiom T10 : Quiet Fiona

axiom R1 : ∀ x : obj, Round x → Nice x
axiom R2 : ∀ x : obj, Kind x ∧ Red x → Rough x
axiom R3 : ∀ x : obj, Big x → Quiet x
axiom R4 : ∀ x : obj, Rough x → Round x
axiom R5 : ∀ x : obj, Nice Charlie ∧ Big Charlie → ¬ Kind Charlie
axiom R6 : ∀ x : obj, Red x → Kind x
axiom R7 : ∀ x : obj, Round x ∧ Nice x → ¬ Big x

theorem bob_is_rough : Rough Bob :=
begin
  sorry
end


theorem not_rough_Bob : ¬ Rough Bob :=
begin
  sorry
end
