# Quizz Answer

## Q1 - How do you create a Rails app?
> rails new app-name [--webpack] [--database=postgresql] [-T]

## Q2 - How do you start coding a Rails project? Give the right sequence.
Coding the views?
Coding the controllers?
Coding the models?
> 3 -> 2 -> 1

## Q3 - How do you generate a Song model with a title and a year?

> rails g model Song title year:integer

What are the two created files?
```
db/migrate/<TIMESTAMP>_create_songs.rb`
app/models/song.rb
```

What is the rails command you should type then?
> rails db:migrate

## Q4 - How do you add a category (ex: "rock" , "electro" , etc..) to your songs table using the right Rails generator?
> rails g migration AddCategoryToSongs category

What is the created file?
>db/migrate/<TIMESTAMP>_add_category_to_songs.rb

## Q5 - Add a presence validation on song titles & crash-test your model in the console

`models/song.rb`
> Answer in the repo

```
Crash Test in Terminal
> let_the_music_play = Song.new
> let_the_music_play.valid?
# => false
> let_the_music_play.errors.messages
# => {:title=>["can't be blank"]}
> let_the_music_play.title = "Let the music play"
> let_the_music_play.valid?
# => true
> let_the_music_play.save
```

## Q6 - What is the Rails flow you need to follow again and again? Give the correct order
> 3 -> 1 -> 2 -> 4

## Q7 - What are the 4 different parts inside an HTTP request?
>1. Verb (or method)
>GET POST PATCH DELETE - there are other verbs but we'll only use those in the REST pattern
>2. URL
> https://kitt.lewagon.com/camps/1/dashboard?path=00-Setup) - comment all the parts
> 3. Headers
> accept-language, user-agent, ... - metadata sent by the browser
> 4. Body
> { title: "Let the music play", year: 1976 } - data sent through a <form>
> Only for POST and PATCH

## Q8 - Are the HTTP requests in the following 2 routes the same? Why?
> No - not the same HTTP verb

## Q9 - What's the difference between a GET and a POST request?
> GET requests have no body. Data can only be sent via the url's query string (visible to users)

## Q10 - Complete the controller code using the correct params key?
```
class SongsController < ApplicationController
 def search
   @songs = Song.where(title: params[:query])
 end
end
```
## Q11 - Complete the controller code using the correct params key?
```
class SongsController < ApplicationController
 def search
   @songs = Song.where(title: params[:name])
 end
end
```

## Q12 - What are the 7 CRUD routes generated by the resources method in Rails?
```
GET "/songs",          to: "songs#index"
GET "/songs/new",      to: "songs#new"
POST "/songs",         to: "songs#create"
GET "/songs/:id",      to: "songs#show"
GET "/songs/:id/edit", to: "songs#show"
PATCH "/songs/:id",    to: "songs#update"
DELETE "/songs/:id",   to: "songs#destroy"
```

## Q13 - How do you print your routes and their URL prefix helpers?
> rails routes

## Q14 - How do you generate a controller for your songs?
> rails g controller songs

## Q15 - Implement the Read actions in your songs controller?
> Answer in the repo

## Q16 - What are the 2 requests needed to create a new song? Implement the songs#new and songs#create actions.
> Answer in the repo

## Q17 - Why do we have to filter parameters using "strong params" in the controller?
Any user can add inputs in the HTML using the browser's inspector before submitting a form.

## Q18 - Hard question: What is the HTML generated?
```
<form action="/songs" method="post">
  <input type="text" name="song[title]" value="">
  <input type="submit" value="Create song">
</form>
```

## Q19 - Hard question: What is the HTML generated?
```
<form action="/songs/18" method="patch">
  <input type="text" name="song[title]" value="Hey jude">
  <input type="submit" value="Create song">
</form>
```

# Adding a 2nd model

## Q20 - Now you want to add reviews to your app. Here are some constraints
> Answer in the repo
