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

theorem James_drives_or_student_2 : Drives James ∨ Student James :=
begin
    cases A6, {
        have Drives_James := A4 James h,
        left,
        exact Drives_James,
    }, {
        have High_income_Jame := A1 James h,
        have not_Takes_bus_James := A2 James High_income_Jame,
        cases A3 James, {
            contradiction,
        }, {
            left,
            exact h_1,
        }
    }
end

-- Let's try the negative case.

