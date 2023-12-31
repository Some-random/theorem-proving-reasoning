-- Introducing basic types for entities in our universe.
constant Person : Type

-- Defining the property of a person being a young adult
constant YoungAdult : Person → Prop
-- Defining the property of a person being a college student
constant CollegeStudent : Person → Prop
-- Defining the property of a person being a Yale student
constant YaleStudent : Person → Prop
-- Defining the property of a person being a Harvard student
constant HarvardStudent : Person → Prop
-- Defining the property of a person being diligent
constant Diligent : Person → Prop
-- Defining the property of a person going on a diet
constant Diet : Person → Prop
-- Susan is a specific person
constant Susan : Person

-- All young adults go on a diet
axiom A1 : ∀ (p : Person), YoungAdult p → Diet p
-- All college students are young adults
axiom A2 : ∀ (p : Person), CollegeStudent p → YoungAdult p
-- All Yale students are college students
axiom A3 : ∀ (p : Person), YaleStudent p → CollegeStudent p
-- Someone is either a Yale student or a Harvard student
axiom A4 : YaleStudent Susan ∨ HarvardStudent Susan
-- All Harvard students are diligent
axiom A5 : ∀ (p : Person), HarvardStudent p → Diligent p
-- If Susan is a Harvard student, then she is a young adult
axiom A6 : HarvardStudent Susan → YoungAdult Susan
-- If Susan is a Yale student, then she does not go on a diet
axiom A7 : YaleStudent Susan → ¬ Diet Susan

-- Formalizing the Questions

-- Question 1
-- Susan is a college student.
-- Let's first prove the positive case.
theorem Susan_CollegeStudent : CollegeStudent Susan :=
begin
    cases A4, {
        exact A3 Susan h,
    }, {
        sorry,
    }
end

-- Let's try the negative case.

theorem not_Susan_CollegeStudent : ¬ CollegeStudent Susan :=
begin
    sorry,
end

-- The answer is Unknown

-- Question 2
-- Susan goes on a diet and is diligent.
-- Let's first prove the positive case.

theorem Susan_Diet_Diligent : Diet Susan ∧ Diligent Susan :=
begin
    have not_YaleStudent_Susan : ¬ YaleStudent Susan, {
        intro h_YaleStudent_Susan,
        have not_Diet_Susan := A7 h_YaleStudent_Susan,
        have Diet_Susan := A1 Susan (A2 Susan (A3 Susan h_YaleStudent_Susan)),
        contradiction,
    },
    have HarvardStudent_Susan : HarvardStudent Susan, {
        cases A4, {
            contradiction,
        }, {
            exact h,
        },
    },
    have Diligent_Susan := A5 Susan HarvardStudent_Susan,
    have Diet_Susan := A1 Susan (A6 HarvardStudent_Susan),
    split,
    exact Diet_Susan,
    exact Diligent_Susan,
end

-- Let's try the negative case.

theorem not_Susan_Diet_Diligent : ¬ (Diet Susan ∧ Diligent Susan) :=
begin
    sorry,
end

-- The answer is Unknown

-- Question 3
-- Susan does not go on a diet and is diligent.
-- Let's first prove the positive case.
theorem Susan_notDiet_Diligent : ¬ Diet Susan ∧ Diligent Susan :=
begin
    cases A4, {
        split, {
            apply A7 Susan h,
        }, {
            sorry,
        }
    }, {
        split, {
            have diet_Susan : Diet Susan, {
                apply A1 Susan,
                apply A6 h,
            },
            intro h_diet_Susan,
            contradiction,
        }, {
            apply A5 Susan h,
        }
    }
end

-- Let's try the negative case.

theorem not_Susan_notDiet_Diligent : ¬ (¬ Diet Susan ∧ Diligent Susan) :=
begin
    have not_YaleStudent_Susan : ¬ YaleStudent Susan, {
        intro h_YaleStudent_Susan,
        have not_Diet_Susan := A7 h_YaleStudent_Susan,
        have Diet_Susan := A1 Susan (A2 Susan (A3 Susan h_YaleStudent_Susan)),
        contradiction,
    },
    have HarvardStudent_Susan : HarvardStudent Susan, {
        cases A4, {
            contradiction,
        }, {
            exact h,
        },
    },
    have Diet_Susan := A1 Susan (A6 HarvardStudent_Susan),
    intro h,
    cases h,
    contradiction,
end

-- The answer is Unknown