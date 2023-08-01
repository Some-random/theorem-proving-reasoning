universe u

constant obj : Type u

constant Charlie : obj
constant Dave : obj
constant Fiona : obj
constant Harry : obj

constant Cold : obj → Prop
constant Smart : obj → Prop
constant Green : obj → Prop
constant Young : obj → Prop
constant Red : obj → Prop
constant Round : obj → Prop
constant Big : obj → Prop

axiom T1 : Cold Charlie
axiom T2 : Smart Charlie
axiom T3 : Smart Dave
axiom T4 : Green Fiona
axiom T5 : Smart Fiona
axiom T6 : Young Fiona
axiom T7 : Red Harry

-- If Charlie is round and Charlie is big then Charlie is smart
axiom R1 : Round Charlie ∧ Big Charlie → Smart Charlie
-- If something is smart and not red then it is round
axiom R2 : ∀ x : obj, Smart x ∧ ¬ Red x → Round x
-- All red, young things are round
axiom R3 : ∀ x : obj, Red x ∧ Young x → Round x
-- Big things are young
axiom R4 : ∀ x : obj, Big x → Young x
-- Red things are big
axiom R5 : ∀ x : obj, Red x → Big x
-- If something is red then it is smart
axiom R6 : ∀ x : obj, Red x → Smart x
-- All round, red things are cold
axiom R7 : ∀ x : obj, Round x ∧ Red x → Cold x
-- All round, green things are cold
axiom R8 : ∀ x : obj, Round x ∧ Green x → Cold x
-- If something is red and cold then it is green
axiom R9 : ∀ x : obj, Red x ∧ Cold x → Green x

theorem harry_is_green : Green Harry :=
begin
  apply R9,
  split,
  exact T7,
  apply R7,
  split,
  apply R3,
  split,
  exact T7,
  apply R4,
  apply R5,
  exact T7,
  exact T7,
end

-- Looks like the theorem can be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Harry is not Green

theorem not_green_Harry : ¬ Green Harry :=
begin
  have H1 : Red Harry := T7,
  have H2 : Big Harry := R5 H1,
  have H3 : Young Harry := R4 H2,
  have H4 : Round Harry := R3 Harry (and.intro H1 H3),
  have H5 : Cold Harry := R7 Harry (and.intro H4 H1),
  have H6 : Green Harry := R9 Harry (and.intro H1 H5),
  sorry,
end

-- The negation of the theorem can not be proven in Lean. So
-- The answer is True
