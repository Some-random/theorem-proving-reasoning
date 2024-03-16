-- natural language context: No digital media are analog. Every printed text is analog. All streaming services are digital. If an object is a hardcover book then it is printed text. If 1984 is a streaming service, then 1984 is a hardcover book.
-- natural language question: Based on the above information, is the following statement true, false, or uncertain? 1984 is a streaming service.
-- Below is the Lean formalization and proof


-- Introducing basic types for entities in our universe.
constant Person : Type

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

-- Axioms describe the relationships between the properties defined above.

-- No digital media are analog.
axiom A1 : ∀ (o : Object), is_digital_media o → ¬ is_analog o
-- Every printed text is analog.
axiom A2 : ∀ (o : Object), is_printed_text o → is_analog o
-- All streaming services are digital.
axiom A3 : ∀ (o : Object), is_streaming_service o → is_digital_media o
-- If an object is a hardcover book, then it is printed text.
axiom A4 : ∀ (o : Object), is_hardcover_book o → is_printed_text o
-- If 1984 is a streaming service, then 1984 is a hardcover book.
axiom A5 : is_streaming_service onenineeightfour → is_hardcover_book onenineeightfour

-- We aim to prove that 1984 is not a streaming service.

theorem not_onenineeightfour_is_streaming_service : ¬ is_streaming_service onenineeightfour :=
begin
    -- Assume that 1984 is a streaming service.
    intro h,
    -- If 1984 is a streaming service, it must also be a hardcover book according to A5.
    have h1 : is_hardcover_book onenineeightfour, from A5 h,
    -- If 1984 is a hardcover book, then it is printed text according to A4.
    have h2 : is_printed_text onenineeightfour, from A4 onenineeightfour h1,
    -- Every printed text is analog according to A2.
    have h3 : is_analog onenineeightfour, from A2 onenineeightfour h2,
    -- Now we're trying to prove a contradiction.
    -- We'll argue that if 1984 is analog, then it cannot be digital media.
    have h4 : ¬ is_digital_media onenineeightfour, {
        intro h5,
        -- Using A1, no digital media are analog.
        have h6 : ¬ is_analog onenineeightfour, from A1 onenineeightfour h5,
        contradiction,
    },
    -- If 1984 is a streaming service, then it's a type of digital media according to A3.
    have h5 : ¬ is_streaming_service onenineeightfour, {
        intro h7,
        have h8 := A3 onenineeightfour h7,
        contradiction,
    },
    contradiction,
end

