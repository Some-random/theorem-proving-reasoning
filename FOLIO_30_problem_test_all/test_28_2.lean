-- Introducing basic types for entities in our universe.
constant Restaurant : Type
constant Subway : Restaurant

-- Defining properties and relations among the entities.
constant is_listed_in_Yelp_recommendations : Restaurant → Prop
constant receives_many_negative_reviews : Restaurant → Prop
constant has_rating_greater_than_9 : Restaurant → Prop
constant does_not_provide_take_out_service : Restaurant → Prop
constant is_popular_among_local_residents : Restaurant → Prop

-- Providing axioms based on the information given.

-- If the restaurant is listed in Yelp’s recommendations, then the restaurant does not receive many negative reviews.
axiom A1 : ∀ (r : Restaurant), is_listed_in_Yelp_recommendations r → ¬ receives_many_negative_reviews r
-- All restaurants with a rating greater than 9 are listed in Yelp’s recommendations.
axiom A2 : ∀ (r : Restaurant), has_rating_greater_than_9 r → is_listed_in_Yelp_recommendations r
-- Some restaurants that do not provide take-out service receive many negative reviews.
axiom A3 : ∃ (r : Restaurant), does_not_provide_take_out_service r ∧ receives_many_negative_reviews r
-- All restaurants that are popular among local residents have ratings greater than 9.
axiom A4 : ∀ (r : Restaurant), is_popular_among_local_residents r → has_rating_greater_than_9 r
-- Subway has a rating greater than 9 or is popular among local residents.
axiom A5 : has_rating_greater_than_9 Subway ∨ is_popular_among_local_residents Subway

-- Formalizing the Questions

-- Question 1
-- If Subway provides take-out service and receives many negative reviews, then its rating is greater than 9 and it does not provide take-out service.
-- Let's first prove the positive case.

theorem subway_no_take_out : does_not_provide_take_out_service Subway :=
begin
  sorry
end


theorem not_subway_no_take_out : ¬ does_not_provide_take_out_service Subway :=
begin
  sorry
end
