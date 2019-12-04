# Blog post

A rails webapp that can jot down your thoughts. Hosted on your private server. Accessible with REST api.

<img src="./.readme_images/welcome_index.png" width="1000">

## Features 

*   **Ruby on Rails.**
*   CRUD articles.
        <img src="./.readme_images/articles_index.png" width="1000">
*   CRD comments.
        <img src="./.readme_images/comment_insert.png" width="1000">
*   Basic admin authentication for deletions.
        <img src="./.readme_images/Auth.png" width="1000">
*   Bootstrap.
*   SQLite3 database.
*   **RESTful.**

## Requirements (Tested Configuration)

1. *ruby* --> 2.6.5p114
2. *sqlite3* --> 3.28.0
3. *rails* --> 6.0.1

## Installation

To start the server,

```ruby
rails server
```

To run the application, open your browser and type,
```
localhost:3000
```

## Extras

* Individual edit
    <img src="./.readme_images/article_edit_create.png" width="1000">

* Expand article
    <img src="./.readme_images/article_show.png" width="1000">
