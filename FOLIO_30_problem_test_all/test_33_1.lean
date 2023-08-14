-- Introducing basic types for entities in our universe.
constant Animal : Type
constant Koala : Animal
constant Quokka : Animal

-- Defining properties and relations among the entities.
constant is_loved_by_tourists : Animal → Prop
constant is_from_Australia : Animal → Prop
constant is_Max_favorite : Animal → Prop
constant is_very_fluffy : Animal → Prop
constant loves_to_sleep : Animal → Prop

-- Providing axioms based on the information given.

-- If animals are loved by tourists, then they are Max's favorite animals.
axiom A1 : ∀ (a : Animal), is_loved_by_tourists a → is_Max_favorite a
-- All animals from Australia are loved by tourists.
axiom A2 : ∀ (a : Animal), is_from_Australia a → is_loved_by_tourists a
-- All quokka are animals from Australia.
axiom A3 : is_from_Australia Quokka
-- All of Max's favorite animals are very fluffy.
axiom A4 : ∀ (a : Animal), is_Max_favorite a → is_very_fluffy a
-- All of Max's favorite animals love to sleep.
axiom A5 : ∀ (a : Animal), is_Max_favorite a → loves_to_sleep a
-- If a koala is very fluffy, then the koala is not a quokka.
axiom A6 : is_very_fluffy Koala → Koala ≠ Quokka

-- Formalizing the Questions

-- Question 1
-- Koalas love to sleep.
-- Let's first prove the positive case.

theorem koalas_love_to_sleep_and_are_quokka : loves_to_sleep Koala ∧ Koala = Quokka :=
begin
  sorry
end


theorem not_koalas_love_to_sleep_and_are_quokka : ¬ (loves_to_sleep Koala ∧ Koala = Quokka) :=
begin
  sorry
end
