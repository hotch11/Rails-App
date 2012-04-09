atom_feed do |feed|
feed.title("LJMU Assets Feed")
feed.updated(@assignment2s.first.created_at)
@assignment2s.each do |assignment2s|
feed.entry(assignment2s) do |entry|
entry.title(assignment2s.name)
entry.content(assignment2s.description, :type =>
'html')
end
end
end

