# Tournament-Results
Udacity Project2

DESCRIPTION:

In this project, you’ll be writing a Python module that uses the PostgreSQL database to keep 
track of players and matches in a game tournament.

The game tournament will use the Swiss system for pairing up players in each round: players are not eliminated,
and each player should be paired with another player with the same number of wins, or as close as possible.


Requirements:

1)Vagrant

2)Virtual Box

3)Python

Files Included In The Project:

1)tournament.sql-Contains of database schemas in the form of SQL create table commands.

2)tournament.py-Contains of codefor your module.

3)tournament_test.py- Contains unit tests that will test the functions you’ve written in tournament.py.
You can run the tests from the command line, using the command python tournament_test.py.

How to start with the project:

   - Install Vagrant and VirtualBox
   - Clone the fullstack-nanodegree-vm repository
   - Launch the Vagrant VM
   - Write SQL database and table definitions in a file (tournament.sql)
   - Use the command psql tournament to connect to the database tournament.
   - Use the command \i tournament.sql to import the whole file into psql at once.
   - Write Python functions filling out a template of an API (tournament.py)
   - Run a test suite to verify your code (tournament_test.py)
   
Functions in tournament.py:

The various functions and their corresponding test functions are:

1)connect - connects to the database.

2)deleteMatches() - deletes all matches records from the database.

3)deletePlayers() - deletes all players records from the database.

4)countPlayers() - returns the number of players currently registered.

5)registerPlayer() - adds a player to the database.

6)playerStandings() - Returns a list of the players and their win records, sorted by wins.

7)reportMatch() - Stores the outcome of a single match between two players in the database.

8)swissPairings() - Returns a list of pairs of players for the next round of a match.

9)registerTournament() - adds a tournament to the database.
