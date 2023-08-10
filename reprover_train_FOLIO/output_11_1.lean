-- Introducing basic types for entities in our universe.
constant Person : Type
constant Project : Type
constant Song : Type

-- Defining specific instances of persons, projects, and songs.
constant Sam : Person
constant Sam_Project : Project
constant Perfect : Song

-- Defining properties and relations among the entities.
constant does_project : Person → Project → Prop
constant written_in_Cpp : Project → Prop
constant written_in_Python : Project → Prop
constant uses_Mac : Person → Prop
constant plays_song : Person → Song → Prop

-- Providing axioms based on the information given.

-- Sam is doing a project.
axiom A1 : does_project Sam Sam_Project

-- A project is written either in C++ or in Python.
axiom A2 : ∀ (p : Project), written_in_Cpp p ∨ written_in_Python p

-- If Sam does a project written in Python, he will not use a Mac.
axiom A3 : ∀ (p : Project), does_project Sam p → written_in_Python p → ¬ uses_Mac Sam

-- Sam is using a Mac.
axiom A4 : uses_Mac Sam

-- If Sam uses a Mac, he will play a song.
axiom A5 : ∀ (s : Song), uses_Mac Sam → plays_song Sam s

-- If a song is not "Perfect", Sam will never play it.
axiom A6 : ∀ (s : Song), s ≠ Perfect → ¬ plays_song Sam s

-- Formalizing the Questions

-- Question 1
-- The project Sam is doing is written in C++.
-- Let's first prove the positive case.

theorem sam_project_in_Cpp : written_in_Cpp Sam_Project :=
begin
    have temp := A3 Sam_Project A1,
    have not_written_in_python : ¬ written_in_Python Sam_Project, {
        intro h,
        have h1 := temp h,
        have h3 := A4,
        contradiction,
    },
    cases A2 Sam_Project with h h,
    {
        assumption,
    },
    {
        contradiction,
    },
end

-- Let's try the negative case.

