# Technical guide for contributors

Hugo Doks is a new tool that we're using for contributing to our [documentation portal](https://docs.navipartner.com/).

## Contributing in desktop editors

### Prerequisites

To start working with the documentation repository, make sure the following prerequisites are met:

- Install [Node.js](https://nodejs.org/en)
   Follow [this guide](https://phoenixnap.com/kb/install-node-js-npm-on-windows) if you need additional help in its installation.
- Install [Git](https://git-scm.com/)
- Install Visual Studio Code/GitHub Editor (if you plan on using it as a code editor); otherwise, you just need a link to [our browser editor](https://github.dev/navipartner/docs)
- Request a contributor role for the repo from me, Gustav or Mikkel Mansa.

### Procedure

1. Clone the docs repo in your Visual Studio Code/GitHub editor.
2. Run _npm install_ in your **Terminal**.
3. Use the _npm run create_ + _filepath_ command to create new files, e.g. _npm run create docs/retail/reimbursement/how-to/setup/index.md_ .
   Refer to the difference between the _index.md and index.md files specified below in the Useful information section.
5. Make sure the **Weight** parameter in the metadata section corresponds to the area of the table of contents that you wish to place the doc in.
6. Make sure you add a description in the corresponding parameter.
7. Make sure you've added a **Title**.
8. Once you're done editing, commit and push.



## Contributing in the browser editor

1. Go to https://github.dev/navipartner/docs.
2. Pull, or otherwise make sure the state of the main branch is up-to-date.
3. Find the file you wish to edit (content/docs).
4. Commit and push.
5. Open https://github.com/navipartner/docs in your browser, and click Compare and Pull Request.

## Create new files in the browser editor

### Prerequisites

- Make sure Node.js is installed, along with its NPM commands.

### Procedure

1. Run _npm install_ in your **Terminal**.
2. Use the _npm run create_ + _filepath_ command to create new files, e.g. _npm run create docs/retail/reimbursement/how-to/setup/index.md_ .
   Refer to the difference between the _index.md and index.md files specified below in the Useful information section.
3. Make sure the **Weight** parameter in the metadata section corresponds to the area of the table of contents that you wish to place the doc in.
4. Make sure you add a description in the corresponding parameter.
5. Make sure you've added a **Title**.
6. Once you're done editing, commit and push.

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
