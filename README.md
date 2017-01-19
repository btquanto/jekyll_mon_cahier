# Jekyll Mon Cahier

Jekyll Mon Cahier is a simple, clean, and elegant Jekyll theme, based on the [Mon Cahier wordpress theme](https://wordpress.org/themes/mon-cahier/) by [Christine Rondeau](https://wordpress.org/themes/author/crondeau/)

![Jekyll Mon Cahier](/public/images/jekyll-mon-cahier.png)

# Content

* [Usage](#usage)
* [Options](#options)
    * [Posts](#posts)
    * [Pages](#pages)
    * [Sidebar](#sidebar)
    * [Categories](#categories)
    * [Tags](#tags)
    * [Recommended posts](#recommended-posts)
* [Author](#author)
* [License](#license)

# Usage

Jekyll Mon Cahier provides a full Jekyll setup. There are some usage options:

## Using github pages

* Fork this repo to your github account
* Rename the repo to `<username>.github.io`. Your site will be available at `<username>.github.io`
* If you want a custom domain, create a CNAME record and point it to `<username>.github.io`, then add your custom domain in the `CNAME` file.

## Using Jekyll server

* Install ruby

    ```
curl -L https://get.rvm.io | bash -s stable --ruby=2.0.0
    ```

* Install Jekyll server

    ```
gem install jekyll
    ```

* Serve the site

    ```
jekyll serve
    ```

* Open [localhost:4000](http://localhost:4000), and there it is

## Using docker

* Install docker by following instructions on [Docker's website](https://docker.io/). Make sure all necessary gems are installed as well ()
* Use docker to serve your site.
    I am using [btquanto/docker-jekyll](https://hub.docker.com/r/btquanto/docker-jekyll/) docker image.

    ```
docker run -d --name jekyll \
    -v `pwd`:/src \
    -p 4000:4000 \
    btquanto/docker-jekyll jekyll serve -H 0.0.0.0 --drafts
    ```

    The [grahamc/jekyll](https://hub.docker.com/r/grahamc/jekyll/) works as well, but the image size is much bigger (816.4MB in comparison to 226.5MB).
    
    ```
docker run -d --name jekyll \
    -v `pwd`:/src \
    -p 4000:4000 \
    grahamc/jekyll serve -H 0.0.0.0 --drafts
    ```
    
    I prepared a `docker-compose.yml` file, so you can also install and use `docker-compose`. It by default uses the [btquanto/docker-jekyll](https://hub.docker.com/r/btquanto/docker-jekyll/) image
    
    ```
docker-compose up -d
    ```

# Options

## Posts

Place your posts inside `_posts` folder. The layout for posts is `post`.

Example: The post **hello world**'s front matter

``` yaml
---
layout: post
title: Hello world
is_recommended: true
category: Hello World
tags: ["welcome", "hello"]
---
```

Read more on [Jekyll's official documentation](https://jekyllrb.com/docs/posts/)

## Pages

Place your pages inside root folder.

Example: The page **about**'s front matter

``` yaml
---
layout: page
title: About
---
```

Read more on [Jekyll's official documentation](https://jekyllrb.com/docs/pages/)

## Sidebar

Edit `_include/sidebar.html` to add more stuffs into the sidebar

## Categories

Posts can be categorized into categories. Each post should only be in 1 category. The list of all categories is located on the side bar.

``` yaml
---
layout: post
title: Hello world
category: Hello World
---
```

## Tags

Posts can be tagged. A tag cloud that lists all tags is located on the sidebar

``` yaml
---
layout: post
title: Hello world
category: Hello World
tags: ["welcome", "hello"]
---
```

## Recommended posts
Recommended posts will appear on the side bar. Add `is_recommended: true` into the post's front matter to mark it as recommended

``` yaml
---
layout: post
title: Hello world
is_recommended: true
category: Hello World
tags: ["welcome", "hello"]
---
```

# Author

* [https://github.com/btquanto](https://github.com/btquanto)
* [http://btquanto.github.io](http://btquanto.github.io)
* [https://fb.me/theitfox](https://fb.me/theitfox)

# License

This project inherits the GNU GPL v2.0 license from the [Mon Cahier wordpress theme](https://wordpress.org/themes/mon-cahier/)