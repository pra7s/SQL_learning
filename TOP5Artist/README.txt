1. Joined the tables to get a complete view of artists, their songs, and each song’s ranking entry, so every row represents one chart appearance tied to an artist.

2. Applied the rank <= 10 filter early to ensure only meaningful (Top 10) appearances are counted.

3. Grouped by artist name to aggregate all Top 10 appearances at the artist level rather than the song level.

4. Counted those appearances and used dense ranking to compare artists based on consistency of Top 10 performance, while handling ties correctly.