-- Introducing basic types for entities in our universe.
constant Monitor : Type

-- Defining the property of a monitor having a type-c port
constant has_type_c_port : Monitor → Prop
-- Defining the property of a monitor being produced by LG
constant produced_by_LG : Monitor → Prop
-- Defining the property of a monitor being produced by AOC
constant produced_by_AOC : Monitor → Prop
-- Defining the property of a monitor being in the library
constant in_library : Monitor → Prop
-- L-2021 is a specific monitor
constant L_2021 : Monitor

-- Some monitors produced by LG have a type-c port
axiom A1 : ∃ (m : Monitor), produced_by_LG m ∧ has_type_c_port m
-- If the monitor has a type-c port, then it is not produced by AOC
axiom A2 : ∀ (m : Monitor), has_type_c_port m → ¬ produced_by_AOC m
-- All monitors in the library are produced by AOC
axiom A3 : ∀ (m : Monitor), in_library m → produced_by_AOC m
-- L-2021 is either in the library or has a type-c port
axiom A4 : (in_library L_2021 ∨ ¬ has_type_c_port L_2021) ∧ (¬ in_library L_2021 ∨ has_type_c_port L_2021)
-- L-2021 is either produced by AOC and produced by LG, or neither produced by AOC nor produced by LG
axiom A5 : (produced_by_AOC L_2021 ∧ produced_by_LG L_2021) ∨ (¬ produced_by_AOC L_2021 ∧ ¬ produced_by_LG L_2021)

-- Formalizing the Questions

-- Question 1
-- L-2021 is in the library.
-- Let's first prove the positive case.
theorem L_2021_in_library : in_library L_2021 :=
begin
    sorry,
end

-- Let's try the negative case.

theorem not_L_2021_in_library : ¬ in_library L_2021 :=
begin
    sorry,
end

-- The answer is Unknown

-- Question 2
-- L-2021 is either in the library or produced by LG.
-- Let's first prove the positive case.
theorem L_2021_in_library_or_produced_by_LG : (in_library L_2021 ∨ ¬ produced_by_LG L_2021) ∧ (¬ in_library L_2021 ∨ produced_by_LG L_2021) :=
begin
    sorry,
end

-- Let's try the negative case.

theorem not_L_2021_in_library_or_produced_by_LG : ¬ ((in_library L_2021 ∨ ¬ produced_by_LG L_2021) ∧ (¬ in_library L_2021 ∨ produced_by_LG L_2021)) :=
begin
    intro h,
    cases h,
    -- h_left: in_library L_2021 ∨ ¬produced_by_LG L_2021
    cases h_left, {
        -- h_left_left: in_library L_2021
        have produced_by_AOC_L_2021 := A3 L_2021 h_left,
        cases A4,
        have not_has_type_c_port_L_2021 : ¬ has_type_c_port L_2021, {
            intro h1,
            have not_produced_by_AOC_L_2021 := A2 L_2021 h1,
            contradiction,
        },
        
    }
    sorry,
end

-- The answer is Unknown

-- Question 3
-- L-2021 either has a type-c port or is produced by LG.
-- Let's first prove the positive case.
theorem L_2021_has_type_c_port_or_produced_by_LG : has_type_c_port L_2021 ∨ produced_by_LG L_2021 :=
begin
    cases A4, {
        left,
        cases A1 with m hm,
        have h1 : m = L_2021, {
            apply classical.by_contradiction,
            intro h1,
            have h2 : ¬ has_type_c_port L_2021, {
                intro h2,
                have h3 := A2 L_2021 h2,
                cases A5, {
                    cases h_1,
                    contradiction,
                }, {
                    cases h_1,
                    contradiction,
                }
            },
            contradiction,
        },
        rw ← h1 at hm,
        exact hm.right,
    }, {
        left,
        exact h,
    },
    sorry
end

-- Let's try the negative case.

theorem not_L_2021_has_type_c_port_or_produced_by_LG : ¬ (has_type_c_port L_2021 ∨ produced_by_LG L_2021) :=
begin
    sorry,
end

-- The answer is Unknown

-- Question 4
-- If L-2021 is either in the library and produced by LG, or neither in the library nor produced by LG,  then L-2021 neither has a type-c port nor is produced by LG.
-- Let's first prove the positive case.
theorem L_2021_condition_1 : 
(in_library L_2021 ∧ produced_by_LG L_2021) ∨ (¬ in_library L_2021 ∧ ¬ produced_by_LG L_2021) → 
¬ has_type_c_port L_2021 ∧ ¬ produced_by_LG L_2021 :=
begin
    intro h,
    cases h, {
        cases h,
        have not_produced_by_AOC_L_2021 : ¬ produced_by_AOC L_2021, {
            apply A2 L_2021,
            cases A1 with m hm,
            have h1 : m = L_2021, {
                apply classical.by_contradiction,
                intro h1,
                have h2 : ¬ has_type_c_port L_2021, {
                    intro h2,
                    have h3 := A2 L_2021 h2,
                    cases A5, {
                        cases h_1,
                        contradiction,
                    }, {
                        cases h_1,
                        contradiction,
                    }
                },
                contradiction,
            },
            rw ← h1 at hm,
            exact hm.right,
        },
        cases A5, {
            cases h_1,
            contradiction,
        }, {
            cases h_1,
            contradiction,
        }
    }, {
        exact h,
    },
    sorry,
end

-- Let's try the negative case.

theorem not_L_2021_condition_1 :
¬ ((in_library L_2021 ∧ produced_by_LG L_2021) ∨ (¬ in_library L_2021 ∧ ¬ produced_by_LG L_2021) → 
¬ has_type_c_port L_2021 ∧ ¬ produced_by_LG L_2021) :=
begin
    sorry,
end

-- The answer is Unknown

-- Question 5
-- If L-2021 is either produced by LG and produced by AOC or neither produced by LG nor produced by AOC,  then L-2021 is either in the library or produced by LG.
-- Let's first prove the positive case.
theorem L_2021_condition_2 : 
(produced_by_LG L_2021 ∧ produced_by_AOC L_2021) ∨ (¬ produced_by_LG L_2021 ∧ ¬ produced_by_AOC L_2021) → 
in_library L_2021 ∨ produced_by_LG L_2021 :=
begin
    intro h,
    cases h, {
        cases h,
        left,
        apply A3 L_2021 h_right,
    }, {
        cases h,
        exact A4,
    },
    sorry
end

-- Let's try the negative case.

theorem not_L_2021_condition_2 :
¬ ((produced_by_LG L_2021 ∧ produced_by_AOC L_2021) ∨ (¬ produced_by_LG L_2021 ∧ ¬ produced_by_AOC L_2021) → 
in_library L_2021 ∨ produced_by_LG L_2021) :=
begin
    sorry,
end

-- The answer is Unknown
