-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person who owns a large desktop monitor at home
constant Owns_large_desktop_monitor : Person → Prop
-- Defining the property of a person who works regularly and often at home
constant Works_regularly_at_home : Person → Prop
-- Defining the property of a person who has a fully stocked and impressive home office
constant Has_impressive_home_office : Person → Prop
-- Defining the property of a person who spends their free time tidying and organizing the spaces in their home
constant Organizes_home : Person → Prop
-- Defining the property of a person who visits the office supply store regularly
constant Visits_office_supply_store : Person → Prop
-- Defining the property of a person who goes to bed late and wakes up every day after noon
constant Late_bedtime : Person → Prop
-- Remy is a specific person
constant Remy : Person

-- If people own a large desktop monitor at their home, then they work regularly and often at home
axiom A1 : ∀ (p : Person), Owns_large_desktop_monitor p → Works_regularly_at_home p
-- All people who have a fully stocked and impressive home office are people who own a large desktop monitor at their home
axiom A2 : ∀ (p : Person), Has_impressive_home_office p → Owns_large_desktop_monitor p
-- All people who work regularly and often at home spend their free time tidying and organizing the spaces in their homes
axiom A3 : ∀ (p : Person), Works_regularly_at_home p → Organizes_home p
-- All people who work regularly and often at home visit the office supply store regularly
axiom A4 : ∀ (p : Person), Works_regularly_at_home p → Visits_office_supply_store p
-- If people spend their free time tidying and organizing the spaces in their home, then they do not go to bed late and wake up every day after noon
axiom A5 : ∀ (p : Person), Organizes_home p → ¬ Late_bedtime p
-- Remy either both goes to bed late and wakes up every day after noon and spends their free time tidying and organizing the spaces in their home, or they do not go to bed late and wake up every day after noon nor spend their free time tidying and organizing the spaces in their home
axiom A6 : (Late_bedtime Remy ∧ Organizes_home Remy) ∨ (¬ Late_bedtime Remy ∧ ¬ Organizes_home Remy)

-- Formalizing the Questions

-- Question 1
-- Remy visits the office supply store regularly.
-- Let's first prove the positive case.

theorem Remy_visits_office_supply_store : Visits_office_supply_store Remy :=
begin
  sorry
end


theorem not_Remy_visits_office_supply_store : ¬ Visits_office_supply_store Remy :=
begin
  sorry
end
