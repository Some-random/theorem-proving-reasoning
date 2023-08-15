-- Introducing basic types for entities in our universe.
constant Thing : Type
constant Rock : Thing

-- Defining properties for the things in our universe.
constant is_mammal : Thing → Prop
constant is_animal : Thing → Prop
constant is_monkey : Thing → Prop
constant is_bird : Thing → Prop
constant can_fly : Thing → Prop
constant has_wings : Thing → Prop
constant can_breathe : Thing → Prop

-- Context from the information

-- All mammals are animals.
axiom A1 : ∀ (t : Thing), is_mammal t → is_animal t
-- All monkeys are mammals.
axiom A2 : ∀ (t : Thing), is_monkey t → is_mammal t
-- An animal is either a monkey or a bird.
axiom A3 : ∀ (t : Thing), is_animal t → (is_monkey t ∨ is_bird t)
-- All birds fly.
axiom A4 : ∀ (t : Thing), is_bird t → can_fly t
-- All animals breathe.
axiom A5 : ∀ (t : Thing), is_animal t → can_breathe t
-- If something can fly, then it has wings.
axiom A6 : ∀ (t : Thing), can_fly t → has_wings t
-- If Rock is neither a fly nor a bird, then Rock neither flies nor breathes.
axiom A7 : ¬ (can_fly Rock ∨ is_bird Rock) → (¬ can_fly Rock ∧ ¬ can_breathe Rock)

-- Formalizing the Questions

-- Question 1
-- Rock is a monkey.
-- Let's first prove the positive case.

theorem not_rock_does_not_have_wings : has_wings Rock :=
begin
  sorry
end
