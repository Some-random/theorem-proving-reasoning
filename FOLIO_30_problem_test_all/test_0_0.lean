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

-- If people perform in school talent shows often, then they attend and are very engaged with school events
axiom A1 : ∀ (p : Person), Performs_in_talent_shows p → Attends_school_events p
-- People either perform in school talent shows often or are inactive and disinterested members of their community
axiom A2 : ∀ (p : Person), (Performs_in_talent_shows p ∧ ¬ Inactive_member p) ∨ (¬ Performs_in_talent_shows p ∧  Inactive_member p)
-- If people chaperone high school dances, then they are not students who attend the school
axiom A3 : ∀ (p : Person), Chaperones_dances p → ¬ Student p
-- All people who are inactive and disinterested members of their community chaperone high school dances
axiom A4 : ∀ (p : Person), Inactive_member p → Chaperones_dances p
-- All young children and teenagers who wish to further their academic careers and educational opportunities are students who attend the school
axiom A5 : ∀ (p : Person), Young_achiever p → Student p
-- Bonnie either both attends and is very engaged with school events and is a student who attends the school, or she neither attends and is very engaged with school events nor is a student who attends the school
axiom A6 : (Attends_school_events Bonnie ∧ Student Bonnie) ∨ 
            (¬ Attends_school_events Bonnie ∧ ¬ Student Bonnie)

-- Formalizing the Questions

-- Question 1
-- Bonnie performs in school talent shows often.
-- Let's first prove the positive case.

theorem Bonnie_Performs : Performs_in_talent_shows Bonnie :=
begin
  sorry
end


theorem not_Bonnie_Performs : ¬ Performs_in_talent_shows Bonnie :=
begin
  sorry
end
