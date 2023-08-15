-- Introducing basic types for entities in our universe.
constant Man : Type
constant Michael : Man
constant Peter : Man
constant Windy : Man

-- Defining properties and relations among the entities.
constant is_taller_than : Man → Man → Prop
constant can_block_shooting_of : Man → Man → Prop
constant can_jump_when_shooting : Man → Prop
constant is_great_shooter : Man → Prop

-- Providing axioms based on the information given.

-- If a man is taller than another man, the taller one can block the other's shooting.
axiom A1 : ∀ (m1 m2 : Man), is_taller_than m1 m2 → can_block_shooting_of m1 m2

-- Michael is a man who is taller than everyone else in his class.
axiom A2 : ∀ (m : Man), m ≠ Michael → is_taller_than Michael m

-- If person x is taller than person y, and person y is taller than person z, than x is taller than z
axiom A3 : ∀ (x y z : Man), is_taller_than x y ∧ is_taller_than y z → is_taller_than x z

-- Peter is a man who is taller than Michael.
axiom A4 : is_taller_than Peter Michael

-- Michael can block any shooting from a person as long as the person does not jump when shooting.
axiom A5 : ∀ (m : Man), ¬ can_jump_when_shooting m → can_block_shooting_of Michael m

-- Michael cannot block Windy's shooting.
axiom A6 : ¬ can_block_shooting_of Michael Windy

-- Every shooter who can jump when shooting is a great shooter.
axiom A7 : ∀ (m : Man), can_jump_when_shooting m → is_great_shooter m

-- Formalizing the Questions

-- Question 1
-- Peter is shorter than a man in Michael's class.
-- Let's first prove the positive case.

theorem windy_is_great_shooter : is_great_shooter Windy :=
begin
  sorry
end
