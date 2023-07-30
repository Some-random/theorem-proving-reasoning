theorem harry_is_green : Green Harry :=
begin
  apply R9,
  split,
  exact T7,
  apply R7,
  split,
  apply R3,
  split,
  exact T7,
  apply R4,
  apply R5,
  exact T7,
  exact T7,
end

-- Looks like it can be proven in Lean.
-- So let's try to prove the negation of the theorem, which is Harry is not Green

theorem not_green_Harry : ¬ Green Harry :=
begin
  have H1 : Red Harry := T7,
  have H2 : Big Harry := R5 H1,
  have H3 : Young Harry := R4 H2,
  have H4 : Round Harry := R3 Harry (and.intro H1 H3),
  have H5 : Cold Harry := R7 Harry (and.intro H4 H1),
  have H6 : Green Harry := R9 Harry (and.intro H1 H5),
  sorry,
end

-- The negation can not be proven in Lean. So
-- The answer is True