-- Introducing basic types for entities in our universe.
constant Event : Type

-- Defining properties for the events in our universe.
constant is_happy : Event → Prop
constant is_sad : Event → Prop

-- Providing axioms based on the information given.

-- Events are either happy or sad.
axiom A1 : ∀ (e : Event), is_happy e ∨ is_sad e

-- At least one event is happy.
axiom A2 : ∃ (e : Event), is_happy e

-- Formalizing the Questions

-- Question 1
-- All events are sad.
-- Let's first prove the positive case.

theorem all_events_are_sad : ∀ (e : Event), is_sad e :=
begin
  sorry
end


theorem not_all_events_are_sad : ¬ ∀ (e : Event), is_sad e :=
begin
  sorry
end
