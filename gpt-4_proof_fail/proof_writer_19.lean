universe u

constant obj : Type u

-- Declare constants for our objects
constant Bob : obj -- Corresponds to 'Bob'
constant Erin : obj -- Corresponds to 'Erin'
constant Gary : obj -- Corresponds to 'Gary'
constant Harry : obj -- Corresponds to 'Harry'

-- Declare constants for our predicates
constant Furry : obj → Prop -- Corresponds to 'is furry'
constant Quiet : obj → Prop -- Corresponds to 'is quiet'
constant Blue : obj → Prop -- Corresponds to 'is blue'
constant Round : obj → Prop -- Corresponds to 'is round'
constant Kind : obj → Prop -- Corresponds to 'is kind'
constant Rough : obj → Prop -- Corresponds to 'is rough'
constant Cold : obj → Prop -- Corresponds to 'is cold'

-- Define our axioms based on the provided statements
axiom T1 : Furry Bob -- Corresponds to 'Bob is furry'
axiom T2 : Quiet Bob -- Corresponds to 'Bob is quiet'
axiom T3 : Blue Erin -- Corresponds to 'Erin is blue'
axiom T4 : Furry Erin -- Corresponds to 'Erin is furry'
axiom T5 : Round Erin -- Corresponds to 'Erin is round'
axiom T6 : Kind Gary -- Corresponds to 'Gary is kind'
axiom T7 : Quiet Gary -- Corresponds to 'Gary is quiet'
axiom T8 : Rough Gary -- Corresponds to 'Gary is rough'
axiom T9 : Round Gary -- Corresponds to 'Gary is round'
axiom T10 : Blue Harry -- Corresponds to 'Harry is blue'
axiom T11 : ¬ Furry Harry -- Corresponds to 'Harry is not furry'
axiom T12 : Kind Harry -- Corresponds to 'Harry is kind'

axiom R1 : Rough Erin → Furry Erin -- Corresponds to 'If Erin is rough then Erin is furry'
axiom R2 : ∀ x : obj, Round x ∧ Blue x → Rough x -- Corresponds to 'If someone is round and blue then they are rough'
axiom R3 : ∀ x : obj, Quiet x ∧ Furry x → Round x -- Corresponds to 'Quiet, furry people are round'
axiom R4 : Quiet Bob ∧ Round Bob → Kind Bob -- Corresponds to 'If Bob is quiet and Bob is round then Bob is kind'
axiom R5 : ∀ x : obj, Kind x → Cold x -- Corresponds to 'If someone is kind then they are cold'
axiom R6 : ∀ x : obj, Furry x ∧ Cold x → Blue x -- Corresponds to 'All furry, cold people are blue'

-- Theorem: Bob is not rough?
theorem bob_is_not_rough : ¬ Rough Bob :=
begin
  -- We will prove this by contradiction. Assume that Bob is rough.
  by_contradiction h,
  -- If Bob is rough, then by rule R2, since Bob is round (by rule R3, since Bob is quiet and furry), Bob is blue.
  have h1 : Blue Bob := R6 Bob (and.intro T1 (R5 Bob (R4 (and.intro T2 (R3 Bob (and.intro T2 T1)))))),
  -- But if Bob is blue, then by rule R2, since Bob is round (by rule R3, since Bob is quiet and furry), Bob is rough.
  have h2 : Rough Bob := R2 Bob (and.intro (R3 Bob (and.intro T2 T1)) h1),
  -- This is a contradiction, so our assumption that Bob is rough must be false.
  contradiction,
end

-- The answer is True