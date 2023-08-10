-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person working at Meta
constant Works_at_Meta : Person → Prop
-- Defining the property of a person having a high income
constant High_income : Person → Prop
-- Defining the property of a person taking a bus
constant Takes_bus : Person → Prop
-- Defining the property of a person driving to their destination
constant Drives : Person → Prop
-- Defining the property of a person being a student
constant Student : Person → Prop
-- Defining the property of a person having a car
constant Has_car : Person → Prop
-- James is a specific person
constant James : Person

-- Everyone working at Meta has a high income
axiom A1 : ∀ (p : Person), Works_at_Meta p → High_income p
-- If a person has a high income, then he/she will not take a bus to their destination
axiom A2 : ∀ (p : Person), High_income p → ¬ Takes_bus p
-- People will either take a bus or drive to their destination
axiom A3 : ∀ (p : Person), Takes_bus p ∨ Drives p
-- Everyone who has a car will choose to drive to their destination
axiom A4 : ∀ (p : Person), Has_car p → Drives p
-- No students drive to their destination
axiom A5 : ∀ (p : Person), Student p → ¬ Drives p
-- James has a car or works at Meta
axiom A6 : Has_car James ∨ Works_at_Meta James

-- Formalizing the Questions

-- Question 1
-- James has a high income.
-- Let's first prove the positive case.

theorem not_James_condition : ¬ ((Drives James ∨ Student James) → (High_income James ∧ Student James)) :=
begin
    intro h,
    have h1 : Drives James ∨ Student James, {
        cases A6, {
            have Drives_James := A4 James h_1,
            left,
            exact Drives_James,
        }, {
            have High_income_Jame := A1 James h_1,
            have not_Takes_bus_James := A2 James High_income_Jame,
            cases A3 James, {
                contradiction,
            }, {
                left,
                exact h_2,
            }
        }
    },
    have h2 : ¬ (High_income James ∧ Student James), {
        intro h3,
        have h4 : High_income James, from and.elim_left h3,
        have h5 : Student James, from and.elim_right h3,
        have h6 : ¬ Drives James, from A5 James h5,
        have h7 : ¬ Takes_bus James, from A2 James h4,
        have h8 : Takes_bus James ∨ Drives James, from A3 James,
        cases h8, {
            contradiction,
        }, {
            contradiction,
        }
    },
    have High_income_and_Student_James := h h1,
    contradiction
end

-- The answer is Unknown
