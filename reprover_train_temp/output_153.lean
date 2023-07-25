universe u

constant obj : Type u

constant Anne : obj
constant Bob : obj
constant Fiona : obj
constant Gary : obj

constant Kind : obj → Prop
constant Smart : obj → Prop
constant White : obj → Prop
constant Green : obj → Prop
constant Red : obj → Prop
constant Nice : obj → Prop
constant Rough : obj → Prop

axiom T1 : ¬ Kind Anne
axiom T2 : Smart Anne
axiom T3 : White Anne
axiom T4 : Green Bob
axiom T5 : Nice Bob
axiom T6 : Nice Fiona
axiom T7 : Red Gary

axiom R1 : ∀ x : obj, Red x ∧ Nice x → Rough x
axiom R2 : Red Fiona ∧ Rough Fiona → Kind Fiona
axiom R3 : ∀ x : obj, Red x → Nice x
axiom R4 : ∀ x : obj, Rough x → Nice x
axiom R5 : Red Gary ∧ Smart Gary → White Gary
axiom R6 : ∀ x : obj, Kind x → Smart x
axiom R7 : ∀ x : obj, Green x ∧ ¬ Nice x → Smart x
axiom R8 : ∀ x : obj, Rough x → Kind x
axiom R9 : ∀ x : obj, Nice x ∧ White x → Kind x

theorem gary_is_white : White Gary :=
begin
  apply R5,
  split,
  exact T7,
  apply R6,
  apply R8,
  apply R1,
  split,
  exact T7,
  apply R3,
  exact T7,
end

-- The answer is True