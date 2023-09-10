-- Introducing basic types for entities in our universe.
constant Employee : Type
constant James : Employee

-- Defining properties for the employees in our universe.
constant schedules_meeting : Employee → Prop
constant appears_in_company : Employee → Prop
constant has_lunch_in_company : Employee → Prop
constant has_lunch_at_home : Employee → Prop
constant works_remotely : Employee → Prop
constant is_in_other_countries : Employee → Prop
constant is_manager : Employee → Prop

-- Context from the information

-- All employees who schedule a meeting with their customers will appear in the company today.
axiom A1 : ∀ (e : Employee), schedules_meeting e → appears_in_company e
-- Everyone who has lunch in the company schedules meetings with their customers.
axiom A2 : ∀ (e : Employee), has_lunch_in_company e → schedules_meeting e
-- Employees will either have lunch in the company or have lunch at home.
axiom A3 : ∀ (e : Employee), has_lunch_in_company e ∨ has_lunch_at_home e
-- If an employee has lunch at home, then he/she is working remotely from home.
axiom A4 : ∀ (e : Employee), has_lunch_at_home e → works_remotely e
-- All employees who are in other countries work remotely from home.
axiom A5 : ∀ (e : Employee), is_in_other_countries e → works_remotely e
-- No managers work remotely from home.
axiom A6 : ∀ (e : Employee), is_manager e → ¬ works_remotely e
-- James is either a manager and appears in the company today or neither a manager nor appears in the company today.
axiom A7 : (is_manager James ∧ appears_in_company James) ∨ (¬ is_manager James ∧ ¬ appears_in_company James)

-- Formalizing the Questions

-- Question 1
-- James has lunch in the company.
-- Let's first prove the positive case.

theorem james_condition : (is_manager James ∨ is_in_other_countries James) → (has_lunch_at_home James ∧ works_remotely James) ∨ (¬ has_lunch_at_home James ∧ ¬ works_remotely James) :=
begin
    intro h,
    cases h, {
        right,
        have h1 : ¬ works_remotely James, {
            apply A6,
            exact h,
        },
        have h2 : ¬ has_lunch_at_home James, {
            intro h3,
            have h4 := A4 James h3,
            contradiction,
        },
        split,
        exact h2,
        exact h1,
    }, {
        left,
        have h1 : works_remotely James, {
            apply A5,
            exact h,
        },
        have h2 : ¬ is_manager James, {
            intro h3,
            have h4 := A6 James h3,
            contradiction,
        },
        cases A7, {
            cases h_1,
            contradiction,
        }, {
            cases h_1,
            have h3 : ¬ schedules_meeting James, {
                intro h4,
                have h5 := A1 James h4,
                contradiction,
            },
            have h4 : ¬ has_lunch_in_company James, {
                intro h5,
                have h6 := A2 James h5,
                contradiction,
            },
            cases A3 James, {
                contradiction,
            }, {
                split,
                exact h_1,
                exact h1,
            }
        },
    }
end

-- Let's try the negative case.

