universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Erin : obj
constant Gary : obj

constant Smart : obj → Prop
constant Young : obj → Prop
constant White : obj → Prop
constant Red : obj → Prop
constant Quiet : obj → Prop
constant Furry : obj → Prop
constant Big : obj → Prop

axiom T1 : ¬ Smart Anne
axiom T2 : Young Anne
axiom T3 : White Dave
axiom T4 : Furry Erin
axiom T5 : White Erin
axiom T6 : Smart Gary
axiom T7 : White Gary

axiom R1 : ∀ x : obj, Young x → Red x
axiom R2 : ∀ x : obj, White x ∧ Red x → Quiet x
axiom R3 : ∀ x : obj, Furry x → Quiet x
axiom R4 : ∀ x : obj, White x → Smart x
axiom R5 : ∀ x : obj, Smart x → Big x
axiom R6 : ∀ x : obj, Big x ∧ Red x → Furry x
axiom R7 : ∀ x : obj, Smart x → Furry x
axiom R8 : ∀ x : obj, Quiet x → Young x

theorem dave_is_red : Red Dave :=
begin
  apply R1,
  apply R8,
  apply R2,
  split,
  exact T3,
  apply R1,
  apply R8,
  apply R3,
  apply R7,
  apply R4,
  exact T3,
end

-- The answer is True