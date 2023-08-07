-- Introducing constants for entities in our universe.
constant Building : Type
constant BlakeMcFallCompanyBuilding : Building
constant EmmetBuilding : Building
constant Person : Type
constant John : Person

-- Defining properties for buildings and people.
constant is_commercial_warehouse : Building → Prop
constant listed_on_National_Register : Building → Prop
constant added_to_National_Register_in : Building → ℕ → Prop
constant is_in_Portland_Oregon : Building → Prop
constant built_in : Building → ℕ → Prop
constant another_name_for : Building → Building → Prop
constant works_at : Person → Building → Prop

-- Context from the information

-- The Blake McFall Company Building is a commercial warehouse listed on the National Register of Historic Places.
axiom A1 : is_commercial_warehouse BlakeMcFallCompanyBuilding ∧ 
            listed_on_National_Register BlakeMcFallCompanyBuilding
-- The Blake McFall Company Building was added to the National Register of Historic Places in 1990.
axiom A2 : added_to_National_Register_in BlakeMcFallCompanyBuilding 1990
-- The Emmet Building is a five-story building in Portland, Oregon.
-- Note: The fact that it's a five-story building isn't directly modeled as it's not relevant to the question.
axiom A3 : is_in_Portland_Oregon EmmetBuilding
-- The Emmet Building was built in 1915.
axiom A4 : built_in EmmetBuilding 1915
-- The Emmet Building is another name for the Blake McFall Company Building.
axiom A5 : another_name_for EmmetBuilding BlakeMcFallCompanyBuilding
-- John works at the Emmet Building.
axiom A6 : works_at John EmmetBuilding

-- Question: Based on the above information, is the statement "John started his current job in 1990" true, false, or uncertain?

-- Let's first prove the positive case

theorem John_started_in_1990 : started_job_in John 1990 :=
begin
    sorry,
end

-- Looks like the positive case is not provable. Let's try the negative case.

theorem John_started_in_1990_is_false : ¬ started_job_in John 1990 :=
begin
    sorry,
end

-- The negative case cannot be proven in Lean. So
-- Both positive case and negative case cannot be proven in Lean, the answer is Unknown