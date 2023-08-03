universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Dave : obj

constant Smart : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Rough : obj → Prop
constant Quiet : obj → Prop
constant Young : obj → Prop
constant Round : obj → Prop

axiom T1 : Smart Anne
axiom T2 : Big Bob
axiom T3 : Blue Bob
axiom T4 : Rough Bob
axiom T5 : Smart Bob
axiom T6 : Smart Charlie
axiom T7 : Quiet Dave

axiom R1 : ∀ x : obj, Blue x ∧ Round x → Rough x
axiom R2 : ∀ x : obj, Smart x ∧ Quiet x → Young x
axiom R3 : ∀ x : obj, Smart x → Quiet x
axiom R4 : ∀ x : obj, Round x → Blue x
axiom R5 : ∀ x : obj, Big Dave → Quiet Dave
axiom R6 : ∀ x : obj, Blue x → Young x
axiom R7 : ∀ x : obj, Rough x ∧ Young x → Round x
axiom R8 : ∀ x : obj, Smart x → Rough x
axiom R9 : ∀ x : obj, Blue x ∧ Round x → Big x

theorem not_blue_Charlie : ¬ Blue Charlie :=
begin
  sorry
end


theorem blue_Charlie : Blue Charlie :=
begin
  sorry
end
