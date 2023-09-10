-- Introducing basic types for entities in our universe.
constant Animal : Type
constant Rock : Animal

-- Defining properties for the animals in our universe.
constant is_rabbit : Animal → Prop
constant is_squirrel : Animal → Prop
constant is_turtle : Animal → Prop
constant is_cute : Animal → Prop
constant is_skittish : Animal → Prop
constant is_still : Animal → Prop

-- Context from the information

-- All rabbits are cute.
axiom A1 : ∀ (a : Animal), is_rabbit a → is_cute a
-- An animal is either a rabbit or a squirrel.
axiom A2 : ∀ (a : Animal), is_rabbit a ∨ is_squirrel a
-- If something is skittish, then it is not still.
axiom A3 : ∀ (a : Animal), is_skittish a → ¬ is_still a
-- All squirrels are skittish.
axiom A4 : ∀ (a : Animal), is_squirrel a → is_skittish a
-- Rock is still.
axiom A5 : is_still Rock

-- Formalizing the Questions

-- Question 1
-- Rock is a turtle.
-- Let's first prove the positive case.

theorem not_rock_condition_2 : ¬ ((is_cute Rock ∧ is_still Rock) → (is_turtle Rock ∧ is_skittish Rock)) :=
begin
    intro h,
    have h1 : ¬ (is_turtle Rock ∧ is_skittish Rock), {
        intro h2,
        have h3 : is_skittish Rock, from and.elim_right h2,
        have h4 : ¬ is_skittish Rock, {
            intro h5,
            have h6 : is_still Rock, from A5,
            have h7 : ¬ is_still Rock, from A3 Rock h5,
            contradiction,
        },
        contradiction,
    },
    have h2 : ¬ is_skittish Rock, {
        intro h3,
        have h4 : is_still Rock, from A5,
        have h5 : ¬ is_still Rock, from A3 Rock h3,
        contradiction,
    },
    have h3 : ¬ is_squirrel Rock, {
        intro h4,
        have h5 : is_skittish Rock, from A4 Rock h4,
        contradiction,
    },
    cases A2 Rock, {
        have h4 : is_cute Rock, from A1 Rock h_1,
        have h5 : is_still Rock, from A5,
        have h6 : is_cute Rock ∧ is_still Rock, from and.intro h4 h5,
        have h7 : is_turtle Rock ∧ is_skittish Rock, from h h6,
        contradiction,
    }, {
        contradiction,
    }
end

-- The answer is Unknown
