universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Fiona : obj

constant Quiet : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop

axiom T1 : Quiet Anne
axiom T2 : Smart Anne
axiom T3 : White Anne
axiom T4 : ¬ Young Anne
axiom T5 : Young Bob
axiom T6 : ¬ Young Erin
axiom T7 : Big Fiona
axiom T8 : Quiet Fiona
axiom T9 : Red Fiona
axiom T10 : Smart Fiona

axiom R1 : ∀ x : obj, White x → Quiet x
axiom R2 : ∀ x : obj, Young x → Big x
axiom R3 : ∀ x : obj, Young x ∧ Smart x → Round x
axiom R4 : ∀ x : obj, Smart x ∧ Quiet x → Round x
axiom R5 : ∀ x : obj, Quiet x ∧ Big x → Red x
axiom R6 : Big Anne ∧ Young Anne → Round Anne
axiom R7 : ∀ x : obj, Big x → Smart x
axiom R8 : ∀ x : obj, Smart x → White x

theorem bob_is_red : Red Bob :=
begin
  apply R5,
  split,
  apply R1,
  apply R8,
  apply R7,
  apply R2,
  exact T5,
  apply R2,
  exact T5,
end

-- The answer is True