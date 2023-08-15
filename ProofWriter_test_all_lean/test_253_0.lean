universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Dog : obj
constant Lion : obj

constant Green : obj → Prop
constant Cold : obj → Prop
constant Red : obj → Prop
constant Blue : obj → Prop
constant Rough : obj → Prop
constant Chases : obj → obj → Prop
constant Eats : obj → obj → Prop
constant Likes : obj → obj → Prop

axiom A1 : Chases BaldEagle Cat
axiom A2 : ¬ Green BaldEagle
axiom A3 : Eats Cat Lion
axiom A4 : ¬ Cold Cat
axiom A5 : ¬ Green Cat
axiom A6 : Red Cat
axiom A7 : ¬ Chases Dog Lion
axiom A8 : Red Dog
axiom A9 : Chases Lion Dog
axiom A10 : ¬ Red Lion

-- Rule R1: If someone is blue then they like the lion
axiom R1 : ∀ x : obj, Blue x → Likes x Lion

-- Rule R2: If someone likes the bald eagle then they like the cat
axiom R2 : ∀ x : obj, Likes x BaldEagle → Likes x Cat

-- Rule R3: If someone chases the dog then they eat the dog
axiom R3 : ∀ x : obj, Chases x Dog → Eats x Dog

-- Rule R4: If someone eats the dog then they like the bald eagle
axiom R4 : ∀ x : obj, Eats x Dog → Likes x BaldEagle

-- Rule R5: If someone chases the cat then they eat the bald eagle
axiom R5 : ∀ x : obj, Chases x Cat → Eats x BaldEagle

-- Rule R6: If someone is green and rough then they chase the lion
axiom R6 : ∀ x : obj, Green x ∧ Rough x → Chases x Lion

-- Rule R7: If someone eats the lion then they do not eat the cat
axiom R7 : ∀ x : obj, Eats x Lion → ¬ Eats x Cat

-- Rule R8: If someone likes the cat and the cat is not green then the cat is blue
axiom R8 : ∀ x : obj, Likes x Cat ∧ ¬ Green Cat → Blue Cat


theorem not_likes_lion_cat : ¬ Likes Lion Cat :=
begin
  sorry
end


theorem likes_lion_cat : Likes Lion Cat :=
begin
  sorry
end
