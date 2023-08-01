universe u

constant obj : Type u

constant BaldEagle : obj
constant Cow : obj
constant Mouse : obj
constant Rabbit : obj

constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Round : obj → Prop
constant Green : obj → Prop
constant Likes : obj → obj → Prop
constant Blue : obj → Prop
constant Red : obj → Prop

axiom A1 : Needs BaldEagle Cow
axiom A2 : Needs BaldEagle Mouse
axiom A3 : Round Cow
axiom A4 : ¬ Visits Mouse Rabbit
axiom A5 : Green Rabbit
axiom A6 : Needs Rabbit BaldEagle
axiom A7 : Visits Rabbit BaldEagle

axiom R1 : ∀ x : obj, Visits x Mouse → Likes x Cow
axiom R2 : ∀ x : obj, Likes x Mouse ∧ Blue x → Needs Mouse Rabbit
axiom R3 : ∀ x : obj, Needs x BaldEagle → Likes BaldEagle Rabbit
axiom R4 : ∀ x : obj, Needs x BaldEagle → Likes BaldEagle Mouse
axiom R5 : ∀ x : obj, Likes x Cow → Blue x
axiom R6 : ∀ x : obj, Red x ∧ Visits x Cow → Green Cow
axiom R7 : ∀ x : obj, Visits x Mouse → ¬ Visits x BaldEagle
axiom R8 : ∀ x : obj, Round x ∧ Needs x BaldEagle → Round BaldEagle
axiom R9 : ∀ x : obj, Visits x BaldEagle ∧ Likes BaldEagle Rabbit → Visits BaldEagle Mouse

theorem not_rabbit_visits_bald_eagle : ¬ Visits Rabbit BaldEagle :=
begin
end


theorem rabbit_visits_bald_eagle : Visits Rabbit BaldEagle :=
begin
end
