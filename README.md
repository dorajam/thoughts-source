# thoughts-source
These files are used to build a static site in hugo.
See my customizations to the *detox* template in layouts/partials and find my posts in the content folder.

- create new post by: `hugo new post/<title-of-the-post.md>`
- to run on your local, use `hugo server`     
- to update changes on the host, first run `hugo`,
- then copy the public folder to the thoughts folder (`cp -rf ../blogging/plublic/ ./`). You can then commit changes from there. 

Alternatively, you can do this all by running my script: `source update-public.sh` ->> you'll be asked if you also want to host your changes on gh-pages
