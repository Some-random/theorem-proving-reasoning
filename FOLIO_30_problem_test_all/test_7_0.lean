-- Introducing basic types for entities in our universe.
constant City : Type
constant Country : Type
constant University : Type

-- Defining specific instances of cities and countries.
constant Beijing : City
constant China : Country

-- Defining properties and relations among the entities.
constant is_capital_of : City → Country → Prop
constant is_most_populous_national_capital : City → Prop
constant is_located_in_northern : City → Country → Prop
constant has_hosted_summer_olympics : City → Prop
constant has_hosted_winter_olympics : City → Prop
constant has_hosted_summer_paralympics : City → Prop
constant has_hosted_winter_paralympics : City → Prop
constant has_universities_ranked_best : City → Prop

-- Providing axioms based on the information given.

-- Beijing is the capital of the People's Republic of China.
axiom A1 : is_capital_of Beijing China
-- Beijing is the world's most populous national capital city.
axiom A2 : is_most_populous_national_capital Beijing
-- Beijing is located in Northern China.
axiom A3 : is_located_in_northern Beijing China
-- Beijing hosted the 2008 Summer Olympics and 2008 Summer Paralympics Games.
axiom A4 : has_hosted_summer_olympics Beijing
axiom A5 : has_hosted_summer_paralympics Beijing
-- Beijing has hosted both the Summer and Winter Olympics, along with the Summer and Winter Paralympics
axiom A6 : has_hosted_winter_olympics Beijing
axiom A7 : has_hosted_winter_paralympics Beijing
-- Many of Beijing's 91 universities consistently rank among the best in the Asia-Pacific and the world.
axiom A8 : has_universities_ranked_best Beijing

-- Formalizing the Questions

-- Question 1
-- Beijing has hosted both the 2008 Summer Olympics and a winter olympics.
-- Let's first prove the positive case.

theorem beijing_hosted_olympics : has_hosted_summer_olympics Beijing ∧ has_hosted_winter_olympics Beijing :=
begin
  sorry
end


theorem not_beijing_hosted_olympics : ¬ (has_hosted_summer_olympics Beijing ∧ has_hosted_winter_olympics Beijing) :=
begin
  sorry
end
