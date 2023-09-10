-- Introducing basic types for entities in our universe.
constant Person : Type
constant Book : Type

-- Defining specific instances of persons and books.
constant Miroslav_Venhoda : Person
constant Method_of_Studying_Gregorian_Chant : Book

-- Defining properties and relations among the entities.
constant is_Czech : Person → Prop
constant is_choral_conductor : Person → Prop
constant is_musician : Person → Prop
constant loves_music : Person → Prop
constant specializes_in_renaissance : Person → Prop
constant published : Person → Book → ℕ → Prop

-- Providing axioms based on the information given.

-- Miroslav Venhoda was a Czech choral conductor who specialized in the performance of Renaissance and Baroque music.
axiom A1 : is_Czech Miroslav_Venhoda
axiom A2 : is_choral_conductor Miroslav_Venhoda
axiom A3 : specializes_in_renaissance Miroslav_Venhoda

-- Any choral conductor is a musician.
axiom A4 : ∀ (p : Person), is_choral_conductor p → is_musician p

-- Some musicians love music.
axiom A5 : ∃ (p : Person), is_musician p ∧ loves_music p

-- Miroslav Venhoda published a book in 1946 called Method of Studying Gregorian Chant.
axiom A6 : published Miroslav_Venhoda Method_of_Studying_Gregorian_Chant 1946

-- Formalizing the Questions

-- Question 1
-- Miroslav Venhoda loved music.
-- Let's first prove the positive case.

theorem not_no_choral_conductor_specialized : ∃ (p : Person), is_choral_conductor p ∧ specializes_in_renaissance p :=
begin
    existsi Miroslav_Venhoda,
    split,
    exact A2,
    exact A3,
end

-- The answer is False
