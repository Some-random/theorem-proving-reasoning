universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Fiona : obj

constant Cold : obj → Prop
constant Round : obj → Prop
constant Quiet : obj → Prop
constant Smart : obj → Prop
constant Big : obj → Prop
constant Blue : obj → Prop
constant Green : obj → Prop

axiom T1 : Cold Anne
axiom T2 : Round Anne
axiom T3 : Quiet Bob
axiom T4 : Smart Bob
axiom T5 : Big Dave
axiom T6 : Blue Dave
axiom T7 : Green Dave
axiom T8 : Quiet Dave
axiom T9 : Big Fiona
axiom T10 : Blue Fiona
axiom T11 : ¬ Quiet Fiona

axiom R1 : ∀ x : obj, Quiet x ∧ Blue x → Cold x
axiom R2 : ∀ x : obj, Quiet x → Big x
axiom R3 : ∀ x : obj, Round x ∧ Quiet x → Blue x
axiom R4 : ∀ x : obj, Round x → Blue x
axiom R5 : Cold Anne → Blue Anne
axiom R6 : ∀ x : obj, Quiet x ∧ Blue x → Round x
axiom R7 : ∀ x : obj, Smart x ∧ Green x → Round x
axiom R8 : ∀ x : obj, Big x → Green x

theorem bob_is_cold : Cold Bob :=
begin
  apply R1,
  split,
  exact T3,
  apply R3,
  split,
  apply R7,
  split,
  exact T4,
  apply R8,
  apply R2,
  exact T3,
  exact T3,
end

-- The answer is True