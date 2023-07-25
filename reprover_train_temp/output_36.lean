universe u

constant obj : Type u

constant Bob : obj
constant Fiona : obj
constant Gary : obj
constant Harry : obj

constant Big : obj → Prop
constant Blue : obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop
constant Furry : obj → Prop
constant Nice : obj → Prop
constant Kind : obj → Prop

axiom T1 : Big Bob
axiom T2 : Blue Bob
axiom T3 : Cold Bob
axiom T4 : Red Bob
axiom T5 : Big Fiona
axiom T6 : Furry Fiona
axiom T7 : Nice Gary
axiom T8 : Big Harry
axiom T9 : Furry Harry
axiom T10 : Nice Harry

axiom R1 : ∀ x : obj, Nice x → Big x
axiom R2 : ∀ x : obj, Blue x → Kind x
axiom R3 : ∀ x : obj, Cold x → Kind x
axiom R4 : Red Gary ∧ Blue Gary → Furry Gary
axiom R5 : ∀ x : obj, Furry x → Kind x
axiom R6 : ∀ x : obj, Kind x → Red x
axiom R7 : ∀ x : obj, Nice x ∧ Big x → Blue x
axiom R8 : Cold Gary ∧ Red Gary → Furry Gary
axiom R9 : ∀ x : obj, Blue x ∧ Cold x → Kind x

theorem gary_is_not_furry : ¬ Furry Gary :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Gary is furry

theorem gary_is_furry : Furry Gary :=
begin
  apply R4,
  split,
  apply R6,
  apply R2,
  apply R7 Gary,
  split,
  exact T7,
  apply R1,
  exact T7,
  apply R7 Gary,
  split,
  exact T7,
  apply R1,
  exact T7,
end

-- It can be proven in Lean. So
-- The answer is False