universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Fiona : obj

constant Blue : obj → Prop
constant Red : obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Cold : obj → Prop
constant Young : obj → Prop
constant Smart : obj → Prop

axiom T1 : Blue Anne
axiom T2 : Red Anne
axiom T3 : Kind Charlie
axiom T4 : Round Charlie
axiom T5 : Cold Erin
axiom T6 : Kind Erin
axiom T7 : Kind Fiona

axiom R1 : ∀ x : obj, Red x ∧ Young x → Blue x
axiom R2 : Smart Anne → Cold Anne
axiom R3 : ∀ x : obj, Young x → Smart x
axiom R4 : ∀ x : obj, Blue x → Round x
axiom R5 : Round Fiona → Kind Fiona
axiom R6 : Cold Anne → Kind Anne
axiom R7 : ∀ x : obj, Young x ∧ Blue x → Kind x
axiom R8 : ∀ x : obj, Round x → Young x

theorem anne_is_not_kind : ¬ Kind Anne :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Anne is kind

theorem anne_is_kind : Kind Anne :=
begin
  apply R6,
  apply R2,
  apply R3,
  apply R8,
  apply R4,
  exact T1,
end

-- It can be proven in Lean. So
-- The answer is False