universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Gary : obj
constant Harry : obj

constant Nice : obj → Prop
constant Young : obj → Prop
constant Furry : obj → Prop
constant Quiet : obj → Prop
constant Rough : obj → Prop
constant White : obj → Prop
constant Round : obj → Prop

axiom T1 : Nice Anne
axiom T2 : Young Anne
axiom T3 : Furry Bob
axiom T4 : Quiet Bob
axiom T5 : Rough Bob
axiom T6 : ¬ White Bob
axiom T7 : ¬ Young Bob
axiom T8 : Furry Gary
axiom T9 : ¬ Quiet Gary
axiom T10 : Young Gary
axiom T11 : Young Harry

axiom R1 : ∀ x : obj, Quiet x ∧ Young x → Rough x
axiom R2 : Furry Harry → ¬ Rough Harry
axiom R3 : ∀ x : obj, Young x → Furry x
axiom R4 : ∀ x : obj, Young x ∧ Quiet x → Round x
axiom R5 : Round Harry → Nice Harry
axiom R6 : ∀ x : obj, Nice x → White x
axiom R7 : ¬ Rough Harry → Round Harry

theorem harry_is_white : White Harry :=
begin
  apply R6,
  apply R5,
  apply R7,
  apply R2,
  apply R3,
  exact T11,
end

-- The answer is True