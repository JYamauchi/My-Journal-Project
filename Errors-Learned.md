Errors I had been encountered since the first day of the project. 
1. My first big mistake I made was models have many connections, which makes it more complicated. 
	- I thought this model connection: Users has_one profile, then profile has_many posts, then posts has_many photos and videos
	- When I tried to set up a simple devise system for users' accounts system, the bad models made this setup harder to establish as paths require more specific locations. for example, new_user_profile_posts_path was a long route term. 
	
2. Adding gem files can cause side-effects like Heroku couldn't recognize some of these gem files as I couldn't be able to upload my website to Heroku. 
	- Problem is that sometimes removing gem files to fix the Heroku's connection issue can still corrupt my web app like Jshint gem file.

3. Heroku requires Postgresql not SQLite

4. After I created the models and I encounter problems, then I scramble all over the places which could cause me to drown more than swimming. 
	- I need to focus on place at a time but at the same time, I need to stop being panick as I only have five days to develop the project. 

