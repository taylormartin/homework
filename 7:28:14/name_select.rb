def pick_name(fn)
  File.readlines(fn).sample.strip
end
