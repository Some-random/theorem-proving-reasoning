universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Erin : obj
constant Harry : obj

constant Big : obj → Prop
constant Furry : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop
constant White : obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop

axiom T1 : Big Anne
axiom T2 : Big Bob
axiom T3 : Furry Bob
axiom T4 : Nice Bob
axiom T5 : Rough Bob
axiom T6 : White Bob
axiom T7 : Young Bob
axiom T8 : Blue Erin
axiom T9 : Nice Harry
axiom T10 : Rough Harry
axiom T11 : White Harry
axiom T12 : Young Harry

axiom R1 : ∀ x : obj, Big x → Furry x
axiom R2 : ∀ x : obj, Furry Erin ∧ White Erin → Blue Erin
axiom R3 : ∀ x : obj, Furry x ∧ Big x → Nice x
axiom R4 : ∀ x : obj, Big x → Furry x
axiom R5 : ∀ x : obj, White x ∧ Nice x → Rough x
axiom R6 : ∀ x : obj, Furry x ∧ Nice x → Young x
axiom R7 : ∀ x : obj, Furry x ∧ Young x → White x
axiom R8 : ∀ x : obj, Big x ∧ Blue x → White x
axiom R9 : ∀ x : obj, Young x ∧ Blue x → Nice x

theorem harry_is_big : Big Harry :=
begin
  sorry
end


theorem not_big_Harry : ¬ Big Harry :=
begin
  sorry
end
