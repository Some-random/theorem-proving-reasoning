universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Fiona : obj
constant Gary : obj

constant Smart : obj → Prop
constant Quiet : obj → Prop
constant Young : obj → Prop
constant Kind : obj → Prop
constant Rough : obj → Prop
constant Blue : obj → Prop
constant Furry : obj → Prop

axiom T1 : Smart Anne
axiom T2 : Quiet Bob
axiom T3 : Young Bob
axiom T4 : ¬ Quiet Fiona
axiom T5 : Kind Gary
axiom T6 : Rough Gary
axiom T7 : Smart Gary

axiom R1 : ∀ x : obj, Rough x ∧ Kind x → Blue x
axiom R2 : ∀ x : obj, Young x ∧ Kind x → Rough x
axiom R3 : ∀ x : obj, Furry x → Quiet x
axiom R4 : ∀ x : obj, Furry x ∧ Young x → Quiet x
axiom R5 : ∀ x : obj, Quiet x → Young x
axiom R6 : ∀ x : obj, Blue x ∧ Kind x → Young x
axiom R7 : ∀ x : obj, Smart x → Furry x
axiom R8 : ∀ x : obj, Blue Fiona → ¬ Kind Fiona
axiom R9 : ∀ x : obj, Young x → Kind x

theorem not_young_Bob : ¬ Young Bob :=
begin
  sorry
end


theorem young_Bob : Young Bob :=
begin
  sorry
end
