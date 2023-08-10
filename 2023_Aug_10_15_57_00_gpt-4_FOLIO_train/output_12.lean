-- Introducing basic types for entities in our universe.
constant Animal : Type

-- Defining the property of an animal being a rabbit
constant Rabbit : Animal → Prop
-- Defining the property of an animal having fur
constant Has_fur : Animal → Prop
-- Defining the property of an animal being a pet
constant Pet : Animal → Prop

-- All rabbits have fur
axiom A1 : ∀ (a : Animal), Rabbit a → Has_fur a
-- Some pets are rabbits
axiom A2 : ∃ (a : Animal), Pet a ∧ Rabbit a

-- Formalizing the Question

-- Question 1
-- Some pets do not have fur.
-- Let's first prove the positive case.
theorem some_pets_no_fur : ∃ (a : Animal), Pet a ∧ ¬ Has_fur a :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_some_pets_no_fur : ¬ ∃ (a : Animal), Pet a ∧ ¬ Has_fur a :=
begin
    sorry,
end

-- The answer is False