-- Introducing basic types for entities in our universe.
constant Thing : Type

-- Defining the properties of a thing.
constant is_eel : Thing → Prop
constant is_fish : Thing → Prop
constant is_plant : Thing → Prop
constant is_animal : Thing → Prop
constant is_paper : Thing → Prop
constant breathes : Thing → Prop

-- Defining a specific instance of a thing.
constant sea_eel : Thing

-- All eels are fish.
axiom A1 : ∀ (t : Thing), is_eel t → is_fish t
-- No fish are plants.
axiom A2 : ∀ (t : Thing), is_fish t → ¬ is_plant t
-- A thing is either a plant or animal.
axiom A3 : ∀ (t : Thing), is_plant t ∨ is_animal t
-- Nothing that breathes is paper.
axiom A4 : ∀ (t : Thing), breathes t → ¬ is_paper t
-- All animals breathe.
axiom A5 : ∀ (t : Thing), is_animal t → breathes t
-- If a sea eel is either an eel or a plant, then a sea eel is an eel or an animal.
axiom A6 : (is_eel sea_eel ∨ is_plant sea_eel) → (is_eel sea_eel ∨ is_animal sea_eel)

-- Formalizing the Questions

-- Question 1
-- Sea eel is an eel.
-- Let's first prove the positive case.

theorem not_sea_eel_is_paper : ¬ is_paper sea_eel :=
begin
    cases A3 sea_eel, {
        cases A6 (or.inr h), {
            have h1 := A2 sea_eel (A1 sea_eel h_1),
            contradiction,
        }, {
            exact A4 sea_eel (A5 sea_eel h_1),
        }
    }, {
        exact A4 sea_eel (A5 sea_eel h),
    }
end

-- The answer is False

-- Question 3
-- Sea eel breathes or is a paper.
-- Let's first prove the positive case.
