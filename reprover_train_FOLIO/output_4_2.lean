-- Introducing basic types for entities in our universe.
constant Person : Type
constant Language : Type

-- Defining specific instances of people and languages.
constant Katya : Person
constant Danil : Person
constant LanguageA : Language

-- Defining properties and relations among the entities.
constant knows : Person → Language → Prop
constant can_communicate : Person → Person → Prop
constant universal_language : Language → Prop

-- Providing axioms based on the information given.

-- LanguageA is a universal language
axiom A1 : universal_language LanguageA

-- If a universal language exists, then for every two people if they both know the same universal language they can communicate.
axiom A2 : ∀ (l : Language) (p1 p2 : Person), 
    universal_language l → knows p1 l → knows p2 l → can_communicate p1 p2

-- Katya cannot communicate with Danil.
axiom A3 : ¬ can_communicate Katya Danil

-- Katya knows LanguageA.
axiom A4 : knows Katya LanguageA

-- Formalizing the Questions

-- Question 1
-- Danil knows LanguageA.
-- Let's first prove the positive case.

theorem not_danil_knows_languageA : ¬ knows Danil LanguageA :=
begin
    intro h,
    have h1 := A2 LanguageA Katya Danil,
    have h2 := h1 A1 A4 h,
    have h3 := A3,
    contradiction,
end

-- The answer is True
