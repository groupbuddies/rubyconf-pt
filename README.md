# RubyConf PT 2014's website

The first ever ruby conference in Portugal needed the first ever ruby conference
in Portugal website. For this we went with Jekyll and github pages, a very
simple and yet powerful setup for static pages.

## Changing the site

First you'll have to edit the HTML, SASS or CoffeeScript files in the `master`
branch. You can check your progress by running `jekyll serve` and when you're
done run `jekyll build`, to build the final product. There are other commands
you can use, give the [jekyll docs](http://jekyllrb.com/docs/usage/) a look.

You are now ready to commit (or open a PR) to master. However ,the generated
site (in the `_site` directory) is being ignored. Do not fret, the
reason for this is that the compiled website must live in the `gh-pages`
branch, leaving the master one for development only. This is just a github pages convention.

An easy way to easily set this up is to have the `_site` directory point to
your `gh-pages` branch. This way, any change you make in master will be
compiled to `_site`, which you can directly commit and publish

At this point you should be able to commit (or open a pr) to the `gh-pages`
branch with your changes.

*Note:* The preferred flow is to open pull requests instead of committing
directly. In those cases you'll need to create a branch from either the `master`
or `gh-pages` branches, first.


### TL; DR

    ... Setup ...
    git clone git@github.com:groupbuddies/rubyconf-pt
    cd rubyconf-pt
    git clone git@github.com:groupbuddies/rubyconf-pt _site -b gh-pages

    ... Make changes ...
    git checkout -b my-master-branch
    jekyll build
    git add -A
    git commit
    git push -u origin my-master-branch
    ... Create pull request ...

    ... Deploy compiled site ...
    cd _site
    git checkout -b my-gh-pages
    git add -A
    git commit
    git push -u origin my-gh-pages
    ... Create pull request ...

# About

RubyConf PT 2014 website was created by [Subvisual](http://subvisual.co).

[![Subvisual](https://raw.githubusercontent.com/subvisual/guides/master/github/templates/subvisual_logo_with_name.png)](http://subvisual.co)

If you need to contact the maintainer <a href="mailto:contact@subvisual.co">reach out to us</a>.

# License

RubyConf PT 2014's website is © 2014-2018 Subvisual. It is free software and may be
redistributed under the terms specified in the [LICENSE](LICENSE) file.
