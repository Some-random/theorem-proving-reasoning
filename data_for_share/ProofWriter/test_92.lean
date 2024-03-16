universe u

constant obj : Type u

constant Bob : obj
constant Dave : obj
constant Erin : obj
constant Gary : obj

constant Nice : obj → Prop
constant Round : obj → Prop
constant Young : obj → Prop
constant Big : obj → Prop
constant Red : obj → Prop
constant White : obj → Prop
constant Quiet : obj → Prop

axiom T1 : Nice Bob
axiom T2 : Round Bob
axiom T3 : Young Bob
axiom T4 : Round Dave
axiom T5 : Big Erin
axiom T6 : Red Erin
axiom T7 : Young Gary

axiom R1 : ∀ x : obj, Round x → Nice x
axiom R2 : ∀ x : obj, Nice x ∧ Big x → White x
axiom R3 : ∀ x : obj, Big x ∧ White x → Round x
axiom R4 : ∀ x : obj, Young x → Nice x
axiom R5 : ∀ x : obj, Big x ∧ Red x → Young x
axiom R6 : ∀ x : obj, Nice x → Quiet x
axiom R7 : ∀ x : obj, Quiet x → Big x
axiom R8 : ∀ x : obj, Young x ∧ Quiet x → Red x

theorem gary_is_big : Big Gary :=
begin
  sorry
end


theorem not_big_Gary : ¬ Big Gary :=
begin
  sorry
end
