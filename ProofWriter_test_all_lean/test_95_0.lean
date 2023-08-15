universe u

constant obj : Type u

constant Anne : obj
constant Charlie : obj
constant Erin : obj
constant Gary : obj

constant Big : obj → Prop
constant Cold : obj → Prop
constant Round : obj → Prop
constant Furry : obj → Prop
constant Kind : obj → Prop
constant Nice : obj → Prop
constant Quiet : obj → Prop

axiom A1 : Big Anne
axiom A2 : Cold Anne
axiom A3 : Round Anne
axiom A4 : Cold Charlie
axiom A5 : Furry Charlie
axiom A6 : Kind Charlie
axiom A7 : Nice Charlie
axiom A8 : Round Charlie
axiom A9 : Big Erin
axiom A10 : Furry Gary
axiom A11 : Kind Gary
axiom A12 : Nice Gary
axiom A13 : Quiet Gary
axiom A14 : Round Gary

-- Rule R1: Big things are quiet
axiom R1 : ∀ x : obj, Big x → Quiet x

-- Rule R2: If something is quiet and big then it is kind
axiom R2 : ∀ x : obj, Quiet x ∧ Big x → Kind x

-- Rule R3: If something is cold then it is round
axiom R3 : ∀ x : obj, Cold x → Round x

-- Rule R4: Nice things are cold
axiom R4 : ∀ x : obj, Nice x → Cold x

-- Rule R5: All cold things are kind
axiom R5 : ∀ x : obj, Cold x → Kind x

-- Rule R6: If something is kind then it is nice
axiom R6 : ∀ x : obj, Kind x → Nice x

-- Rule R7: If something is nice and furry then it is quiet
axiom R7 : ∀ x : obj, Nice x ∧ Furry x → Quiet x

-- Rule R8: All kind things are nice
axiom R8 : ∀ x : obj, Kind x → Nice x


theorem erin_is_kind : Kind Erin :=
begin
  sorry
end


theorem not_kind_Erin : ¬ Kind Erin :=
begin
  sorry
end
