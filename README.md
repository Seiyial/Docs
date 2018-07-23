Heroku buildpack: Markdown
==========================

Run a static web site from Markdown files.

1. Create an `index.md` file:

        echo "# hello, world" > index.md

2. Create a git repo containing the file:

        git init
        git add index.md
        git commit -m init

3. Create an app on Heroku:

        heroku create -s cedar --buildpack https://github.com/jamesward/heroku-buildpack-markdown.git

4. Push the repo to Heroku:

        git push heroku master

5. Open your web app:

        heroku open

