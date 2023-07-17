universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Fiona : obj
constant Harry : obj

constant Cold : obj → Prop
constant Smart : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop

axiom T1 : Cold Charlie
axiom T2 : Smart Charlie
axiom T3 : Smart Dave
axiom T4 : Green Fiona
axiom T5 : Smart Fiona
axiom T6 : Young Fiona
axiom T7 : Red Harry

axiom R1 : Round Charlie ∧ Big Charlie → Smart Charlie
axiom R2 : ∀ x : obj, Smart x ∧ ¬ Red x → Round x
axiom R3 : ∀ x : obj, Red x ∧ Young x → Round x
axiom R4 : ∀ x : obj, Big x → Young x
axiom R5 : ∀ x : obj, Red x → Big x
axiom R6 : ∀ x : obj, Red x → Smart x
axiom R7 : ∀ x : obj, Round x ∧ Red x → Cold x
axiom R8 : ∀ x : obj, Round x ∧ Green x → Cold x
axiom R9 : ∀ x : obj, Red x ∧ Cold x → Green x

theorem harry_is_not_cold : ¬ Cold Harry :=
begin
  sorry
end

-- So let's try to prove the negation of the theorem, which is Harry is cold
theorem harry_is_cold : Cold Harry :=
begin
  apply R7,
  split,
  apply R3,
  split,
  exact T7,
  apply R4,
  apply R5,
  exact T7,
  exact T7,
end

-- It can be proven in Lean. So
-- The answer is False