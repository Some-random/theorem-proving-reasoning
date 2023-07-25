universe u

constant obj : Type u

constant Bob : obj
constant Charlie : obj
constant Gary : obj
constant Harry : obj

constant Quiet : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant White : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop
constant Young : obj → Prop

axiom T1 : Quiet Bob
axiom T2 : ¬ Red Bob
axiom T3 : Round Bob
axiom T4 : Red Charlie
axiom T5 : Quiet Gary
axiom T6 : ¬ Round Gary
axiom T7 : ¬ Smart Gary
axiom T8 : White Gary
axiom T9 : Blue Harry
axiom T10 : Quiet Harry

axiom R1 : Blue Harry ∧ White Harry → Red Harry
axiom R2 : ∀ x : obj, Smart x → Young x
axiom R3 : ∀ x : obj, Quiet x ∧ Red x → Round x
axiom R4 : Quiet Charlie → Round Charlie
axiom R5 : ∀ x : obj, Quiet x → White x
axiom R6 : Blue Gary ∧ Smart Gary → Quiet Gary
axiom R7 : ∀ x : obj, Young x ∧ Blue x → Quiet x
axiom R8 : ∀ x : obj, Round x → Smart x

theorem harry_is_young : Young Harry :=
begin
  apply R2,
  apply R8,
  apply R3 Harry,
  split,
  exact T10,
  apply R1,
  split,
  exact T9,
  apply R5,
  exact T10,
end

-- The answer is True