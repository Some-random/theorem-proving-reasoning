universe u

constant obj : Type u

constant BaldEagle : obj
constant Lion : obj
constant Mouse : obj
constant Cat : obj

constant Rough : obj → Prop
constant Likes : obj → obj → Prop
constant Sees : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Kind : obj → Prop
constant Cold : obj → Prop
constant Green : obj → Prop

axiom A1 : Rough BaldEagle
axiom A2 : ¬ Likes BaldEagle Lion
axiom A3 : Sees BaldEagle Mouse
axiom A4 : ¬ Eats Cat Lion
axiom A5 : Sees Cat Mouse
axiom A6 : Sees Lion Cat
axiom A7 : Eats Mouse Lion
axiom A8 : Likes Mouse BaldEagle
axiom A9 : Sees Mouse BaldEagle
axiom A10 : Sees Mouse Cat

-- Rule R1: If someone likes the bald eagle and the bald eagle does not like the cat then the cat does not like the lion
axiom R1 : ∀ x : obj, Likes x BaldEagle ∧ ¬ Likes BaldEagle Cat → ¬ Likes Cat Lion

-- Rule R2: If someone eats the mouse then the mouse is kind
axiom R2 : ∀ x : obj, Eats x Mouse → Kind Mouse

-- Rule R3: If the lion is not rough then the lion is cold
axiom R3 : ¬ Rough Lion → Cold Lion

-- Rule R4: If someone likes the lion then the lion is green
axiom R4 : ∀ x : obj, Likes x Lion → Green Lion

-- Rule R5: If someone is kind then they like the lion
axiom R5 : ∀ x : obj, Kind x → Likes x Lion

-- Rule R6: If someone eats the lion then the lion eats the mouse
axiom R6 : ∀ x : obj, Eats x Lion → Eats Lion Mouse

-- Rule R7: If someone likes the cat then they do not like the bald eagle
axiom R7 : ∀ x : obj, Likes x Cat → ¬ Likes x BaldEagle

-- Rule R8: If someone is green then they like the bald eagle
axiom R8 : ∀ x : obj, Green x → Likes x BaldEagle


theorem lion_is_rough : Rough Lion :=
begin
  sorry
end


theorem not_lion_is_rough : ¬ Rough Lion :=
begin
  sorry
end
