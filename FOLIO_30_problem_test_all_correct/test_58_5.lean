-- Introducing basic types for entities in our universe.
constant TV_Show : Type
constant Time : Type

-- Defining specific instances of TV shows and times.
constant BreakingBad : TV_Show
constant Monday_8_pm : Time

-- Defining properties and relations among the entities.
constant roses_given_out : TV_Show → Time → Prop
constant on_Bachelor : TV_Show → Prop
constant portrays_real_people : TV_Show → Prop
constant is_reality_TV_show : TV_Show → Prop

-- Providing axioms based on the information given.

-- On some Mondays at 8 pm, roses are given out on TV.
axiom A1 : ∃ (s : TV_Show), roses_given_out s Monday_8_pm

-- Every rose given out on TV is on the Bachelor.
axiom A2 : ∀ (s : TV_Show) (t : Time), roses_given_out s t → on_Bachelor s

-- Everything on the Bachelor portrays the lives of real people.
axiom A3 : ∀ (s : TV_Show), on_Bachelor s → portrays_real_people s

-- All shows portraying the lives of real people are reality TV shows.
axiom A4 : ∀ (s : TV_Show), portrays_real_people s → is_reality_TV_show s

-- Breaking Bad is not a reality TV show.
axiom A5 : ¬ is_reality_TV_show BreakingBad

-- Formalizing the Questions

-- Question 1
-- Breaking Bad is on Monday at 8 pm.
-- Let's first prove the positive case.

theorem breaking_bad_roses_monday : ∀ (t : Time), roses_given_out BreakingBad t → t = Monday_8_pm :=
begin
  sorry
end
