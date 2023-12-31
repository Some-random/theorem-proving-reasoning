-- Introducing basic types for entities in our universe.
constant Customer : Type

-- Defining the property of a customer who is subscribed to AMC List
constant Subscribed_AMC : Customer → Prop
-- Defining the property of a customer who goes to cinemas every week
constant Goes_Cinema_Weekly : Customer → Prop
-- Defining the property of a customer who is subscribed to HBO service
constant Subscribed_HBO : Customer → Prop
-- Defining the property of a customer who prefers TV series more
constant Prefers_TV_Series : Customer → Prop
-- Defining the property of a customer who watches TV series in cinemas
constant Watches_TV_Cinema : Customer → Prop
-- James is a specific customer
constant James : Customer

-- All customers who are subscribed to AMC List are available to watch 3 movies every week without any additional fees
axiom A1 : ∀ (c : Customer), Subscribed_AMC c → Goes_Cinema_Weekly c
-- Customers either subscribe to AMC service or HBO service
axiom A2 : ∀ (c : Customer), (Subscribed_AMC c ∧ ¬ Subscribed_HBO c) ∨ (¬ Subscribed_AMC c ∧  Subscribed_HBO c)
-- Customers who prefer TV series more and will not watch TV series in cinemas
axiom A3 : ∀ (c : Customer), Prefers_TV_Series c → ¬ Watches_TV_Cinema c
-- All customers who subscribe to HBO services prefer TV series to movies
axiom A4 : ∀ (c : Customer), Subscribed_HBO c → Prefers_TV_Series c
-- James watches TV series in cinemas
axiom A5 : Watches_TV_Cinema James

-- Formalizing the Questions

-- Question 1
-- James goes to cinemas every week.
-- Let's first prove the positive case.
theorem James_Goes_Cinema_Weekly : Goes_Cinema_Weekly James :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_James_Goes_Cinema_Weekly : ¬ Goes_Cinema_Weekly James :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown

-- Question 2
-- James does not go to cinemas every week.
-- Let's first prove the positive case.
theorem James_Not_Goes_Cinema_Weekly : ¬ Goes_Cinema_Weekly James :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_James_Not_Goes_Cinema_Weekly : Goes_Cinema_Weekly James :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown

-- Question 3
-- James goes to cinemas every week or watches 3 movies every week without any additional fees.
-- Let's first prove the positive case.
theorem James_Goes_Cinema_Weekly_Or_Watches_3_Movies : Goes_Cinema_Weekly James ∨ Subscribed_AMC James :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_James_Goes_Cinema_Weekly_Or_Watches_3_Movies : ¬ (Goes_Cinema_Weekly James ∨ Subscribed_AMC James) :=
begin
    introI, 
    exact not_James_Goes_Cinema_Weekly James_Goes_Cinema_Weekly,
    sorry,
end

-- The answer is Unknown

-- Question 4
-- If James does not both go to cinemas every week and subscribe to HBO service, then James is either available to watch 3 movies every week without any additional fees or he prefers TV more.
-- Let's first prove the positive case.
theorem James_Condition_1 : ¬ (Goes_Cinema_Weekly James ∧ Subscribed_HBO James) → (Subscribed_AMC James ∨ Prefers_TV_Series James) :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_James_Condition_1 : (Goes_Cinema_Weekly James ∧ Subscribed_HBO James) ∨ ¬ (Subscribed_AMC James ∨ Prefers_TV_Series James) :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown

-- Question 5
-- If James is available to watch 3 movies every week without any additional fees and he watches TV series in cinemas, then he goes to cinemas every week and prefers TV series more.
-- Let's first prove the positive case.
theorem James_Condition_2 : (Subscribed_AMC James ∧ Watches_TV_Cinema James) → (Goes_Cinema_Weekly James ∧ Prefers_TV_Series James) :=
begin
    sorry, -- Placeholder for proof
end

-- Let's try the negative case.

theorem not_James_Condition_2 : ¬ ((Subscribed_AMC James ∧ Watches_TV_Cinema James) → (Goes_Cinema_Weekly James ∧ Prefers_TV_Series James)) :=
begin
    sorry, -- Placeholder for proof
end

-- The answer is Unknown
