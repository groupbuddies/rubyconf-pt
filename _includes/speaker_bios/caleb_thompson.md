# Talk Title

**Search Your Feelings: Multi-Table Full Text Search in Postgres**

# Talk description

Easily searching across an application’s data is a pervasive need. If you are lucky, you can get away with simple sorting or searching on a single column, but it is more likely that you need full text search across multiple models, all from a single search. Thanks to the power of Postgres’ full text search, rolling your own search isn't too difficult. Following an actual feature evolution which I worked on for a client, we will start with a search feature that queries a single column with `LIKE` and build up to finding results across multiple columns on multiple tables using database views, optimizing the query time with full text indices and representing the results as a polymorphic association on an ActiveRecord model in Rails.
