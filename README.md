# Blog template
A simple blog project created using rails. Originally intended to be a blog for my sister, I enjoyed working on it and decided to make it as a template for other blogs to make. At the moment this file is being updated, the project is already ahead of its source origin.
The blog is already in production and can be seen at [this link.](http://groselha-factory.tk) Everything is in portuguese, but even if you don't speak the language you can see how it works and its functions.
### Features
At the tie of this update, the blog should register new posts (complete with WYSIWYG interface), upload pictures, let the admin log in and have a tag system complete with a tag cloud.
The admin log is powered by the **'Devise'** gem, and with some configuration can support multiple posters, but the blog has been designed as a personal one, thus having only one author.
The tag system feels very basic now, but it is powered by the **'acts-as-taggable-on'** Gem, which allows for many more powerful tag features, that will be implemented as the blog needs it.
New features will be implemented soon.
### Running it on your machine
If you want to copy this project and test it on your machine, you are free to do it so, but be aware that this has been made to run on a unix system, so it is not advised to run this on a windows machine, as you might waste your time trying to get everything to work properly.

You will need Ruby and Rails to be installed on your machine to run this app, also there might be a series of other packages that you might need to run it, but I could not keep track of. Message me if you need any help.

To run the blog on your machine, after cloning this repository and installing everything necessary, navigate to the folder where you cloned it and on the terminal run the command
```
$ rails server
```
the blog will be available to be seen on the address http://localhost:3000/ on any browser.