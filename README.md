# RubyConf PT website

The first ever ruby conference in Portugal needed the first ever ruby conference
in Portugal website. For this we went with Jekyll and github pages, a very
simple and yet powerful setup for static pages.

## Changing the site

First you'll have to edit the HTML, SASS or CoffeeScript files in the `master`
branch. You can check your progress by running `jekyll serve` and when you're
done run `jekyll build`, to build the final product. There are other commands
you can use, give the [jekyll docs](http://jekyllrb.com/docs/usage/) a look.

You are now ready to commit (or open a pr) to master, but if you notice the
generated site (in the `_site` directory) is being ignored. Do not fret, the
reason for that is that in order to have the editable website as well as the
compiled one in the same repo, we had to add an extra branch called `gh-pages`
where the compiled website lives. This is just a github pages convention.

The next step is to go to that branch (`git checkout gh-pages`) and copy
everything that's in the `_site` directory to the main repo directory (`cp -r
_site .`), you can then remove the `_site` directory (`rm -r _site`).

At this point you should be able to commit (or open a pr) to the `gh-pages`
branch with your changes.

*Note:* The preferred flow is to open pull requests instead of committing
directly. In those cases you'll need to create a branch from either the `master`
or `gh-pages` branches, first.


### TL; DR

    git clone git@github.com:groupbuddies/rubyconf-pt.git
    git checkout -b my-master-branch
    ... Make changes ...
    jekyll build
    git add -A
    git commit
    git push -u origin my-master-branch
    ... Create pull request ...

    git checkout gh-pages
    git checkout -b my-gh-pages-branch
    cp -r _site .
    rm -r _site
    git add -A
    git commit
    git push -u origin my-gh-pages-branch
    ... Create pull request ...

# Credits

![groupbuddies](http://www.groupbuddies.com/logo.png)

RubyConf PT website is maintained by
[Group Buddies](http://groupbuddies.com/).

# License

This website is © 2014 GB-Software As A Service, Lda. It is free software and may be
redistributed under the terms specified in the [LICENSE](LICENSE) file.
