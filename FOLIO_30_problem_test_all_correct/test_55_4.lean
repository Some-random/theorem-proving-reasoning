-- Introducing basic types for entities in our universe.
constant Student : Type
constant James : Student
constant Jack : Student

-- Defining properties for the students in our universe.
constant Works_in_library : Student → Prop
constant From_CS_department : Student → Prop
constant Has_part_time_job : Student → Prop
constant Takes_database_course : Student → Prop
constant Instructed_by_David : Student → Prop
constant Works_in_lab : Student → Prop

-- Context from the information

-- No students who work in the library are from the computer science department.
axiom A1 : ∀ (s : Student), Works_in_library s → ¬ From_CS_department s
-- All students who have part-time jobs offered by the university are students who work in the library.
axiom A2 : ∀ (s : Student), Has_part_time_job s → Works_in_library s
-- All students who take the database course are from the computer science department.
axiom A3 : ∀ (s : Student), Takes_database_course s → From_CS_department s
-- All students instructed by professor David are taking the database course.
axiom A4 : ∀ (s : Student), Instructed_by_David s → Takes_database_course s
-- All students working in the lab are instructed by professor David.
axiom A5 : ∀ (s : Student), Works_in_lab s → Instructed_by_David s
-- James is a student working in the lab.
axiom A6 : Works_in_lab James
-- Jack neither has a part-time job offered by the university nor works in the lab.
axiom A7 : ¬ Has_part_time_job Jack ∧ ¬ Works_in_lab Jack

-- Formalizing the Questions

-- Question 1
-- James has a part-time job offered by the university.
-- Let's first prove the positive case.

theorem not_james_does_not_have_part_time_job : Has_part_time_job James :=
begin
  sorry
end
