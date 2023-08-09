-- Introducing basic types for entities in our universe.
constant Person : Type
constant Book : Type
constant Year : Type

-- Defining specific instances of persons, books and years.
constant MiroslavVenhoda : Person
constant MethodOfStudyingGregorianChant : Book
constant Y1946 : Year

-- Defining properties and relations among the entities.
constant is_Czech : Person → Prop
constant is_choral_conductor : Person → Prop
constant is_musician : Person → Prop
constant loves_music : Person → Prop
constant specializes_in_Renaissance : Person → Prop
constant published_in : Person → Book → Year → Prop

-- Providing axioms based on the information given.

-- Miroslav Venhoda was a Czech choral conductor who specialized in the performance of Renaissance and Baroque music.
axiom A1 : is_Czech MiroslavVenhoda
axiom A2 : is_choral_conductor MiroslavVenhoda
axiom A3 : specializes_in_Renaissance MiroslavVenhoda

-- Any choral conductor is a musician.
axiom A4 : ∀ (p : Person), is_choral_conductor p → is_musician p

-- Some musicians love music.
axiom A5 : ∃ (p : Person), is_musician p ∧ loves_music p

-- Miroslav Venhoda published a book in 1946 called Method of Studying Gregorian Chant.
axiom A6 : published_in MiroslavVenhoda MethodOfStudyingGregorianChant Y1946

-- Formalizing the Questions

-- Question 1
-- Miroslav Venhoda loved music.
-- Let's first prove the positive case.

theorem miroslav_loved_music : loves_music MiroslavVenhoda :=
begin
  sorry
end


theorem not_miroslav_loved_music : ¬ loves_music MiroslavVenhoda :=
begin
  sorry
end
