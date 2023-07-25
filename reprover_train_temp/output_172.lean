universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Gary : obj

constant Blue : obj → Prop
constant Red : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop

axiom T1 : Blue Anne
axiom T2 : Red Anne
axiom T3 : Young Anne
axiom T4 : Nice Bob
axiom T5 : Young Bob
axiom T6 : Nice Charlie
axiom T7 : Quiet Charlie
axiom T8 : Red Charlie
axiom T9 : White Charlie
axiom T10 : Young Charlie
axiom T11 : Green Gary

axiom R1 : ∀ x : obj, Red x ∧ Blue x → White x
axiom R2 : ∀ x : obj, Green x → Red x
axiom R3 : ∀ x : obj, White x → Quiet x
axiom R4 : ∀ x : obj, Red x → Blue x
axiom R5 : ∀ x : obj, Blue x ∧ Young x → White x
axiom R6 : Quiet Bob ∧ Green Bob → Young Bob
axiom R7 : ∀ x : obj, Quiet x ∧ Green x → Young x
axiom R8 : ∀ x : obj, Red x ∧ Nice x → White x
axiom R9 : ∀ x : obj, White x ∧ Nice x → Quiet x

theorem gary_is_not_young : ¬ Young Gary :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Gary is young

theorem gary_is_young : Young Gary :=
begin
  apply R7,
  split,
  apply R3,
  apply R1,
  split,
  apply R2,
  exact T11,
  apply R4,
  apply R2,
  exact T11,
  exact T11,
end

-- It can be proven in Lean. So
-- The answer is False