-- Introducing basic types for entities in our universe.
constant Person : Type
constant Office : Type

-- Defining specific instances of persons and offices.
constant TiffanyTAlston : Person
constant MarylandHouseOfDelegates : Office

-- Defining properties and relations among the entities.
constant is_legislator : Person → Office → Prop
constant found_guilty_of_stealing_gov_funds : Person → Prop
constant suspended_from_office : Person → Office → Prop

-- Providing axioms based on the information given.

-- Tiffany T. Alston was a legislator in Maryland's House of Delegates from 2011 to 2013.
axiom A1 : is_legislator TiffanyTAlston MarylandHouseOfDelegates

-- Tiffany T. Alston was found guilty of stealing government funds in 2012.
axiom A2 : found_guilty_of_stealing_gov_funds TiffanyTAlston

-- If a legislator is found guilty of stealing government funds, they will be suspended from office.
axiom A3 : ∀ (p : Person) (o : Office), is_legislator p o → found_guilty_of_stealing_gov_funds p → suspended_from_office p o

-- Formalizing the Questions

-- Question 1
-- Tiffany T. Alston was suspended from the Maryland House of Delegates.
-- Let's first prove the positive case.
theorem tiffany_suspended : suspended_from_office TiffanyTAlston MarylandHouseOfDelegates :=
begin
    apply A3,
    exact A1,
    exact A2,
end

-- Let's try the negative case.

theorem not_tiffany_suspended : ¬ suspended_from_office TiffanyTAlston MarylandHouseOfDelegates :=
begin
    sorry,
end

-- The answer is Unknown

-- Question 2
-- Tiffany T. Alston was not suspended from the Maryland House of Delegates.
-- Let's first prove the positive case.
theorem tiffany_not_suspended : ¬ suspended_from_office TiffanyTAlston MarylandHouseOfDelegates :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_tiffany_not_suspended : suspended_from_office TiffanyTAlston MarylandHouseOfDelegates :=
begin
    apply A3,
    exact A1,
    exact A2,
end

-- The answer is False

-- Question 3
-- Tiffany T. Alston went to prison for stealing government funds.
-- Let's first prove the positive case.
theorem tiffany_went_to_prison : found_guilty_of_stealing_gov_funds TiffanyTAlston :=
begin
    exact A2,
end

-- Let's try the negative case.

theorem not_tiffany_went_to_prison : ¬ found_guilty_of_stealing_gov_funds TiffanyTAlston :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown