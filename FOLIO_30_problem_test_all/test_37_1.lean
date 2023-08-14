-- Introducing basic types for entities in our universe.
constant Person : Type
constant Household : Type

-- Defining the property of a person who spills a lot of food on their clothing
constant Spills_food : Person → Prop
-- Defining the property of a person who tidies their spaces consistently and enjoys the process of cleaning
constant Tidies_spaces : Person → Prop
-- Defining the property of a person who is a foodie and goes out frequently to find new food restaurants to try
constant Foodie : Person → Prop
-- Defining the property of a person who grew up as an only child with no siblings
constant Only_child : Person → Prop
-- Defining the property of a person who has parents who are very busy with their regular jobs
constant Busy_parents : Person → Prop
-- Defining the property of a household with a high net income
constant High_income : Household → Prop
-- Defining the property of a person belonging to a household
constant Belongs_to : Person → Household → Prop

-- Peter is a specific person
constant Peter : Person

-- If people spill a lot of food on their clothing, then they do not tidy their spaces consistently and enjoy the process of cleaning
axiom A1 : ∀ (p : Person), Spills_food p → ¬ Tidies_spaces p
-- All foodies who go out frequently to find new food restaurants to try are people who spill a lot of food on their clothing
axiom A2 : ∀ (p : Person), Foodie p → Spills_food p
-- If people grew up as only children with no siblings, then they tidy their spaces consistently and enjoy the process of cleaning
axiom A3 : ∀ (p : Person), Only_child p → Tidies_spaces p
-- If people have parents who are very busy with their regular jobs, then they grew up as only children with no siblings
axiom A4 : ∀ (p : Person), Busy_parents p → Only_child p
-- All households with a high net income have people who have parents who are very busy with their regular jobs
axiom A5 : ∀ (p : Person) (h : Household), Belongs_to p h → High_income h → Busy_parents p
-- Peter is either both a person who spills a lot of food on his clothing and grew up as an only child with no siblings, or he is neither a person who spills a lot of food on his clothing nor grew up as an only child with no siblings
axiom A6 : (Spills_food Peter ∧ Only_child Peter) ∨ (¬ Spills_food Peter ∧ ¬ Only_child Peter)

-- Formalizing the Questions

-- Question 1
-- Peter tidies his space consistently and enjoys the process of cleaning.
-- Let's first prove the positive case.

theorem Peter_foodie_or_high_income : Foodie Peter ∨ (∃ h : Household, Belongs_to Peter h ∧ High_income h) :=
begin
  sorry
end


theorem not_Peter_foodie_or_high_income : ¬ (Foodie Peter ∨ (∃ h : Household, Belongs_to Peter h ∧ High_income h)) :=
begin
  sorry
end
