universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Gary : obj

constant Quiet : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant Cold : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop

axiom T1 : Quiet Anne
axiom T2 : Big Bob
axiom T3 : Red Bob
axiom T4 : Big Charlie
axiom T5 : Red Charlie
axiom T6 : ¬ Big Gary
axiom T7 : Red Gary

axiom R1 : ∀ x : obj, Quiet x → Cold x
axiom R2 : ∀ x : obj, Cold x → ¬ Round x
axiom R3 : ∀ x : obj, Cold x ∧ ¬ Round x → White x
axiom R4 : ∀ x : obj, Round x ∧ Green x → White x
axiom R5 : ∀ x : obj, White x → ¬ Big x
axiom R6 : ∀ x : obj, White x → Green x
axiom R7 : ∀ x : obj, Green x ∧ Quiet x → ¬ Red x
axiom R8 : ∀ x : obj, Cold x ∧ Big x → Red x

theorem anne_is_red : Red Anne :=
begin
  apply R8,
  split,
  apply R1,
  exact T1,
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Anne is not red

theorem not_anne_is_red : ¬ Red Anne :=
begin
  apply R7,
  split,
  apply R6,
  apply R3,
  split,
  apply R1,
  exact T1,
  apply R2,
  apply R1,
  exact T1,
  exact T1,
end

-- It can be proven in Lean. So
-- The answer is False