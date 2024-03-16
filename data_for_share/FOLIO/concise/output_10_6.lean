-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person who eats meat regularly
constant Eats_meat_regularly : Person → Prop
-- Defining the property of a person being vegetarian
constant Vegetarian : Person → Prop
-- Defining the property of a person enjoying eating hamburgers and steaks
constant Enjoys_hamburgers_steaks : Person → Prop
-- Defining the property of a person being conscious of the environment or their health
constant Conscious_environment_health : Person → Prop
-- Defining the property of a person going to fast food places often
constant Goes_to_fast_food : Person → Prop
-- Defining the property of a person having a busy schedule without time to cook
constant Busy_schedule : Person → Prop
-- Jeremy is a specific person
constant Jeremy : Person

-- People eat meat regularly or are vegetarian
axiom A1 : ∀ (p : Person), (Eats_meat_regularly p ∧ ¬ Vegetarian p) ∨ (¬ Eats_meat_regularly p ∧  Vegetarian p)
-- If people eat meat regularly, then they enjoy eating hamburgers and steaks
axiom A2 : ∀ (p : Person), Eats_meat_regularly p → Enjoys_hamburgers_steaks p
-- All people who are vegetarian are conscious of the environment or their health
axiom A3 : ∀ (p : Person), Vegetarian p → Conscious_environment_health p
-- If people are conscious about the environment or their health, then they do not go to fast food places often
axiom A4 : ∀ (p : Person), Conscious_environment_health p → ¬ Goes_to_fast_food p
-- If people have busy schedules without time to cook, then they go to fast food places often
axiom A5 : ∀ (p : Person), Busy_schedule p → Goes_to_fast_food p
-- If Jeremy does not both go to fast food places often and is conscious about the environment or their health, then he goes to fast food places often
axiom A6 : ¬ (Goes_to_fast_food Jeremy ∧ Conscious_environment_health Jeremy) → Goes_to_fast_food Jeremy

-- Formalizing the Questions

-- Question 1
-- Jeremy has a busy schedule without time to cook.
-- Let's first prove the positive case.

theorem not_Jeremy_busy_schedule_or_enjoys_food_implies_not : 
¬ (Busy_schedule Jeremy ∨ Enjoys_hamburgers_steaks Jeremy) → ¬ Busy_schedule Jeremy ∧ ¬ Enjoys_hamburgers_steaks Jeremy :=
begin
    cc,
end

-- The answer is Unknown
