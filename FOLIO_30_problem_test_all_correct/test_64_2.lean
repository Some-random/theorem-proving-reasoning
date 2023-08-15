-- Introducing basic types for entities in our universe.
constant Person : Type
constant Airport : Type

-- Defining specific instances of persons and airports.
constant Susan : Person
constant John : Person
constant LGA : Airport

-- Defining properties and relations among the entities.
constant flies_to : Person → Airport → Prop
constant flies_from : Person → Airport → Prop

-- Providing axioms based on the information given.

-- Susan flies to LGA airport.
axiom A1 : flies_to Susan LGA

-- The departure and arrival can not be the same airport.
axiom A2 : ∀ (p : Person) (a : Airport), ¬ (flies_to p a ∧ flies_from p a)

-- John flies from LGA airport.
axiom A3 : flies_from John LGA

-- Formalizing the Questions

-- Question 1
-- Susan flies from LGA airport.
-- Let's first prove the positive case.

theorem not_susan_flies_from_LGA : ¬ flies_from Susan LGA :=
begin
  sorry
end
