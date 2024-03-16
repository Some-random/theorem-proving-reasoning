universe u

constant obj : Type u

constant Bob : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Furry : obj → Prop
constant Smart : obj → Prop
constant Green : obj → Prop
constant White : obj → Prop
constant Blue : obj → Prop

axiom T1 : Big Bob
axiom T2 : Cold Bob
axiom T3 : Furry Bob
axiom T4 : Smart Bob
axiom T5 : Cold Fiona
axiom T6 : ¬ Green Fiona
axiom T7 : White Fiona
axiom T8 : Smart Gary
axiom T9 : Big Harry
axiom T10 : Cold Harry
axiom T11 : Smart Harry

axiom R1 : ∀ x : obj, Green x → Furry x
axiom R2 : ∀ x : obj, Furry Gary ∧ ¬ Smart Gary → White Gary
axiom R3 : ∀ x : obj, Smart x → Green x
axiom R4 : ∀ x : obj, ¬ Green Bob ∧ ¬ White Bob → Furry Bob
axiom R5 : ∀ x : obj, Big x → Cold x
axiom R6 : ∀ x : obj, Smart x ∧ Furry x → Big x
axiom R7 : ∀ x : obj, White x ∧ ¬ Cold x → ¬ Blue x
axiom R8 : ∀ x : obj, Cold x → ¬ Blue x

theorem gary_is_cold : Cold Gary :=
begin
  sorry
end


theorem not_cold_Gary : ¬ Cold Gary :=
begin
  sorry
end
