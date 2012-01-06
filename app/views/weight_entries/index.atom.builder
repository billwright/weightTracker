atom_feed do |feed|
    feed.title "My Weight"
    
    feed.updated @weightEntries.first.updated_at
    
    @weightEntries.each do |weightEntry|
        feed.entry(weightEntry) do |atomEntry|
            atomEntry.title "My weight on #{weightEntry.on}"
            atomEntry.content weightEntry.weight
            
            atomEntry.author do |author|
                author.name "Bill Wright"
            end
        end
    end
end