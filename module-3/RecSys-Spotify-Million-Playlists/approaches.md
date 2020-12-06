### Collaborative filtering
[Collaborative Filtering](https://en.wikipedia.org/wiki/Collaborative_filtering): This method makes automatic predictions (filtering) about the interests of a user by collecting preferences or taste information from many users (collaborating). The underlying assumption of the collaborative filtering approach is that if a person A has the same opinion as a person B on a set of items, A is more likely to have B's opinion for a given item than that of a randomly chosen person.
> - Matrix Factorization (select top relevant items)
> - learning to Rank (rank relevant items)
>
> CF Set up:
> - `user` : playlists
> - `items` : tracks
> - `ratings` : [1;0] or rank in the playlist

### Content based filtering
[Content-Based Filtering](http://recommender-systems.org/content-based-filtering/): This method uses only information about the description and attributes of the items users has previously consumed to model user's preferences. In other words, these algorithms try to recommend items that are similar to those that a user liked in the past (or is examining in the present). In particular, various candidate items are compared with items previously rated by the user and the best-matching items are recommended.

> - Based on similarities on the audio features and  
> - learning to Rank (rank relevant items)
>
> CB Set up:
> - Content profile is track profile based on audio features and user profile is the PID profile, based on the seed tracks.
> - `user` : playlist
> - `items` : tracks
> - `features` : audio features
