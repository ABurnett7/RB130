def assign_categories(array)
  p yield(array)
end

birds = %w(raven finch hawk eagle)

assign_categories(birds) do |array|
  _, _, *raptors = array
  raptors
end