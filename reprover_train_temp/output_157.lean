universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Nice : obj → Prop
constant Blue : obj → Prop
constant Quiet : obj → Prop
constant Green : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop

axiom T1 : Big Anne
axiom T2 : Nice Anne
axiom T3 : ¬ Big Bob
axiom T4 : Blue Gary
axiom T5 : ¬ Quiet Gary
axiom T6 : Big Harry
axiom T7 : Blue Harry
axiom T8 : Green Harry
axiom T9 : Nice Harry
axiom T10 : Smart Harry

axiom R1 : Quiet Gary ∧ Big Gary → ¬ Young Gary
axiom R2 : ∀ x : obj, Nice x ∧ ¬ Quiet x → Big x
axiom R3 : ∀ x : obj, Blue x → Nice x
axiom R4 : ∀ x : obj, Big x ∧ Quiet x → Blue x
axiom R5 : ∀ x : obj, Big x → Green x
axiom R6 : ∀ x : obj, Big x ∧ ¬ Blue x → Smart x
axiom R7 : ∀ x : obj, Green x → Smart x
axiom R8 : ∀ x : obj, Smart x → ¬ Young x

theorem gary_is_young : Young Gary :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Gary is not young

theorem not_gary_is_young : ¬ Young Gary :=
begin
  apply R8,
  apply R7,
  apply R5,
  apply R2 Gary,
  split,
  apply R3,
  exact T4,
  exact T5,
end

-- It can be proven in Lean. So
-- The answer is False