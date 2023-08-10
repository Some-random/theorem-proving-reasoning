-- Introducing basic types for entities in our universe.
constant Customer : Type
constant James : Customer

-- Defining properties for the customers in our universe.
constant Subscribed_to_AMC : Customer → Prop
constant Subscribed_to_HBO : Customer → Prop
constant Goes_to_cinema : Customer → Prop
constant Prefers_TV_series : Customer → Prop
constant Watches_TV_series_in_cinema : Customer → Prop

-- Context from the information

-- All customers who are subscribed to AMC List are available to watch 3 movies every week without any additional fees.
axiom A1 : ∀ (c : Customer), Subscribed_to_AMC c → Goes_to_cinema c
-- Some customers go to cinemas every week Customers either subscribe to AMC service or HBO service.
axiom A2 : ∀ (c : Customer), Subscribed_to_AMC c ∨ Subscribed_to_HBO c
-- Customers who prefer TV series more and will not watch TV series in cinemas.
axiom A3 : ∀ (c : Customer), Prefers_TV_series c → ¬ Watches_TV_series_in_cinema c
-- All customers who subscribe to HBO services prefer TV series to movies.
axiom A4 : ∀ (c : Customer), Subscribed_to_HBO c → Prefers_TV_series c
-- James watches TV series in cinemas.
axiom A5 : Watches_TV_series_in_cinema James

-- Formalizing the Questions

-- Question 1
-- James goes to cinemas every week.
-- Let's first prove the positive case.
theorem james_goes_to_cinema : Goes_to_cinema James :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_james_goes_to_cinema : ¬ Goes_to_cinema James :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown

-- Question 2
-- James does not go to cinemas every week.
-- Let's first prove the positive case.
theorem james_does_not_go_to_cinema : ¬ Goes_to_cinema James :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_james_does_not_go_to_cinema : Goes_to_cinema James :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown

-- Question 3
-- James goes to cinemas every week or watches 3 movies every week without any additional fees.
-- Let's first prove the positive case.
theorem james_goes_to_cinema_or_watches_movies : Goes_to_cinema James ∨ Subscribed_to_AMC James :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_james_goes_to_cinema_or_watches_movies : ¬ (Goes_to_cinema James ∨ Subscribed_to_AMC James) :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown

-- Question 4
-- If James does not both go to cinemas every week and subscribe to HBO service, then James is either available to watch 3 movies every week without any additional fees or he prefers TV more.
-- Let's first prove the positive case.
theorem james_condition_1 : ¬ (Goes_to_cinema James ∧ Subscribed_to_HBO James) → Subscribed_to_AMC James ∨ Prefers_TV_series James :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_james_condition_1 : ¬ (¬ (Goes_to_cinema James ∧ Subscribed_to_HBO James) → Subscribed_to_AMC James ∨ Prefers_TV_series James) :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown

-- Question 5
-- If James is available to watch 3 movies every week without any additional fees and he watches TV series in cinemas, then he goes to cinemas every week and prefers TV series more.
-- Let's first prove the positive case.
theorem james_condition_2 : (Subscribed_to_AMC James ∧ Watches_TV_series_in_cinema James) → (Goes_to_cinema James ∧ Prefers_TV_series James) :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_james_condition_2 : ¬ ((Subscribed_to_AMC James ∧ Watches_TV_series_in_cinema James) → (Goes_to_cinema James ∧ Prefers_TV_series James)) :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown