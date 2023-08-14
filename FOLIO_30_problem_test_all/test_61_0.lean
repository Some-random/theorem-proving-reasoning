-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person who eats salads regularly
constant Eats_salads_regularly : Person → Prop
-- Defining the property of a person who is health conscious
constant Health_conscious : Person → Prop
-- Defining the property of a person who grew up in health-conscious childhood homes
constant Grew_up_health_conscious : Person → Prop
-- Defining the property of a person who fulfills their nutritional daily intakes
constant Fulfills_nutrition : Person → Prop
-- Defining the property of a person who has good relationships with their parents
constant Good_relationship_parents : Person → Prop
-- Defining the property of a person who visits the gym at least once a day
constant Visits_gym_daily : Person → Prop
-- Taylor is a specific person
constant Taylor : Person

-- All people who eat salads regularly are very conscious about their health and eating habits
axiom A1 : ∀ (p : Person), Eats_salads_regularly p → Health_conscious p
-- All people who grew up in health-conscious childhood homes eat salads regularly
axiom A2 : ∀ (p : Person), Grew_up_health_conscious p → Eats_salads_regularly p
-- All people who fulfill their nutritional daily intakes grew up in health-conscious childhood homes
axiom A3 : ∀ (p : Person), Fulfills_nutrition p → Grew_up_health_conscious p
-- If people have good relationships with their parents, then they fulfill their nutritional daily intakes
axiom A4 : ∀ (p : Person), Good_relationship_parents p → Fulfills_nutrition p
-- If people have good relationships with their parents, then they do not eat salads regularly
axiom A5 : ∀ (p : Person), Good_relationship_parents p → ¬ Eats_salads_regularly p
-- If people visit the gym at least once a day, then they always fulfill their daily nutritional intakes
axiom A6 : ∀ (p : Person), Visits_gym_daily p → Fulfills_nutrition p
-- It is either both true that Taylor grew up in a health-conscious childhood home and she has a good relationship with her parents, or it is true that Taylor neither grew up in a health-conscious childhood home nor has a good relationship with her parents
axiom A7 : (Grew_up_health_conscious Taylor ∧ Good_relationship_parents Taylor) ∨ (¬ Grew_up_health_conscious Taylor ∧ ¬ Good_relationship_parents Taylor)

-- Formalizing the Questions

-- Question 1
-- Taylor eats salads regularly.
-- Let's first prove the positive case.

theorem Taylor_eats_salads : Eats_salads_regularly Taylor :=
begin
  sorry
end


theorem not_Taylor_eats_salads : ¬ Eats_salads_regularly Taylor :=
begin
  sorry
end
