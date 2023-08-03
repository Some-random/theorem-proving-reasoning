universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Charlie : obj
constant Dave : obj

constant Red : obj → Prop
constant Big : obj → Prop
constant Green : obj → Prop
constant Furry : obj → Prop
constant Blue : obj → Prop
constant Smart : obj → Prop
constant Quiet : obj → Prop

axiom T1 : Red Anne
axiom T2 : Big Bob
axiom T3 : Green Bob
axiom T4 : Red Bob
axiom T5 : Furry Charlie
axiom T6 : Big Dave
axiom T7 : Blue Dave

axiom R1 : ∀ x : obj, Big x → Smart x
axiom R2 : ∀ x : obj, Blue x → Green x
axiom R3 : ∀ x : obj, Furry x → Big x
axiom R4 : ∀ x : obj, Smart x → Blue x
axiom R5 : ∀ x : obj, Green x → Furry x
axiom R6 : ∀ x : obj, Green x → Smart x
axiom R7 : ∀ x : obj, Green x → Quiet x

theorem charlie_is_red : Red Charlie :=
begin
  sorry
end


theorem not_red_Charlie : ¬ Red Charlie :=
begin
  sorry
end
