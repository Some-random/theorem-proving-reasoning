-- Introducing basic types for entities in our universe.
constant Movie : Type
constant Character : Type

-- Defining specific instances of movies and characters.
constant The_Surprising_Adventures_of_Sir_Digby_Chicken_Caesar : Movie
constant Sir_Digby : Character
constant Nemesis : Character

-- Defining properties and relations among the entities.
constant is_superhero_movie : Movie → Prop
constant is_good_guy : Character → Prop
constant is_bad_guy : Character → Prop
constant fights : Character → Character → Prop
constant wins : Character → Prop
constant loses : Character → Prop
constant appears_in : Character → Movie → Prop
constant named_after : Movie → Character → Prop

-- Providing axioms based on the information given.

-- In superhero movies, the good guys always win.
axiom A1 : ∀ (m : Movie) (c : Character), is_superhero_movie m → is_good_guy c → appears_in c m → wins c

-- The Surprising Adventures of Sir Digby Chicken Caesar is a superhero movie.
axiom A2 : is_superhero_movie The_Surprising_Adventures_of_Sir_Digby_Chicken_Caesar

-- Good guys fight bad guys and vice versa.
axiom A3 : ∀ (c1 c2 : Character), fights c1 c2 → (is_good_guy c1 ∧ is_bad_guy c2) ∨ (is_bad_guy c1 ∧ is_good_guy c2)

-- Sir Digby fights his nemesis.
axiom A4 : fights Sir_Digby Nemesis

-- If a superhero movie is named after a character, that character is a good guy.
axiom A5 : ∀ (m : Movie) (c : Character), is_superhero_movie m → named_after m c → is_good_guy c

-- The Surprising Adventures of Sir Digby Chicken Caesar is named after Sir Digby.
axiom A6 : named_after The_Surprising_Adventures_of_Sir_Digby_Chicken_Caesar Sir_Digby

-- If somebody wins a fight, the person they are fighting loses.
axiom A7 : ∀ (c1 c2 : Character), fights c1 c2 → (wins c1 → loses c2) ∧ (wins c2 → loses c1)

-- If a superhero movie is named after a character, that character appears in the movie.
axiom A8 : ∀ (m : Movie) (c : Character), is_superhero_movie m → named_after m c → appears_in c m

-- Formalizing the Questions

-- Question 1
-- Sir Digby’s nemesis loses.
-- Let's first prove the positive case.

theorem nemesis_loses : loses Nemesis :=
begin
  sorry
end
