def reading_time(text)
  fail "TextNotFound" if text == nil || text.empty?
  (text.split.size / 200.0).ceil
end