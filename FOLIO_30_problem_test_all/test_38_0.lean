-- Introducing basic types for entities in our universe.
constant Object : Type

-- Defining properties for the objects in our universe.
constant is_fir_tree : Object → Prop
constant is_evergreen : Object → Prop
constant is_object_of_worship : Object → Prop

-- Providing axioms based on the information given.

-- All fir trees are evergreens.
axiom A1 : ∀ (o : Object), is_fir_tree o → is_evergreen o

-- Some objects of worship are fir trees.
axiom A2 : ∃ (o : Object), is_object_of_worship o ∧ is_fir_tree o

-- Formalizing the Questions

-- Question 1
-- Some evergreens are not objects of worship.
-- Let's first prove the positive case.

theorem some_evergreens_not_worship : ∃ (o : Object), is_evergreen o ∧ ¬ is_object_of_worship o :=
begin
  sorry
end


theorem not_some_evergreens_not_worship : ¬ ∃ (o : Object), is_evergreen o ∧ ¬ is_object_of_worship o :=
begin
  sorry
end
