universe u

constant obj : Type u

-- Declare constants for our objects
constant Anne : obj -- Corresponds to 'Anne'
constant Charlie : obj -- Corresponds to 'Charlie'
constant Gary : obj -- Corresponds to 'Gary'
constant Harry : obj -- Corresponds to 'Harry'

-- Declare constants for our predicates
constant Green : obj → Prop -- Corresponds to 'is green'
constant Smart : obj → Prop -- Corresponds to 'is smart'
constant Furry : obj → Prop -- Corresponds to 'is furry'
constant Quiet : obj → Prop -- Corresponds to 'is quiet'
constant Round : obj → Prop -- Corresponds to 'is round'
constant Big : obj → Prop -- Corresponds to 'is big'
constant Rough : obj → Prop -- Corresponds to 'is rough'

-- Define our axioms based on the provided statements
axiom T1 : ¬ Green Anne -- Corresponds to 'Anne is not green'
axiom T2 : ¬ Smart Anne -- Corresponds to 'Anne is not smart'
axiom T3 : Furry Charlie -- Corresponds to 'Charlie is furry'
axiom T4 : Quiet Gary -- Corresponds to 'Gary is quiet'
axiom T5 : Round Gary -- Corresponds to 'Gary is round'
axiom T6 : Smart Gary -- Corresponds to 'Gary is smart'
axiom T7 : Smart Harry -- Corresponds to 'Harry is smart'

axiom R1 : Big Harry → ¬ Rough Harry -- Corresponds to 'If Harry is big then Harry is not rough'
axiom R2 : Big Harry ∧ Quiet Harry → ¬ Rough Harry -- Corresponds to 'If Harry is big and Harry is quiet then Harry is not rough'
axiom R3 : ∀ x : obj, Smart x → Round x -- Corresponds to 'Smart things are round'
axiom R4 : ∀ x : obj, Furry x ∧ Quiet x → Big x -- Corresponds to 'If Harry is furry and Harry is quiet then Harry is big'
axiom R5 : ∀ x : obj, Quiet x → Furry x -- Corresponds to 'If something is quiet then it is furry'
axiom R6 : ∀ x : obj, Round x → Quiet x -- Corresponds to 'If Harry is round then Harry is quiet'
axiom R7 : ∀ x : obj, Round x ∧ ¬ Furry x → Rough x -- Corresponds to 'If something is round and not furry then it is rough'
axiom R8 : ∀ x : obj, Round x ∧ ¬ Smart x → Rough x -- Corresponds to 'If something is round and not smart then it is rough'

-- Theorem: Harry is not rough?
theorem harry_is_not_rough : ¬ Rough Harry :=
begin
  -- We apply rule R1, which states that if Harry is big then Harry is not rough.
  apply R1,
  -- We now need to show that Harry is big.
  -- We apply rule R4, which states that if Harry is furry and Harry is quiet then Harry is big.
  apply R4,
  -- We now need to show that Harry is furry and Harry is quiet.
  split,
  -- We apply rule R5, which states that if something is quiet then it is furry.
  -- We know that if Harry is round then Harry is quiet (by rule R6).
  -- We know that smart things are round (by rule R3).
  -- We know that Harry is smart (by axiom T7).
  -- Therefore, Harry is round, and therefore quiet, and therefore furry.
  apply R5,
  apply R6,
  apply R3,
  exact T7,
  -- We apply rule R6, which states that if Harry is round then Harry is quiet.
  -- We know that smart things are round (by rule R3).
  -- We know that Harry is smart (by axiom T7).
  -- Therefore, Harry is round, and therefore quiet.
  apply R6,
  apply R3,
  exact T7,
end

-- The answer is True
