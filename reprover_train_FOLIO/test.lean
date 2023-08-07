-- Introducing constants for entities in our universe.
constant Thing : Type
constant FamilyHistory : Thing
constant FamilySecrets : Thing
constant Person : Type
constant DaniShapiro : Person
constant AmericanCity : Type
constant Boston : AmericanCity

-- Defining properties for things and people.
constant is_novel : Thing → Prop
constant is_podcast : Thing → Prop
constant is_written_by : Thing → Person → Prop
constant is_American_writer : Person → Prop
constant is_novel_writer : Person → Prop
constant is_created_by : Thing → Person → Prop
constant is_born_in : Person → AmericanCity → Prop
constant is_American : Person → Prop

-- Context from the information

-- A podcast is not a novel.
axiom A1 : ∀ (t : Thing), is_podcast t → ¬ is_novel t
-- If a person is born in American City, the person is American.
axiom A2 : ∀ (p : Person) (c : AmericanCity), is_born_in p c → is_American p
-- If a book is novel and it is written by a person, then the person is a novel writer.
axiom A3 : ∀ (t : Thing) (p : Person), is_novel t ∧ is_written_by t p → is_novel_writer p
-- Dani Shapiro is an American writer.
axiom A4 : is_American_writer DaniShapiro
-- Family History is written by Dani Shapiro.
axiom A5 : is_written_by FamilyHistory DaniShapiro
-- Family History is a novel written in 2003.
axiom A6 : is_novel FamilyHistory
-- Dani Shapiro created a podcast called Family Secrets.
axiom A7 : is_created_by FamilySecrets DaniShapiro ∧ is_podcast FamilySecrets

-- Question: Based on the above information, is the statement "Family Secrets is a novel" true, false, or uncertain?

-- Let's first prove the positive case

theorem FamilySecrets_is_novel : is_novel FamilySecrets :=
begin
    sorry,
end

-- Looks like the positive case is not provable. Let's try the negative case.

theorem FamilySecrets_is_not_novel : ¬ is_novel FamilySecrets :=
begin
    apply A1,
    exact A7.right,
end

-- The negative case can be proven in Lean. So
-- The answer is False