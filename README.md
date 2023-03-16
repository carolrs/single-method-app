# Reading time Method Design Recipe

Copy this into a `recipe.md` in your project and fill it out.

## 1. Describe the Problem

> As a user  
> So that I can manage my time  
> I want to see an estimate of reading time for a text, assuming that I can read
> 200 words a minute.

The program takes a text and estimate the time to read in minutes.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# `reading_time` estimates the reading time for given text
number_minutes = reading_time(text_to_be_read)
text_to_be_read: a string (e.g. "Once upon a time...")
number_minutes: a number of minutes (e.g. 1)
# The method doesn't print anything

```

### side-effects
Throws a  fail "TextNotFound" when text is empty or nil


## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE
reading_time("Text with 300 words [...]") => 2
reading_time("Text with 200 words [...]") => 1
reading_time("Text with 100 words [...]") => 1
reading_time("") throws an error "TextNotFound"
reading_time(nil) throws an error "TextNotFound"
```

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
