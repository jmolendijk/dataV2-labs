![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | Neural Networks

## Introduction

This lab will let you practice performing neural network analysis. It will also introduce you additional concepts in neural network analysis and Tensorflow. You will be introduced to a web tool called [Tensorflow Playground](http://playground.tensorflow.org) with which you can play with and learn about the hyperparameters of Tensorflow.

## Approaches

### Getting Started

Complete Challenge 1, 2, and Bonus (optional) in order. Follow the instructions and add your code and explanations as necessary.

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
> CB Set up
> - Content profile is track profile based on audio features and user profile is the PID profile, based on the seed tracks.
> - `user` : playlist
> - `items` : tracks
> - `features` : audio features


### Evaluation
Use known information retrival systems evaluation metrics
[Notebook](https://github.com/IrynaHorova/dataV2-labs/blob/master/module-3/RecSys-Spotify-Million-Playlists/modeling-notebooks/evaluation-NDCG-R-Precision.ipynb) and the [Original Challenge Defintions](https://www.aicrowd.com/challenges/spotify-million-playlist-dataset-challenge#evaluation)

> - `R-procesion`  measures the number of retrieved relevant tracks divided by the number of known relevant tracks (i.e., the number of withheld tracks)
> - `Normalised Discounted Cumulative Gain (NDGS)`  Discounted Cumulative Gain (DCG) measures the ranking quality of the recommended tracks, increasing when relevant tracks are placed higher in the list. Normalized DCG (NDCG) is determined by calculating the DCG and dividing it by the ideal DCG in which the recommended tracks are perfectly ranked
> - `Optional` [Recommended Song Clicks](https://www.aicrowd.com/challenges/spotify-million-playlist-dataset-challenge#evaluation) is the number of refreshes needed before a relevant track is encountered

> - original data set is split into pseudo train and test, where train playlists are taken as is and hold out tracks (Ground truth) are removed from test playlists. This data set is then passed to recommendation models, and the `R-procesion` amd NDGS is calculated against the Ground truth

## Project Organization

    RecSys-Spotify-Million-Playlists/
??? .gitignore
??? APPROACHES.md <- ddd
??? credentials/
?   ??? credentials.ipynb
??? data-processing-notebooks/
?   ??? collaborative-filtering-data-preparation-scale-down.ipynb
?   ??? collaborative-filtering-data-preparation.ipynb
?   ??? dictionaries_tracks_desc_pids.ipynb
?   ??? explore-with-provided-scripts.ipynb
?   ??? mpd-slice-combine.ipynb
?   ??? spotify-track-api.ipynb
?   ??? track-uri-combine.ipynb
??? evaluation/
?   ??? ALS_binary_topn_500_100.csv
?   ??? ALS_binary_topn_500_10000.csv
?   ??? ALS_pos_topn_500_10000.csv
?   ??? CB_audio_features_1.csv
?   ??? CB_audio_features_10.csv
?   ??? CB_audio_features_1000.csv
?   ??? SVD_binary100_10000.csv
?   ??? SVD_binary50_10000.csv
?   ??? SVD_pos100_10000.csv
?   ??? SVD_pos50_10000.csv
??? Make tree.ipynb
??? modeling-notebooks/
?   ??? CB00_Audio_features_full_data.ipynb
?   ??? CF00_Model_Surprise_50pct_sample.ipynb
?   ??? CF00_Model_Surprise_scaled_down.ipynb
?   ??? CF01_Memory_based_scaled_down.ipynb
?   ??? CF02_Model_ALS_Implicit_binary_full_data.ipynb
?   ??? CF02_Model_ALS_Implicit_pos_full_data.ipynb
?   ??? CF03_Model_SVD_sparse_matrix_binary_ratings .ipynb
?   ??? CF03_Model_SVD_sparse_matrix_pos_ratings.ipynb
?   ??? evaluation.ipynb
?   ??? tenor.gif
?   ??? Untitled.ipynb
??? README.md
??? src/
    ??? __pycache__/
        ??? imp.cpython-38.pyc

## Resources

* [xx](https://xx)





