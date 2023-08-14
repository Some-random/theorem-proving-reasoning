-- Introducing basic types for entities in our universe.
constant Algorithm : Type
constant Model : Type

-- Defining specific instances of algorithms and models.
constant SupervisedLearning : Algorithm
constant UnsupervisedLearning : Algorithm
constant ReinforcementLearning : Algorithm
constant TextSummarizationModel : Model

-- Defining properties and relations among the entities.
constant is_ML_algorithm : Algorithm → Prop
constant requires_labelled_data : Algorithm → Prop
constant is_used_to_train : Algorithm → Model → Prop

-- Providing axioms based on the information given.

-- Machine Learning algorithms can be categorized as supervised learning, unsupervised learning, and reinforcement learning.
axiom A1 : is_ML_algorithm SupervisedLearning
axiom A2 : is_ML_algorithm UnsupervisedLearning
axiom A3 : is_ML_algorithm ReinforcementLearning

-- Unsupervised learning doesn't require labelled data.
axiom A4 : ¬ requires_labelled_data UnsupervisedLearning

-- The state-of-the-art text summarization model is trained with machine learning algorithms.
axiom A5 : ∃ a : Algorithm, is_ML_algorithm a ∧ is_used_to_train a TextSummarizationModel

-- Reinforcement learning is not used to train the state-of-the-art text summarization model.
axiom A6 : ¬ is_used_to_train ReinforcementLearning TextSummarizationModel

-- The Machine Learning algorithm for training text summarization model requires labelled data.
axiom A7 : ∃ a : Algorithm, is_ML_algorithm a ∧ requires_labelled_data a ∧ is_used_to_train a TextSummarizationModel

-- Formalizing the Questions

-- Question 1
-- Supervised learning is used to train the state-of-the-art text summarization model.
-- Let's first prove the positive case.

theorem supervised_learning_used : is_used_to_train SupervisedLearning TextSummarizationModel :=
begin
  sorry
end


theorem not_supervised_learning_used : ¬ is_used_to_train SupervisedLearning TextSummarizationModel :=
begin
  sorry
end
