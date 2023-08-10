-- Introducing basic types for entities in our universe.
constant Building : Type
constant Person : Type

-- Defining specific instances of buildings and persons.
constant BlakeMcFallCompanyBuilding : Building
constant EmmetBuilding : Building
constant John : Person

-- Defining properties and relations among the entities.
constant is_commercial_warehouse : Building → Prop
constant is_five_story_building : Building → Prop
constant is_in_Portland_Oregon : Building → Prop
constant is_on_National_Register_of_Historic_Places : Building → Prop
constant built_in_year : Building → ℕ → Prop
constant works_at : Person → Building → Prop

-- Providing axioms based on the information given.

-- The Blake McFall Company Building is a commercial warehouse listed on the National Register of Historic Places.
axiom A1 : is_commercial_warehouse BlakeMcFallCompanyBuilding
axiom A2 : is_on_National_Register_of_Historic_Places BlakeMcFallCompanyBuilding

-- The Emmet Building is a five-story building in Portland, Oregon.
axiom A3 : is_five_story_building EmmetBuilding
axiom A4 : is_in_Portland_Oregon EmmetBuilding

-- The Emmet Building was built in 1915.
axiom A5 : built_in_year EmmetBuilding 1915

-- The Emmet Building is another name for the Blake McFall Company Building.
axiom A6 : EmmetBuilding = BlakeMcFallCompanyBuilding

-- John works at the Emmet Building.
axiom A7 : works_at John EmmetBuilding

-- Formalizing the Questions

-- Question 1
-- A five-story building is built in 1915.
-- Let's first prove the positive case.
theorem five_story_building_built_in_1915 : ∃ (b : Building), is_five_story_building b ∧ built_in_year b 1915 :=
begin
    existsi EmmetBuilding,
    split,
    exact A3,
    exact A5,
end

-- Let's try the negative case.

theorem not_five_story_building_built_in_1915 : ¬ ∃ (b : Building), is_five_story_building b ∧ built_in_year b 1915 :=
begin
    sorry,
end

-- The answer is Unknown

-- Question 2
-- The Blake McFall Company Building is located in Portland, Oregon.
-- Let's first prove the positive case.
theorem blake_mcfall_building_in_portland : is_in_Portland_Oregon BlakeMcFallCompanyBuilding :=
begin
    rw ← A6,
    exact A4,
end

-- Let's try the negative case.

theorem not_blake_mcfall_building_in_portland : ¬ is_in_Portland_Oregon BlakeMcFallCompanyBuilding :=
begin
    sorry,
end

-- The answer is Unknown

-- Question 3
-- John started his current job in 1990.
-- Let's first prove the positive case.
theorem john_started_job_in_1990 : ∃ (b : Building) (y : ℕ), works_at John b ∧ built_in_year b y ∧ y = 1990 :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_john_started_job_in_1990 : ¬ ∃ (b : Building) (y : ℕ), works_at John b ∧ built_in_year b y ∧ y = 1990 :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown