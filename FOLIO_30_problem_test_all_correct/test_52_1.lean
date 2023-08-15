-- Introducing basic types for entities in our universe.
constant Book : Type

-- Defining specific instances of books.
constant NeapolitanChronicles : Book
constant PalaceOfFlies : Book
constant HarryPotter : Book

-- Defining properties and relations among the entities.
constant is_published_by_NewVesselPress : Book → Prop
constant is_translated_from_Italian : Book → Prop
constant is_in_English : Book → Prop

-- Providing axioms based on the information given.

-- All of New Vessel Press's published books are in English.
axiom A1 : ∀ (b : Book), is_published_by_NewVesselPress b → is_in_English b

-- Neapolitan Chronicles is a book published by New Vessel Press.
axiom A2 : is_published_by_NewVesselPress NeapolitanChronicles

-- Neapolitan Chronicles was translated from Italian.
axiom A3 : is_translated_from_Italian NeapolitanChronicles

-- Palace of Flies is a book published by New Vessel Press.
axiom A4 : is_published_by_NewVesselPress PalaceOfFlies

-- Formalizing the Questions

-- Question 1
-- Neapolitan Chronicles is an English book.
-- Let's first prove the positive case.

theorem neapolitan_chronicles_is_english : is_in_English NeapolitanChronicles :=
begin
  sorry
end
