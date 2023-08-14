-- Introducing basic types for entities in our universe.
constant Person : Type
constant Harry : Person

-- Defining properties for the people in our universe.
constant is_kind : Person → Prop
constant is_evil : Person → Prop
constant is_ugly : Person → Prop
constant is_handsome : Person → Prop
constant is_gentleman : Person → Prop
constant is_CEO : Person → Prop

-- Context from the information

-- A man is either kind or evil.
axiom A1 : ∀ (p : Person), is_kind p ∨ is_evil p
-- No ugly person is handsome.
axiom A2 : ∀ (p : Person), is_ugly p → ¬ is_handsome p
-- All evil people are ugly.
axiom A3 : ∀ (p : Person), is_evil p → is_ugly p
-- All gentlemen are handsome.
axiom A4 : ∀ (p : Person), is_gentleman p → is_handsome p
-- All CEOs are gentlemen.
axiom A5 : ∀ (p : Person), is_CEO p → is_gentleman p
-- Harry is a gentleman.
axiom A6 : is_gentleman Harry

-- Formalizing the Questions

-- Question 1
-- Harry is a CEO.
-- Let's first prove the positive case.

theorem harry_is_CEO : is_CEO Harry :=
begin
  sorry
end


theorem not_harry_is_CEO : ¬ is_CEO Harry :=
begin
  sorry
end
