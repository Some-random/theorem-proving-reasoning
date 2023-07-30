theorem cow_chases_cow : Chases Cow Cow :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Cow does not chase Cow

theorem not_cow_chases_cow : ¬ Chases Cow Cow :=
begin
  apply R3 Cow,
  split,
  exact T7,
  apply R5,
  apply R2 Cat,
  split,
  exact T3,
  apply R4 Rabbit,
  split,
  apply R5,
  exact T8,
  exact T1,
end

-- It can be proven in Lean. So
-- The answer is False
