universe u

constant obj : Type u

constant Anne : obj
constant Dave : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Rough : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Green : obj → Prop

axiom T1 : Big Anne
axiom T2 : Rough Anne
axiom T3 : Blue Dave
axiom T4 : Cold Dave
axiom T5 : Red Dave
axiom T6 : Rough Dave
axiom T7 : Round Dave
axiom T8 : Round Gary
axiom T9 : Cold Harry
axiom T10 : Rough Harry

axiom R1 : ∀ x : obj, Round x → Blue x
axiom R2 : ∀ x : obj, Cold x → Blue x
axiom R3 : ∀ x : obj, Blue x ∧ Red x → Round x
axiom R4 : ∀ x : obj, Rough x → Red x
axiom R5 : ∀ x : obj, Big x ∧ Red x → Cold x
axiom R6 : ∀ x : obj, Round x → Green x
axiom R7 : ∀ x : obj, Round x ∧ Cold x → Big x
axiom R8 : ∀ x : obj, Green x → Blue x

theorem dave_is_big : Big Dave :=
begin
  sorry
end


theorem not_big_Dave : ¬ Big Dave :=
begin
  sorry
end
