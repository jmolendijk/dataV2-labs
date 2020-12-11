![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Automatic playlist continuation
Inspired by [Spotify Million Playlist Dataset Challenge](https://www.aicrowd.com/challenges/spotify-million-playlist-dataset-challenge)

## Introduction
People love playlist. Spotify reported that their users have generated over 4 bn playlists [2]. Various industry studies indicate that playlists account for a third of playtime [1] , and over a half of users say that playlists are replacing albums for them [2].

Playlists carry benefist for consumers by providing personalised music discoverya and recommedations for various occasions, moods and themes.
The importance of playlist for the music industry is also paramount, covering use cases like consumer engagement improvement, increased playtime, music search, but also helping less known artist get discovered though automatically generated playlists.

## Task

In this project I have applied Content Based filtering and collaborative filtering to solve the task of automatic playlist creation based on first n tracks from a palylist or n randomly selected items from a playlist.

## Dataset

Dataset comes from original [1] [Spotify Million Playlist Dataset Challenge](https://www.aicrowd.com/challenges/spotify-million-playlist-dataset-challenge)

## Models
The project used collaboartive filtering and content based filtering as two main approaches that were tested

#### Collaborative filtering 
[Collaborative Filtering](https://en.wikipedia.org/wiki/Collaborative_filtering): This method makes automatic predictions (filtering) about the interests of a user by collecting preferences or taste information from many users (collaborating). The underlying assumption of the collaborative filtering approach is that if a person A has the same opinion as a person B on a set of items, A is more likely to have B's opinion for a given item than that of a randomly chosen person.

#### Content based filtering
[Content-Based Filtering](http://recommender-systems.org/content-based-filtering/): This method uses only information about the description and attributes of the items users has previously consumed to model user's preferences. In other words, these algorithms try to recommend items that are similar to those that a user liked in the past (or is examining in the present). In particular, various candidate items are compared with items previously rated by the user and the best-matching items are recommended.

Notebooks:
- `modeling-notebooks/CB00_audio_features.ipynb`
- WIP: `modeling-notebooks/CB01_Audio_features_genres_data_preparation.ipynb`
- WIP: `modeling-notebooks/CCB01_Audio_features_genres_model.ipynb`


## Evaluation
Two information retrival systems evaluation metrics were used, partially following the set up from the original challenge.
[Notebook](https://github.com/IrynaHorova/dataV2-labs/blob/master/module-3/RecSys-Spotify-Million-Playlists/modeling-notebooks/evaluation-NDCG-R-Precision.ipynb) and the [Original Challenge Definitions](https://www.aicrowd.com/challenges/spotify-million-playlist-dataset-challenge#evaluation).
To complete the evaluation, data set is split into pseudo train and test sets. Each playlist in the test set is split into two subsets: seed tracks and hold-out, or ground thruth, tracks. Train playlists and test playlists containing only seed tracks are used to train the models. Test playlists containing only seed tracks are then used to obtain recommendations from the models. The `R-procesion` and `NDCG` of the obtained recommendation is calculated against the Ground truth

> - `R-procesion`  measures the number of retrieved relevant tracks divided by the number of known relevant tracks (i.e., the number of withheld tracks)
> - `Normalised Discounted Cumulative Gain (NDGS)`  Discounted Cumulative Gain (DCG) measures the ranking quality of the recommended tracks, increasing when relevant tracks are placed higher in the list. Normalized DCG (NDCG) is determined by calculating the DCG and dividing it by the ideal DCG in which the recommended tracks are perfectly ranked

## Project Organization
  
```RecSys-Spotify-Million-Playlists/
├── data-processing-notebooks/     <- Notebooks with data extractions and processing
├── evaluation/                    <- Evaluation results in csv
├── modeling-notebooks/            <- Notebooks with models and evaluation
├── README.md                      <- High level readme file
└── src/                           <- scripts provided with data set to to obtain basic descriptive statistics of the dataset
```


## Resources
  

[1] [C.W. Chen, P. Lamere, M. Schedl, and H. Zamani. Recsys Challenge 2018: Automatic Music Playlist Continuation. In Proceedings of the 12th ACM Conference on Recommender Systems (RecSys ’18), 2018. ](https://arxiv.org/pdf/1810.01520.pdf)

[2] [Spotify Million Playlist Dataset Challenge](https://www.aicrowd.com/challenges/spotify-million-playlist-dataset-challenge)

[3] [Spotify Web API](https://developer.spotify.com/console/)

[4] [Recommender system](https://en.wikipedia.org/wiki/Recommender_system)

[5] [Introduction to recommender systems](https://towardsdatascience.com/introduction-to-recommender-systems-6c66cf15ada)

[6] [Playlists: Good Or Bad For Musicians?](https://output.com/blog/playlists-good-or-bad-for-musicians#:~:text=Playlists%20accounted%20for%2031%25%20of,listener%20survey%20conducted%20in%202016.&text=Meanwhile%2C%20streaming%20once%20again%20soared,audio%20streams%20over%20last%20year.%E2%80%9D)

[7] [Spotify Sentiment Analysis](https://towardsdatascience.com/spotify-sentiment-analysis-8d48b0a492f2)

[8] [Recommender Systems in Python 101](https://www.kaggle.com/gspmoreira/recommender-systems-in-python-101)

[9] [Evaluate your Recommendation Engine using NDCG](https://towardsdatascience.com/evaluate-your-recommendation-engine-using-ndcg-759a851452d1)

[10] [How to Build a Memory-Based Recommendation System using Python Surprise](https://towardsdatascience.com/how-to-build-a-memory-based-recommendation-system-using-python-surprise-55f3257b2cf4)

[11] [How to Build a Model-Based Recommendation System using Python Surprise](https://towardsdatascience.com/how-to-build-a-model-based-recommendation-system-using-python-surprise-2df3b77ab3e5)

[12] [ALS Implicit Collaborative Filtering](https://medium.com/radon-dev/als-implicit-collaborative-filtering-5ed653ba39fe)

[13] [Beginner Tutorial: Recommender Systems in Python](https://www.datacamp.com/community/tutorials/recommender-systems-python)

[14] [Stop One-Hot Encoding Your Categorical Variables](https://towardsdatascience.com/stop-one-hot-encoding-your-categorical-variables-bbb0fba89809)