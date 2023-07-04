# docs
Public documentation portal


# Creating a PR - Web browser

1. Go to https://github.dev/navipartner/docs.
2. Pull, or otherwise make sure the state of the main branch is up-to-date.
3. Find the file you wish to edit (content/docs).
4. Commit and push.
5. Open https://github.com/navipartner/docs in your browser, and click Compare and Pull Request.

# Useful information

A content folder is automatically a section **if the folder has an index file called _index.md**. This causes Hugo to create a navigable URL for the section. For example, if content/about-us/_index.md exists, Hugo would create xyzcompany.com/about-us/.

The sections can be nested as deeply as you want. The important thing to understand is that to make the section tree fully navigational, at least the lower-most section must include a content file. (i.e. _index.md).

## _index.md vs index.md

- Branch bundle — Its index file is called _index.md. It can have “children,” such as nested folders. If there are additional .md files within, each will get its own navigable URL. As we hinted earlier, only a folder that’s a branch bundle can be a section. By default, Hugo treats its index file as a list of the section’s contents, but, as we’ll see, you can exercise more control over this.

- Leaf bundle — Its index file is called index.md and, at build time, becomes a regular web page, not a list. It can’t be a section, and therefore can have no “children.” Any additional .md file in a leaf bundle won’t get its own navigable URL Other items within a leaf bundle are page resources for the index.md file (more on that in the following example).


## Formatting notes containing internal links

{{< alert icon="📝" text="Make sure to read <a href=\"/docs/retail/gettingstarted/major_tom/\">Major Tom</a>" />}}

## Formatting notes containing external links

   {{< alert icon="📝" text="The customer's Azure tenant needs to be <a href=\"https://learn.microsoft.com/en-us/azure/active-directory/conditional-access/howto-conditional-access-session-lifetime\">configured</a> prior to using the cloud version so that their session can be automatically extended on the following login." />}}

## Formatting links in text

Use shortcodes + rel path!
[**POS Named Action Profile**]({{< ref "pos_named_action_profile/pos_named_profile.md" >}}) 

https://gohugo.io/content-management/shortcodes/

## Referencing global images

Place images in the 'static' folder (NOT static/images), and then act as if they are located in the same folder as the article you're referencing them from.

## Editing article body width

Edit the "width" param in the assets/scss/common/_global.scss file. Currently, it is set to 800px, and 900px would mess up with the table of contents.
