universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Dave : obj
constant Erin : obj

constant Big : obj → Prop
constant Nice : obj → Prop
constant Round : obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop
constant Smart : obj → Prop
constant Rough : obj → Prop

axiom T1 : Big Anne
axiom T2 : Nice Anne
axiom T3 : Round Anne
axiom T4 : Nice Bob
axiom T5 : Round Bob
axiom T6 : Blue Dave
axiom T7 : Red Dave
axiom T8 : Smart Dave
axiom T9 : Red Erin
axiom T10 : Round Erin

axiom R1 : ∀ x : obj, Big x ∧ Round x → Smart x
axiom R2 : ∀ x : obj, Rough x → Blue x
axiom R3 : ∀ x : obj, Nice x → Big x
axiom R4 : ∀ x : obj, Nice x → Round x
axiom R5 : ∀ x : obj, Round x ∧ Red x → Rough x
axiom R6 : ∀ x : obj, Round x ∧ Smart x → Red x

theorem dave_is_rough : Rough Dave :=
begin
  sorry
end


theorem not_rough_Dave : ¬ Rough Dave :=
begin
  sorry
end
