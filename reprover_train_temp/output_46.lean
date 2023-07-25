universe u

constant obj : Type u

constant Bear : obj
constant Cow : obj
constant Cat : obj
constant Lion : obj

constant Green : obj → Prop
constant Nice : obj → Prop
constant Likes : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Young : obj → Prop
constant Blue : obj → Prop

axiom T1 : Green Bear
axiom T2 : Visits Bear Cow
axiom T3 : Green Cat
axiom T4 : Nice Cat
axiom T5 : Likes Cow Cat
axiom T6 : Visits Cow Lion
axiom T7 : Visits Lion Cat

axiom R1 : ∀ x : obj, Visits x Cow → Eats Cow Lion
axiom R2 : ∀ x : obj, Eats x Bear → Visits Bear Cat
axiom R3 : ∀ x : obj, Young x → Eats x Bear
axiom R4 : ∀ x : obj, Blue x → Eats x Bear
axiom R5 : ∀ x : obj, Likes x Lion → Young x
axiom R6 : Nice Lion → Eats Lion Bear
axiom R7 : ∀ x : obj, Eats x Lion → Likes x Lion
axiom R8 : ∀ x : obj, Green x → Eats x Cat

theorem bear_visits_cat : Visits Bear Cat :=
begin
  apply R2,
  apply R3,
  apply R5,
  apply R7,
  apply R1,
  exact T2,
end

-- The answer is True