-- Introducing basic types for entities in our universe.
constant Turkey : Type
constant Tom : Turkey
constant Joey : Turkey

-- Defining properties for the turkeys in our universe.
constant is_wild_turkey : Turkey → Prop
constant is_eastern_wild_turkey : Turkey → Prop
constant is_osceola_wild_turkey : Turkey → Prop
constant is_goulds_wild_turkey : Turkey → Prop
constant is_merriams_wild_turkey : Turkey → Prop
constant is_rio_grande_wild_turkey : Turkey → Prop
constant is_ocellated_wild_turkey : Turkey → Prop

-- Context from the information

-- Tom is not an Eastern wild turkey.
axiom A1 : ¬ is_eastern_wild_turkey Tom
-- Tom is not an Osceola wild turkey.
axiom A2 : ¬ is_osceola_wild_turkey Tom
-- Tom is also not a Gould's wild turkey.
axiom A3 : ¬ is_goulds_wild_turkey Tom
-- Tom is not a Merriam's wild turkey.
axiom A4 : ¬ is_merriams_wild_turkey Tom
-- Tom is not a Rio Grande wild turkey.
axiom A5 : ¬ is_rio_grande_wild_turkey Tom
-- Tom is a wild turkey.
axiom A6 : is_wild_turkey Tom
-- There are six types of wild turkeys: Eastern wild turkey, Osceola wild turkey, Gould’s wild turkey, Merriam’s wild turkey, Rio Grande wild turkey, and Ocellated wild turkey.
axiom turkey_type_exclusivity : ∀ (t : Turkey),
    is_wild_turkey t → is_eastern_wild_turkey t ∨ is_osceola_wild_turkey t ∨ is_goulds_wild_turkey t ∨ is_merriams_wild_turkey t ∨ is_rio_grande_wild_turkey t ∨ is_ocellated_wild_turkey t

-- Formalizing the Questions

-- Question 1
-- Tom is an Ocellated wild turkey.
-- Let's first prove the positive case.

theorem tom_is_ocellated_wild_turkey : is_ocellated_wild_turkey Tom :=
begin
    cases turkey_type_exclusivity Tom A6,
    exfalso,
    exact A1 h,
    
    cases h,
    exfalso,
    exact A2 h,
    
    cases h,
    exfalso,
    exact A3 h,
    
    cases h,
    exfalso,
    exact A4 h,
    
    cases h,
    exfalso,
    exact A5 h,
    
    exact h,
end


-- Let's try the negative case.

