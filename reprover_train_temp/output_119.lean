universe u

constant obj : Type u

constant Anne : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Round : obj → Prop
constant White : obj → Prop
constant Cold : obj → Prop
constant Smart : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop

axiom T1 : Round Anne
axiom T2 : White Anne
axiom T3 : Cold Fiona
axiom T4 : Round Fiona
axiom T5 : Smart Fiona
axiom T6 : Smart Gary
axiom T7 : White Gary
axiom T8 : Big Harry
axiom T9 : Cold Harry
axiom T10 : Round Harry

axiom R1 : ∀ x : obj, Cold x → Young x
axiom R2 : ∀ x : obj, Round x → Green x
axiom R3 : ∀ x : obj, Smart x → Big x
axiom R4 : ∀ x : obj, Cold x ∧ Green x → White x
axiom R5 : ∀ x : obj, Big x → White x
axiom R6 : ∀ x : obj, Green x → Cold x
axiom R7 : ∀ x : obj, Smart x → Big x
axiom R8 : ∀ x : obj, Big x ∧ White x → Round x

theorem gary_is_not_young : ¬ Young Gary :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Gary is young

theorem gary_is_young : Young Gary :=
begin
  apply R1,
  apply R6,
  apply R2,
  apply R8,
  split,
  apply R3,
  exact T6,
  exact T7,
end

-- It can be proven in Lean. So
-- The answer is False