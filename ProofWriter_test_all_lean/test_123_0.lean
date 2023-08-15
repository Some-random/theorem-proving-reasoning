universe u

constant obj : Type u

constant BaldEagle : obj
constant Mouse : obj
constant Rabbit : obj
constant Tiger : obj

constant Eats : obj → obj → Prop
constant Young : obj → Prop
constant Likes : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Kind : obj → Prop
constant Round : obj → Prop
constant Red : obj → Prop

axiom A1 : Eats BaldEagle Tiger
axiom A2 : Young BaldEagle
axiom A3 : Likes BaldEagle Mouse
axiom A4 : Needs BaldEagle Rabbit
axiom A5 : Kind Mouse
axiom A6 : Needs Mouse BaldEagle
axiom A7 : Young Rabbit
axiom A8 : Needs Rabbit Mouse
axiom A9 : Round Tiger
axiom A10 : Likes Tiger BaldEagle
axiom A11 : Needs Tiger Mouse

-- Rule R1: If something likes the rabbit then it eats the mouse
axiom R1 : ∀ x : obj, Likes x Rabbit → Eats x Mouse

-- Rule R2: If something needs the rabbit then it likes the rabbit
axiom R2 : ∀ x : obj, Needs x Rabbit → Likes x Rabbit

-- Rule R3: All kind things are round
axiom R3 : ∀ x : obj, Kind x → Round x

-- Rule R4: If the mouse eats the rabbit then the mouse eats the bald eagle
axiom R4 : Eats Mouse Rabbit → Eats Mouse BaldEagle

-- Rule R5: If something eats the mouse then the mouse needs the rabbit
axiom R5 : ∀ x : obj, Eats x Mouse → Needs Mouse Rabbit


theorem not_red_tiger : ¬ Red Tiger :=
begin
  sorry
end


theorem red_tiger : Red Tiger :=
begin
  sorry
end
