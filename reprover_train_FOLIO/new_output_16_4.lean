-- Introducing basic types for entities in our universe.
constant Object : Type

-- Defining properties for the objects in our universe.
constant is_digital_media : Object → Prop
constant is_analog : Object → Prop
constant is_printed_text : Object → Prop
constant is_streaming_service : Object → Prop
constant is_hardcover_book : Object → Prop

-- Defining a specific object.
constant onenineeightfour : Object

-- Context from the information

-- No digital media are analog.
axiom A1 : ∀ (o : Object), is_digital_media o → ¬ is_analog o
-- Every printed text is analog.
axiom A2 : ∀ (o : Object), is_printed_text o → is_analog o
-- All streaming services are digital.
axiom A3 : ∀ (o : Object), is_streaming_service o → is_digital_media o
-- If an object is a hardcover book then it is printed text.
axiom A4 : ∀ (o : Object), is_hardcover_book o → is_printed_text o
-- If 1984 is a streaming service, then 1984 is a hardcover book.
axiom A5 : is_streaming_service onenineeightfour → is_hardcover_book onenineeightfour

-- Formalizing the Questions

-- Question 1
-- 1984 is printed text.
-- Let's first prove the positive case.

theorem onenineeightfour_is_not_streaming_service : ¬ is_streaming_service onenineeightfour :=
begin
  intro h,
  -- Use A5 to conclude that 1984 is a hardcover book
  -- Then use A4 to deduce that it's printed text, and subsequently an analog object using A2
  apply A1 onenineeightfour (A3 onenineeightfour h),
  -- Chain the results to arrive at the contradiction
  apply A2 onenineeightfour (A4 onenineeightfour (A5 h)),
end

-- The answer is Unknown

-- Question 3
-- 1984 is not a streaming service.
-- Let's first prove the positive case.
