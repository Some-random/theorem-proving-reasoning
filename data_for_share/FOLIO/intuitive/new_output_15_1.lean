-- Introducing basic types for entities in our universe.
constant Person : Type
constant Season : Type

-- Defining specific instances of persons and seasons.
constant Emma : Person
constant Mia : Person
constant James : Person
constant Summer : Season
constant Spring : Season
constant Fall : Season

-- Defining properties and relations among the entities.
constant favorite_season : Person → Season → Prop
constant wants_long_vacation : Person → Prop

-- Providing axioms based on the information given.

-- All students who want to have a long vacation love summer the most.
axiom A1 : ∀ (p : Person), wants_long_vacation p → favorite_season p Summer

-- Emma's favorite season is summer.
axiom A2 : favorite_season Emma Summer

-- Mia's favorite season is not the same as Emma's.
axiom A3 : ¬ favorite_season Mia Summer

-- James wants to have a long vacation.
axiom A4 : wants_long_vacation James

-- Formalizing the Questions

-- Question 1
-- James's favorite season is summer.
-- Let's first prove the positive case.

theorem james_favorite_summer : favorite_season James Summer :=
begin
    apply A1,
    exact A4,
end

-- Let's try the negative case.

