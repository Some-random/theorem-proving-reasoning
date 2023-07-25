universe u

constant obj : Type u

-- Declare constants for our objects
constant Bob : obj -- Corresponds to 'Bob'
constant Charlie : obj -- Corresponds to 'Charlie'
constant Fiona : obj -- Corresponds to 'Fiona'
constant Gary : obj -- Corresponds to 'Gary'

-- Declare constants for our predicates
constant Big : obj → Prop -- Corresponds to 'is big'
constant Round : obj → Prop -- Corresponds to 'is round'
constant Quiet : obj → Prop -- Corresponds to 'is quiet'
constant Blue : obj → Prop -- Corresponds to 'is blue'
constant Rough : obj → Prop -- Corresponds to 'is rough'
constant Cold : obj → Prop -- Corresponds to 'is cold'
constant Young : obj → Prop -- Corresponds to 'is young'

-- Define our axioms based on the provided statements
axiom T1 : Big Bob -- Corresponds to 'Bob is big'
axiom T2 : Round Bob -- Corresponds to 'Bob is round'
axiom T3 : Quiet Charlie -- Corresponds to 'Charlie is quiet'
axiom T4 : ¬ Big Fiona -- Corresponds to 'Fiona is not big'
axiom T5 : Blue Fiona -- Corresponds to 'Fiona is blue'
axiom T6 : ¬ Big Gary -- Corresponds to 'Gary is not big'
axiom T7 : Rough Gary -- Corresponds to 'Gary is rough'

axiom R1 : ∀ x : obj, Quiet x → Young x -- Corresponds to 'If something is quiet then it is young'
axiom R2 : ∀ x : obj, Rough x → Cold x -- Corresponds to 'All rough things are cold'
axiom R3 : ∀ x : obj, Cold x → Quiet x -- Corresponds to 'If something is cold then it is quiet'
axiom R4 : ∀ x : obj, Quiet x ∧ ¬ Young x → Round x -- Corresponds to 'If something is quiet and not young then it is round'
axiom R5 : ∀ x : obj, Blue x → ¬ Round x -- Corresponds to 'Blue things are not round'
axiom R6 : ∀ x : obj, Rough x ∧ ¬ Young x → Big x -- Corresponds to 'If something is rough and not young then it is big'
axiom R7 : ∀ x : obj, Round x ∧ Cold x → Blue x -- Corresponds to 'If something is round and cold then it is blue'
axiom R8 : ∀ x : obj, Round x ∧ Rough x → Blue x -- Corresponds to 'Round, rough things are blue'
axiom R9 : ∀ x : obj, Young x → Blue x -- Corresponds to 'If something is young then it is blue'

-- Theorem: Gary is not round?
theorem gary_is_not_round : ¬ Round Gary :=
begin
  -- We apply rule R5, which states that if something is blue, then it is not round.
  apply R5,
  -- We now need to show that Gary is blue.
  -- We apply rule R8, which states that if something is round and rough, then it is blue.
  -- We know that Gary is rough (by axiom T7), so we need to show that Gary is round.
  -- However, this is what we are trying to disprove, so we cannot use rule R8.
  -- Instead, we apply rule R7, which states that if something is round and cold, then it is blue.
  -- We know that Gary is cold (by rule R2 and axiom T7), so we need to show that Gary is round.
  -- Again, this is what we are trying to disprove, so we cannot use rule R7.
  -- Finally, we apply rule R9, which states that if something is young, then it is blue.
  -- We apply rule R1, which states that if something is quiet, then it is young.
  -- We know that Gary is quiet (by rule R3 and rule R2 and axiom T7), so Gary is young, and therefore blue.
  apply R9,
  apply R1,
  apply R3,
  apply R2,
  exact T7,
end

-- The answer is True
