-- Introducing basic types for entities in our universe.
constant Thing : Type
constant SeaEel : Thing

-- Defining properties for the things in our universe.
constant is_eel : Thing → Prop
constant is_fish : Thing → Prop
constant is_plant : Thing → Prop
constant is_animal : Thing → Prop
constant is_paper : Thing → Prop
constant breathes : Thing → Prop

-- Context from the information

-- All eels are fish.
axiom A1 : ∀ (t : Thing), is_eel t → is_fish t
-- No fish are plants.
axiom A2 : ∀ (t : Thing), is_fish t → ¬ is_plant t
-- A thing is either a plant or an animal.
axiom A3 : ∀ (t : Thing), is_plant t ∨ is_animal t
-- Nothing that breathes is paper.
axiom A4 : ∀ (t : Thing), breathes t → ¬ is_paper t
-- All animals breathe.
axiom A5 : ∀ (t : Thing), is_animal t → breathes t
-- If a sea eel is either an eel or a plant, then a sea eel is an eel or an animal.
axiom A6 : (is_eel SeaEel ∨ is_plant SeaEel) → is_eel SeaEel ∨ is_animal SeaEel

-- Question: Based on the above information, is the statement "Sea eel is a paper" true, false, or uncertain?

-- Let's first prove the positive case.

theorem sea_eel_is_paper : is_paper SeaEel :=
begin
    cases A6 (or.inl (A1 SeaEel (λ h, h))) with eel_seaeel animal_seaeel,
    have fish_seaeel := A1 SeaEel eel_seaeel,
    have not_plant_seaeel : ¬ is_plant SeaEel := A2 SeaEel fish_seaeel,
    have not_animal_seaeel : ¬ is_animal SeaEel := 
    λ h, not_plant_seaeel (or.resolve_right (A3 SeaEel) h),
    have not_paper_due_to_breathing := 
    λ h : is_animal SeaEel, A4 (A5 SeaEel h),
    exact (not_paper_due_to_breathing animal_seaeel) (A4 (A5 SeaEel animal_seaeel)),
    sorry,
end

-- Looks like the positive case is not provable. Let's try the negative case.

theorem sea_eel_is_not_paper : ¬ is_paper SeaEel :=
begin
    cases A3 SeaEel, {
        have not_fish_seaeel : ¬ is_fish SeaEel,
        { 
            intro assumed_fish,
            have cannot_be_plant := A2 SeaEel assumed_fish,
            contradiction 
        }, 
        have not_eel_seaeel : ¬ is_eel SeaEel,
        {
            intro assumed_eel,
            have cannot_be_eel := A1 SeaEel assumed_eel,
            contradiction
        },
        have eel_or_plant : (is_eel SeaEel ∨ is_plant SeaEel), {
            right,
            exact h,
        },
        have eel_or_animal : (is_eel SeaEel ∨ is_animal SeaEel), {
            exact A6 eel_or_plant,
        },
        cases eel_or_animal, {
            contradiction,
        }, {
            have seaeel_breathes : breathes SeaEel, {
                exact A5 SeaEel eel_or_animal,
            },
            have seaeel_is_not_paper : ¬ is_paper SeaEel, {
                exact A4 SeaEel seaeel_breathes,
            },
            exact seaeel_is_not_paper,
        }
    }, {
        apply A4,
        apply A5,
        exact h,
    }
end

-- The negative case can be proven in Lean. So
-- The answer is False