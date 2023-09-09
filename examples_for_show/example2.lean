-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person who performs in school talent shows often
constant Performs_in_talent_shows : Person → Prop
-- Defining the property of a person who attends and is very engaged with school events
constant Attends_school_events : Person → Prop
-- Defining the property of a person who is an inactive and disinterested member of their community
constant Inactive_member : Person → Prop
-- Defining the property of a person who chaperones high school dances
constant Chaperones_dances : Person → Prop
-- Defining the property of a person who is a student who attends the school
constant Student : Person → Prop
-- Defining the property of a person who is a young child or teenager who wishes to further their academic career and educational opportunities
constant Young_achiever : Person → Prop
-- Bonnie is a specific person
constant Bonnie : Person

-- Axioms describing the relationships between the constants defined above.

axiom A1 : ∀ (p : Person), Performs_in_talent_shows p → Attends_school_events p
axiom A2 : ∀ (p : Person), (Performs_in_talent_shows p ∧ ¬ Inactive_member p) ∨ (¬ Performs_in_talent_shows p ∧  Inactive_member p)
axiom A3 : ∀ (p : Person), Chaperones_dances p → ¬ Student p
axiom A4 : ∀ (p : Person), Inactive_member p → Chaperones_dances p
axiom A5 : ∀ (p : Person), Young_achiever p → Student p
axiom A6 : (Attends_school_events Bonnie ∧ Student Bonnie) ∨ 
            (¬ Attends_school_events Bonnie ∧ ¬ Student Bonnie)

-- Now we begin to prove the theorem for Bonnie's Condition.

theorem Bonnie_Condition : 
(Young_achiever Bonnie ∧ Chaperones_dances Bonnie) ∨ 
(¬ Young_achiever Bonnie ∧ ¬ Chaperones_dances Bonnie) → 
Student Bonnie ∨ Inactive_member Bonnie :=
begin
    -- Introducing our hypothesis.
    intro h,
    -- We use the axiom A2 for Bonnie. This will split the proof into two cases.
    cases A2 Bonnie, {
        -- We handle the first case where Bonnie performs in talent shows and is not an inactive member.
        cases h_1,
        -- Using A1, we deduce that if Bonnie performs in talent shows, she attends school events.
        have h1 : Attends_school_events Bonnie, {
            apply A1 Bonnie h_1_left,
        },
        -- We handle Bonnie's attendance and student status using axiom A6.
        cases A6, {
            cases h_1,
            -- If Bonnie attends school events and is a student, our proof is done.
            left,
            exact h_1_right_1,
        }, {
            -- Contradiction arises if Bonnie neither attends school events nor is a student.
            cases h_1,
            contradiction
        }
    }, {
        -- Handling the second case from A2 where Bonnie doesn't perform in talent shows but is an inactive member.
        cases h_1,
        right,
        -- Concluding the proof for the second case.
        exact h_1_right,
    }
end
