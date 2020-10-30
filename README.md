# Assignment
The home page must display three buttons labeled Create Backup, Purge Backup, and Search Backup.
When the Create Backup button is pressed, your application will back up all of the card information to a persistent data store, for each card, from this Pokémon card set (https://pokemontcg.io/cards?setCode=base4).
When the Purge Backup button is pressed, your application will destroy your copy of the card information that was backed up.
When the Search Backup button is pressed, your application will present the user with a way to search the backup of card information by name, hit point, or rarity. All cards that match the search criteria will be returned and presented to the user.

## Environment Setup
1. Install ruby 2.3.3
2. Open a terminal, and run `git clone git@github.com:nidhi5577/pokemon-cards.git` in your desired folder and navigate to this project directory 
3. Run `gem install bundler`
4. Run `bundle install`
5. Verify the `config/database.yml` file for any desired changes based on your username/password
5. Run `rake db:create` & `rake db:migrate`
6. Start the rails server `rails s`
