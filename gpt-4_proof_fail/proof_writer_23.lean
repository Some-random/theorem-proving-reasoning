universe u

constant obj : Type u

-- Declare constants for our objects
constant Anne : obj -- Corresponds to 'Anne'
constant Bob : obj -- Corresponds to 'Bob'
constant Gary : obj -- Corresponds to 'Gary'
constant Harry : obj -- Corresponds to 'Harry'

-- Declare constants for our predicates
constant Rough : obj → Prop -- Corresponds to 'is rough'
constant Big : obj → Prop -- Corresponds to 'is big'
constant Blue : obj → Prop -- Corresponds to 'is blue'
constant Kind : obj → Prop -- Corresponds to 'is kind'
constant Furry : obj → Prop -- Corresponds to 'is furry'
constant Smart : obj → Prop -- Corresponds to 'is smart'
constant White : obj → Prop -- Corresponds to 'is white'

-- Define our axioms based on the provided statements
axiom T1 : Rough Anne -- Corresponds to 'Anne is rough'
axiom T2 : Big Bob -- Corresponds to 'Bob is big'
axiom T3 : Blue Bob -- Corresponds to 'Bob is blue'
axiom T4 : Kind Bob -- Corresponds to 'Bob is kind'
axiom T5 : Rough Bob -- Corresponds to 'Bob is rough'
axiom T6 : Big Gary -- Corresponds to 'Gary is big'
axiom T7 : Blue Gary -- Corresponds to 'Gary is blue'
axiom T8 : Furry Gary -- Corresponds to 'Gary is furry'
axiom T9 : Kind Gary -- Corresponds to 'Gary is kind'
axiom T10 : Rough Gary -- Corresponds to 'Gary is rough'
axiom T11 : Smart Gary -- Corresponds to 'Gary is smart'
axiom T12 : White Gary -- Corresponds to 'Gary is white'
axiom T13 : Blue Harry -- Corresponds to 'Harry is blue'
axiom T14 : Furry Harry -- Corresponds to 'Harry is furry'

axiom R1 : ∀ x : obj, Furry x → Big x -- Corresponds to 'If someone is furry then they are big'
axiom R2 : ∀ x : obj, Big x → Rough x -- Corresponds to 'All big people are rough'
axiom R3 : ∀ x : obj, Kind x ∧ White x → Smart x -- Corresponds to 'All kind, white people are smart'
axiom R4 : ∀ x : obj, Rough x → Kind x -- Corresponds to 'All rough people are kind'
axiom R5 : ∀ x : obj, Kind x → White x -- Corresponds to 'If someone is kind then they are white'
axiom R6 : ∀ x : obj, White x ∧ Smart x → Furry x -- Corresponds to 'White, smart people are furry'
axiom R7 : ∀ x : obj, Furry x ∧ Big x → Smart x -- Corresponds to 'If someone is furry and big then they are smart'
axiom R8 : ∀ x : obj, Smart x → White x -- Corresponds to 'All smart people are white'
axiom R9 : ∀ x : obj, Kind x ∧ Rough x → Blue x -- Corresponds to 'If someone is kind and rough then they are blue'

-- Theorem: Anne is not big?
theorem anne_is_not_big : ¬ Big Anne :=
begin
  -- We apply rule R2, which states that all big people are rough.
  intro H,
  -- We now need to show that Anne is rough.
  have H1 := R2 Anne,
  -- We apply rule R4, which states that all rough people are kind.
  have H2 := R4 Anne,
  -- We apply rule R5, which states that if someone is kind then they are white.
  have H3 := R5 Anne,
  -- We apply rule R6, which states that white, smart people are furry.
  have H4 := R6 Anne,
  -- We apply rule R1, which states that if someone is furry then they are big.
  have H5 := R1 Anne,
  -- We apply rule R7, which states that if someone is furry and big then they are smart.
  have H6 := R7 Anne,
  -- We apply rule R8, which states that all smart people are white.
  have H7 := R8 Anne,
  -- We apply rule R9, which states that if someone is kind and rough then they are blue.
  have H8 := R9 Anne,
  -- We have a contradiction because Anne is both blue and white.
  contradiction,
end

-- The answer is True