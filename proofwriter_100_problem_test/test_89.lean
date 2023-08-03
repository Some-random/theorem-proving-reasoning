universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Fiona : obj

constant Rough : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant Red : obj → Prop
constant Cold : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop

axiom T1 : Rough Anne
axiom T2 : Young Anne
axiom T3 : Nice Bob
axiom T4 : Red Bob
axiom T5 : Young Bob
axiom T6 : Cold Charlie
axiom T7 : Quiet Charlie
axiom T8 : Red Charlie
axiom T9 : Rough Charlie
axiom T10 : Smart Charlie
axiom T11 : Cold Fiona
axiom T12 : Quiet Fiona

axiom R1 : ∀ x : obj, Cold x → Young x
axiom R2 : ∀ x : obj, Rough x ∧ Young x → Nice x
axiom R3 : ∀ x : obj, Cold x ∧ Red x → Smart x
axiom R4 : ∀ x : obj, Red x → Smart x
axiom R5 : ∀ x : obj, Smart x ∧ Quiet x → Cold x
axiom R6 : ∀ x : obj, Rough x ∧ Nice x → Red x
axiom R7 : ∀ x : obj, Red x ∧ Quiet x → Cold x
axiom R8 : ∀ x : obj, Smart x → Quiet x

theorem not_quiet_Anne : ¬ Quiet Anne :=
begin
  sorry
end


theorem quiet_Anne : Quiet Anne :=
begin
  sorry
end
