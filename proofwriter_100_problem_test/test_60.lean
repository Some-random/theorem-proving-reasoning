universe u

constant obj : Type u

constant BaldEagle : obj
constant Cat : obj
constant Cow : obj
constant Squirrel : obj

constant Eats : obj → obj → Prop
constant Needs : obj → obj → Prop
constant Visits : obj → obj → Prop
constant Green : obj → Prop
constant Blue : obj → Prop
constant Young : obj → Prop
constant Nice : obj → Prop

axiom A1 : Eats BaldEagle Cat
axiom A2 : Needs BaldEagle Cow
axiom A3 : Visits BaldEagle Squirrel
axiom A4 : ¬ Eats Cat Squirrel
axiom A5 : Green Cat
axiom A6 : Needs Cat Cow
axiom A7 : Young Cow
axiom A8 : Eats Squirrel Cat
axiom A9 : Blue Squirrel
axiom A10 : Needs Squirrel BaldEagle
axiom A11 : Needs Squirrel Cow

axiom R1 : ∀ x : obj, Needs x Cow ∧ ¬ Nice x → Eats x Squirrel
axiom R2 : ∀ x : obj, Eats x Cow ∧ Needs Cow BaldEagle → Eats x Squirrel
axiom R3 : ∀ x : obj, Needs x Cat → Needs x BaldEagle
axiom R4 : ∀ x : obj, Eats x Squirrel ∧ Visits x Squirrel → Eats Squirrel BaldEagle
axiom R5 : ∀ x : obj, Needs x Squirrel → ¬ Needs Squirrel BaldEagle
axiom R6 : ∀ x : obj, Needs x Cat → ¬ Eats Cat Cow
axiom R7 : ∀ x : obj, Needs x Cat ∧ Needs x BaldEagle → Young BaldEagle
axiom R8 : ∀ x : obj, Young x → Needs x Cat
axiom R9 : ¬ Eats Squirrel BaldEagle → Visits Squirrel Cow

theorem cow_needs_bald_eagle : Needs Cow BaldEagle :=
begin
end


theorem not_cow_needs_bald_eagle : ¬ Needs Cow BaldEagle :=
begin
end
