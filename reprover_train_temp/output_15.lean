universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Mouse : obj
constant Tiger : obj

constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Rough : obj → Prop
constant Red : obj → Prop
constant Big : obj → Prop
constant Young : obj → Prop
constant Kind : obj → Prop
constant Visits : obj → obj → Prop

axiom T1 : Chases Bear Tiger
axiom T2 : Eats Bear Cat
axiom T3 : Eats Bear Tiger
axiom T4 : Rough Bear
axiom T5 : Chases Cat Bear
axiom T6 : ¬ Red Mouse
axiom T7 : Chases Tiger Bear
axiom T8 : ¬ Eats Tiger Cat
axiom T9 : Big Tiger
axiom T10 : Young Tiger

axiom R1 : ∀ x : obj, Eats x Bear → Young x
axiom R2 : ∀ x : obj, Eats x Bear → Chases x Bear
axiom R3 : ∀ x : obj, Chases x Cat → Eats x Mouse
axiom R4 : ∀ x : obj, Kind x ∧ Chases x Cat → ¬ Eats x Mouse
axiom R5 : ∀ x : obj, Eats x Mouse → Big Mouse
axiom R6 : ∀ x : obj, Big x → Rough x
axiom R7 : ∀ x : obj, Visits x Cat ∧ Rough Cat → Eats x Bear
axiom R8 : ∀ x : obj, Visits x Cat → Chases x Tiger
axiom R9 : ∀ x : obj, Rough x → Chases x Cat

theorem mouse_chases_cat : Chases Mouse Cat :=
begin
  apply R9,
  apply R6,
  apply R5,
  apply R3,
  apply R9,
  exact T4,
end

-- The answer is True

-- Now let's try to prove the negation of the theorem, which is Mouse does not chase Cat

theorem not_mouse_chases_cat : ¬ Chases Mouse Cat :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean. So
-- The answer is True