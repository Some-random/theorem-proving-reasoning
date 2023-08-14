-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person who works in student jobs on campus
constant Works_in_student_jobs : Person → Prop
-- Defining the property of a person who needs to earn money to help pay for their college tuition
constant Needs_money_for_tuition : Person → Prop
-- Defining the property of a person who orders takeout frequently in college
constant Orders_takeout_frequently : Person → Prop
-- Defining the property of a person who enjoys the dining hall meals and recipes
constant Enjoys_dining_hall_meals : Person → Prop
-- Defining the property of a person who is not a picky eater
constant Not_picky_eater : Person → Prop
-- Defining the property of a person who spends a lot of their time eating and catching up with friends in the campus dining halls
constant Spends_time_eating_with_friends : Person → Prop
-- Mary is a specific person
constant Mary : Person

-- If people work in student jobs on campus, then they need to earn money to help pay for their college tuition
axiom A1 : ∀ (p : Person), Works_in_student_jobs p → Needs_money_for_tuition p
-- If people order takeout frequently in college, then they work in student jobs on campus
axiom A2 : ∀ (p : Person), Orders_takeout_frequently p → Works_in_student_jobs p
-- People either order takeout frequently in college or enjoy the dining hall meals and recipes
axiom A3 : ∀ (p : Person), Orders_takeout_frequently p ∨ Enjoys_dining_hall_meals p
-- If people enjoy the dining hall meals and recipes, then they are not picky eaters
axiom A4 : ∀ (p : Person), Enjoys_dining_hall_meals p → Not_picky_eater p
-- If people enjoy the dining hall meals and recipes, then they spend a lot of their time eating and catching up with friends in the campus dining halls
axiom A5 : ∀ (p : Person), Enjoys_dining_hall_meals p → Spends_time_eating_with_friends p
-- If Mary works in student jobs on campus and needs to earn money to help pay for her college tuition, then Mary is neither picky nor needs to earn money to help pay for her college tuition
axiom A6 : Works_in_student_jobs Mary ∧ Needs_money_for_tuition Mary → Not_picky_eater Mary ∧ ¬ Needs_money_for_tuition Mary

-- Formalizing the Questions

-- Question 1
-- Mary needs to earn money to help pay for her college tuition.
-- Let's first prove the positive case.

theorem Mary_not_picky_or_spends_time_eating : Not_picky_eater Mary ∨ (Not_picky_eater Mary → Spends_time_eating_with_friends Mary) :=
begin
  sorry
end


theorem not_Mary_not_picky_or_spends_time_eating : ¬ (Not_picky_eater Mary ∨ (Not_picky_eater Mary → Spends_time_eating_with_friends Mary)) :=
begin
  sorry
end
