-- Introducing basic types for entities in our universe.
constant Animal : Type

-- Defining specific instances of animals.
constant HeckCattle : Animal
constant Aurochs : Animal

-- Defining properties and relations among the entities.
constant is_bred_back : Animal → Prop
constant resembles : Animal → Animal → Prop
constant is_extinct : Animal → Prop

-- Providing axioms based on the information given.

-- Heck cattle were bred-back in the 1920s to resemble the aurochs.
axiom A1 : is_bred_back HeckCattle
axiom A2 : resembles HeckCattle Aurochs

-- Some animals to be bred-back resemble animals that are extinct.
axiom A3 : ∃ (a1 a2 : Animal), is_bred_back a1 ∧ resembles a1 a2 ∧ is_extinct a2

-- Formalizing the Questions

-- Question 1
-- Some Heck cattle are artificially selected.
-- Let's first prove the positive case.

theorem heck_cattle_are_selected : is_bred_back HeckCattle :=
begin
  sorry
end


theorem not_heck_cattle_are_selected : ¬ is_bred_back HeckCattle :=
begin
  sorry
end
