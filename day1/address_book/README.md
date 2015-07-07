# Address Book

We're going to make a handly little Rails app to store all of your contacts.

Each contact should have:

Name
Address
Phone number
Email address
We should also be able to add contacts, delete contacts, browse the full list of contacts, and search for contacts.

Sounds useful, right? Let's get started!

## Iteration 1: List your contacts.

Create a new Rails project called addressbook.

Make a Contact model with a name, address, phone number, and email address.

Validate that the name and address are present.

Make a contacts controller with a index, create, destroy, and show actions.

Add the appropriate routes

In your db/seeds.rb file, seed your database with some contacts.

The index page should list all of the contacts by name. Make each one a link to its show page, where you can display the actual contact info (address, email address, phone).

# Iteration 2: Ordering your contacts

By default, your contacts should be listed in alphabetical order.

Users should be able to search for contacts by the first letter of the first name. Ex. if the user searches for "S" then they should get a list of all the contacts whose first name starts with "S". Create a search field on the index page and display the search results on a new page.

# Iteration 3: Add new contacts

So far so good, you have a very cool online address book, but what if you make some new friends? You need a form to add new contacts.

Add the new action to your contacts controller and add a /new route to your routes.rb

Add a link on the home page to a new contact form, where users can add contacts.

In addition to your previous validations, add validations to ensure that any phone numbers and email addresses are valid. You can use Regular Expressions, aka Regex, for this.

# Iteration 4: Favourites

You probably have some ~favourite~ contacts. Add a button to each contacts' page that marks them as a favourite, and make a new page where you list just your favourite contacts.

You'll need to make a new migration to add a new column to the database where you save the contacts' status as favourite.