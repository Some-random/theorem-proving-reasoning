universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Fiona : obj
constant Harry : obj

constant Nice : obj → Prop
constant Smart : obj → Prop
constant Green : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop
constant Kind : obj → Prop
constant Blue : obj → Prop

axiom T1 : Nice Anne
axiom T2 : Smart Anne
axiom T3 : Green Charlie
axiom T4 : Nice Fiona
axiom T5 : Round Fiona
axiom T6 : White Fiona
axiom T7 : Blue Harry

axiom R1 : ∀ x : obj, White x ∧ Kind x → Nice x
axiom R2 : ∀ x : obj, Smart x ∧ Kind x → Green x
axiom R3 : ∀ x : obj, Round x ∧ Kind x → White x
axiom R4 : ∀ x : obj, Smart x → Kind x
axiom R5 : ∀ x : obj, Nice x ∧ White x → Kind x
axiom R6 : ∀ x : obj, Round x → Kind x
axiom R7 : ∀ x : obj, Nice x → Smart x
axiom R8 : ∀ x : obj, White x → Round x
axiom R9 : Green Charlie → White Charlie

theorem charlie_is_smart : Smart Charlie :=
begin
  apply R7,
  apply R1,
  split,
  apply R9,
  exact T3,
  apply R6,
  apply R8,
  apply R9,
  exact T3,
end

-- The answer is True