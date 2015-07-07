# URL Shortener

Let's build a URL Shortener. We will make a web application where we can add new urls and we will be assigned a shortened version. Then if we visit that shortened version we will be redirected to the url provided.

## Iteration 1

Maybe you are asking yourself how to start. Well, as usual, the first step is creating a model. We'll call it Link. This model should have two attributes; one that stores the original url and another one that stores the short one.

But there is a little detail you have to keep in mind. Lets take a deeper look to the shortened link:
```
http://localhost:3000/345
```
So we need a route like this:
```
get '/:shortlink' => ...
```
This route takes us to an action in the controller that redirects to the original link. But remember the eternal principle of the separation of concerns: the logic goes in the model. At this point of the game you should know what I mean...

So just take the :shortlink param and send it to a method in the model that searches by this attribute. And once you have the link, redirect to that page using the redirect_to method.

For now, you can set the shortlink the way you want. However, don't think about it too hard because we will change it in a second.


## Iteration 2: Random shortlink generator

Now that the basic functionality is set, lets add some flexibility to it. We want to store thousands of urls on our site, so we need to generate randomly our shortlinks, and we want to use letters both in upper and downcase.

For now we are going to generate shortlinks with 3 characters. But we want to have the option to change it in the future.

So lets build a method that takes a random value from a range as many times as the number we pass as a parameter (3 in this case).

## Iteration 3: Automatic add http

Let me ask you something... What happens if the user doesn't include the http:// part of the url? Try it!

Well, it seems that we have to fix this problem if we want our customers to be happy. Create a method that checks whether the url that the user inserts has the http:// and if it doesn't, prepends it.

## Iteration 4: Existing shortlinks

Make sure that when a user enters a link that has already been shortened, the app returns the existing shortlink instead of generating a new one. This is a key feature of our app, because it's going to free a lot of memory usage.