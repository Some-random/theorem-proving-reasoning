universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Erin : obj

constant Big : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Smart : obj → Prop

axiom T1 : Big Anne
axiom T2 : Blue Anne
axiom T3 : Cold Anne
axiom T4 : Furry Anne
axiom T5 : Red Anne
axiom T6 : Round Anne
axiom T7 : Smart Anne
axiom T8 : Cold Bob
axiom T9 : Smart Bob
axiom T10 : Furry Dave
axiom T11 : Blue Erin
axiom T12 : Cold Erin
axiom T13 : Round Erin
axiom T14 : Smart Erin

axiom R1 : ∀ x : obj, Smart x ∧ Red x → Blue x
axiom R2 : ∀ x : obj, Cold x ∧ Big x → Red x
axiom R3 : Smart Dave ∧ Red Dave → Big Dave
axiom R4 : Round Bob ∧ Furry Bob → Big Bob
axiom R5 : ∀ x : obj, Round x → Furry x
axiom R6 : ∀ x : obj, Big x → Red x
axiom R7 : ∀ x : obj, Smart x → Round x
axiom R8 : ∀ x : obj, Big x → Round x
axiom R9 : ∀ x : obj, Furry x → Big x

theorem bob_is_blue : Blue Bob :=
begin
  apply R1,
  split,
  exact T9,
  apply R6,
  apply R9,
  apply R5,
  apply R7,
  exact T9,
end

-- The answer is True