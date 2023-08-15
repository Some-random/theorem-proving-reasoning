-- Introducing basic types for entities in our universe.
constant Task : Type

-- Defining specific instances of tasks.
constant MachineTranslation : Task

-- Defining properties and relations among the entities.
constant is_NLP_task : Task → Prop
constant is_language_generation_task : Task → Prop
constant is_language_understanding_task : Task → Prop
constant has_text_sequence_output : Task → Prop

-- Providing axioms based on the information given.

-- Machine translation is a natural language processing task.
axiom A1 : is_NLP_task MachineTranslation

-- The output of machine translation is a text sequence.
axiom A2 : has_text_sequence_output MachineTranslation

-- If the output of a natural language processing task is a text sequence, then it is a language generation task.
axiom A3 : ∀ (t : Task), is_NLP_task t → has_text_sequence_output t → is_language_generation_task t

-- Formalizing the Questions

-- Question 1
-- Machine translation is a language generation task.
-- Let's first prove the positive case.

theorem not_machine_translation_is_understanding : ¬ is_language_understanding_task MachineTranslation :=
begin
  sorry
end
