-- Introducing basic types for entities in our universe.
constant Person : Type
constant Book : Type

-- Defining specific instances of persons and books.
constant Harry : Person
constant Walden : Book

-- Defining properties and relations among the entities.
constant contains_knowledge : Book → Prop
constant read : Person → Book → Prop
constant gains_knowledge : Person → Prop
constant is_smarter : Person → Prop

-- Providing axioms based on the information given.

-- Books contain tons of knowledge.
axiom A1 : ∀ (b : Book), contains_knowledge b

-- When a person reads a book, that person gains knowledge.
axiom A2 : ∀ (p : Person) (b : Book), read p b → gains_knowledge p

-- If a person gains knowledge, they become smarter.
axiom A3 : ∀ (p : Person), gains_knowledge p → is_smarter p

-- Harry read the book “Walden” by Henry Thoreau.
axiom A4 : read Harry Walden

-- Formalizing the Questions

-- Question 1
-- Walden contains knowledge.
-- Let's first prove the positive case.

theorem harry_is_smarter : is_smarter Harry :=
begin
  sorry
end


theorem not_harry_is_smarter : ¬ is_smarter Harry :=
begin
  sorry
end
