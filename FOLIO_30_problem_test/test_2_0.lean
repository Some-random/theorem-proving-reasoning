-- Introducing basic types for entities in our universe.
constant Person : Type
constant Language : Type

-- Defining specific instances of persons and languages.
constant LanguageA : Language
constant Katya : Person
constant Danil : Person

-- Defining properties and relations among the entities.
constant is_universal_language : Language → Prop
constant knows : Person → Language → Prop
constant can_communicate : Person → Person → Prop

-- Providing axioms based on the information given.

-- LanguageA is a universal language
axiom A1 : is_universal_language LanguageA

-- If a universal language exists, then for every two people if they both know the same universal language they can communicate.
axiom A2 : ∀ (l : Language), is_universal_language l → ∀ (p1 p2 : Person), knows p1 l ∧ knows p2 l → can_communicate p1 p2

-- Katya cannot communicate with Danil.
axiom A3 : ¬ can_communicate Katya Danil

-- Katya knows LanguageA.
axiom A4 : knows Katya LanguageA

-- Formalizing the Questions

-- Question 1
-- Danil knows LanguageA.
-- Let's first prove the positive case.

theorem danil_knows_languageA : knows Danil LanguageA :=
begin
  sorry
end


theorem not_danil_knows_languageA : ¬ knows Danil LanguageA :=
begin
  sorry
end
