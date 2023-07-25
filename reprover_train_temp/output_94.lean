universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Dave : obj
constant Fiona : obj

constant Kind : obj → Prop
constant Quiet : obj → Prop
constant Young : obj → Prop
constant Green : obj → Prop
constant Blue : obj → Prop
constant Round : obj → Prop
constant Rough : obj → Prop

axiom T1 : Kind Bob
axiom T2 : Quiet Bob
axiom T3 : Young Bob
axiom T4 : ¬ Green Charlie
axiom T5 : Round Dave
axiom T6 : Rough Fiona
axiom T7 : Round Fiona

axiom R1 : ∀ x : obj, Kind x ∧ Blue x → Quiet x
axiom R2 : ∀ x : obj, Rough x ∧ Round x → Quiet x
axiom R3 : ∀ x : obj, Round x → Rough x
axiom R4 : ∀ x : obj, Blue x → Green x
axiom R5 : ∀ x : obj, Rough x ∧ Kind x → Green x
axiom R6 : ∀ x : obj, Quiet x → Blue x
axiom R7 : ∀ x : obj, Green x ∧ Round x → Young x
axiom R8 : ∀ x : obj, Kind x → Round x
axiom R9 : ∀ x : obj, Rough x → Blue x

theorem dave_is_young : Young Dave :=
begin
  apply R7,
  split,
  apply R4,
  apply R6,
  apply R2,
  split,
  apply R3,
  exact T5,
  exact T5,
  exact T5,
end

-- The answer is True