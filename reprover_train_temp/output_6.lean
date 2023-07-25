universe u

constant obj : Type u

constant Bear : obj
constant Cat : obj
constant Dog : obj
constant Tiger : obj

constant Green : obj → Prop
constant Young : obj → Prop
constant Visits : obj → obj → Prop
constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Cold : obj → Prop
constant Rough : obj → Prop
constant Kind : obj → Prop

axiom T1 : Green Bear
axiom T2 : Young Bear
axiom T3 : Visits Bear Dog
axiom T4 : Chases Cat Bear
axiom T5 : ¬ Eats Cat Dog
axiom T6 : Eats Cat Tiger
axiom T7 : ¬ Cold Cat
axiom T8 : Green Cat
axiom T9 : Chases Dog Bear
axiom T10 : Eats Tiger Bear
axiom T11 : Rough Tiger
axiom T12 : Young Tiger

axiom R1 : ∀ x : obj, Young x → Chases x Tiger
axiom R2 : ∀ x : obj, Visits x Cat → Visits Cat Dog
axiom R3 : ∀ x : obj, Visits x Dog → Kind x
axiom R4 : Cold Tiger → Eats Tiger Dog
axiom R5 : ∀ x : obj, Green x → Eats x Bear
axiom R6 : Visits Cat Dog ∧ Green Dog → Rough Dog
axiom R7 : ∀ x : obj, Kind x → Visits x Cat
axiom R8 : ∀ x : obj, Eats x Bear ∧ ¬ Rough x → ¬ Cold Bear

theorem cat_visits_cat : Visits Cat Cat :=
begin
  apply R7,
  apply R3,
  apply R2,
  apply R7,
  apply R3,
  exact T3,
end

-- The answer is True

-- Now let's try to prove the negation of the theorem, which is Cat does not visit Cat

theorem not_cat_visits_cat : ¬ Visits Cat Cat :=
begin
  sorry
end

-- Looks like it cannot be proven in Lean. So
-- The answer is True