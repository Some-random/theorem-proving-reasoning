-- Introducing basic types for entities in our universe.
constant Person : Type
constant Series : Type
constant Channel : Type

-- Defining specific instances of persons, series and channels.
constant AndrewCollins : Person
constant Pappys : Person
constant Badults : Series
constant BBCThree : Channel

-- Defining properties and relations among the entities.
constant stars_in : Person → Series → Prop
constant piloted_in : Series → Channel → Prop
constant has_working_title : Series → Prop
constant is_script_editor_for : Person → Series → Prop

-- Providing axioms based on the information given.

-- Badults is a British Sitcom series, starring members of Pappy's.
axiom A1 : stars_in Pappys Badults

-- Badults piloted in July 2013 on BBC Three.
axiom A2 : piloted_in Badults BBCThree

-- The Working title "The Secret Dude Society" was used for Badults.
axiom A3 : has_working_title Badults

-- Andrew Collins was the script editor for Badults
axiom A4 : is_script_editor_for AndrewCollins Badults

-- Formalizing the Questions

-- Question 1
-- Andrew Collins was the script editor for a series with the working title "The Secret Dude Society".
-- Let's first prove the positive case.

theorem andrew_edited_secret_dude : ∃ (s : Series), is_script_editor_for AndrewCollins s ∧ has_working_title s :=
begin
  sorry
end


theorem not_andrew_edited_secret_dude : ¬ ∃ (s : Series), is_script_editor_for AndrewCollins s ∧ has_working_title s :=
begin
  sorry
end
