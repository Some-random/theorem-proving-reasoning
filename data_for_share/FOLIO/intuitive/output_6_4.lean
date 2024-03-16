-- Introducing basic types for entities in our universe.
constant Person : Type
constant Neighbourhood : Type
constant ZipCode : Type

-- Defining specific instances of persons, neighbourhoods and zip codes.
constant Tom : Person
constant Daniel : Person
constant LawtonPark : Neighbourhood
constant Zip98199 : ZipCode

-- Defining properties and relations among the entities.
constant is_citizen_of : Person → Neighbourhood → Prop
constant uses_zip_code : Person → ZipCode → Prop
constant neighbourhood_zip_code : Neighbourhood → ZipCode → Prop

-- Providing axioms based on the information given.

-- Lawton Park is a neighbourhood in Seattle.
-- All citizens of Lawton Park use the zip code 98199.
axiom A1 : ∀ (p : Person), is_citizen_of p LawtonPark → uses_zip_code p Zip98199
axiom A2 : ∀ (n : Neighbourhood), neighbourhood_zip_code n Zip98199 → ∀ (p : Person), uses_zip_code p Zip98199 → is_citizen_of p n

-- Tom is a citizen of Lawton Park.
axiom A3 : is_citizen_of Tom LawtonPark

-- Daniel uses the zip code 98199.
axiom A4 : uses_zip_code Daniel Zip98199

-- Formalizing the Questions

-- Question 1
-- Tom uses the zip code 98199.
-- Let's first prove the positive case.

theorem not_tom_doesnt_use_zip_98199 : uses_zip_code Tom Zip98199 :=
begin
    apply A1,
    exact A3,
end

-- The answer is False

-- Question 3
-- Tom is a citizen of Washington.
-- Let's first prove the positive case.
