-- Introducing basic types for entities in our universe.
constant Thing : Type

-- Defining properties for the things in our universe.
constant can_transport_multiple_passengers : Thing → Prop
constant is_empty : Thing → Prop
constant is_airline : Thing → Prop
constant is_plane : Thing → Prop
constant is_Boeing_707 : Thing → Prop

-- Defining specific instances of things.
constant Greyhound : Thing

-- Providing axioms based on the information given.

-- If something can transport multiple passengers, then they are not empty.
axiom A1 : ∀ (t : Thing), can_transport_multiple_passengers t → ¬ is_empty t
-- All airlines can transport multiple passengers.
axiom A2 : ∀ (t : Thing), is_airline t → can_transport_multiple_passengers t
-- All planes are empty.
axiom A3 : ∀ (t : Thing), is_plane t → is_empty t
-- All Boeing 707s are planes.
axiom A4 : ∀ (t : Thing), is_Boeing_707 t → is_plane t
-- If Greyhound is not an airline, then there are no Greyhound planes.
axiom A5 : ¬ is_airline Greyhound → ¬ is_plane Greyhound

-- Formalizing the Questions

-- Question 1
-- Greyhound is an airline.
-- Let's first prove the positive case.

theorem not_Greyhound_is_Boeing_707 : ¬ is_Boeing_707 Greyhound :=
begin
  sorry
end
