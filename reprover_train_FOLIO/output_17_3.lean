-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person being an athlete
constant Athlete : Person → Prop
-- Defining the property of a person being good at sports
constant Good_at_sports : Person → Prop
-- Defining the property of a person being an Olympic gold medal winner
constant Olympic_gold_medal_winner : Person → Prop
-- Defining the property of a person being a scientist
constant Scientist : Person → Prop
-- Defining the property of a person being a Nobel laureate
constant Nobel_laureate : Person → Prop
-- Amy is a specific person
constant Amy : Person

-- All athletes are good at sports
axiom A1 : ∀ (p : Person), Athlete p → Good_at_sports p
-- All Olympic gold medal winners are good athletes
axiom A2 : ∀ (p : Person), Olympic_gold_medal_winner p → Athlete p
-- No scientists are good at sports
axiom A3 : ∀ (p : Person), Scientist p → ¬ Good_at_sports p
-- All Nobel laureates are scientists
axiom A4 : ∀ (p : Person), Nobel_laureate p → Scientist p
-- Amy is good at sports or Amy is an Olympic gold medal winner
axiom A5 : Good_at_sports Amy ∨ Olympic_gold_medal_winner Amy
-- If Amy is not a Nobel laureate, then Amy is not an Olympic gold medal winner
axiom A6 : ¬ Nobel_laureate Amy → ¬ Olympic_gold_medal_winner Amy

-- Formalizing the Questions

-- Question 1
-- Amy is an athlete.
-- Let's first prove the positive case.

theorem Amy_is_neither_scientist_nor_winner : ¬ Scientist Amy ∧ ¬ Olympic_gold_medal_winner Amy :=
begin
    have h1 : ¬ Scientist Amy, {
        intro h,
        have h2 := A3 Amy h,
        cases A5, {
            contradiction,
        }, {
            have h3 := A2 Amy h_1,
            have h4 := A1 Amy h3,
            contradiction,
        }
    },
    have h2 : ¬ Olympic_gold_medal_winner Amy, {
        intro h,
        have h2 := A2 Amy h,
        have h3 := A1 Amy h2,
        by_cases Nobel_laureate Amy, {
            have h4 := A4 Amy h,
            have h5 := A3 Amy h4,
            contradiction,
        }, {
            have h6 := A6 h,
            contradiction,
        }
    },
    split, {
        exact h1,
    }, {
        exact h2,
    }
end

-- Let's try the negative case.

