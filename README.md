# Technical guide for contributors

[Hugo Doks](https://getdoks.org/) is a new tool that we're using for contributing to our [documentation portal](https://docs.navipartner.com/).

## Contributing in desktop editors

### Prerequisites

Before working with the documentation repository, ensure the following tools are installed:

- [Node.js](https://nodejs.org/en)
  Follow [this guide](https://phoenixnap.com/kb/install-node-js-npm-on-windows) if you need help with the installation. Node.js is required to run commands for testing and generating content locally.
- [Git](https://git-scm.com/)
- Code Editor
  It's recommended that you install [Visual Studio Code](https://code.visualstudio.com/) if you wish to use a desktop code editor. However, you can also use [our browser editor](https://github.dev/navipartner/docs) if that's your preferred method.
- Repository access
  Request contributor access from Gustav or Mikkel Mansa.

### Procedure

1. [Clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) the [docs repo](https://github.com/navipartner/docs) in your Visual Studio Code/GitHub editor.

  ![image](https://github.com/user-attachments/assets/ff0ef5d0-7d82-4477-82ac-499003eaa153)

  Cloning is essentially the process of copying the content and structure of the help portal, in its current production state. 
  There are multiple ways to perform cloning, one of them being the following:
  - Use the Ctrl + Shift + P keybord combo to open Git commands in the search bar up-top.
  - Select **Git: Clone** from the dropdown list.
  - Provide the URL from the screenshot (https://github.com/navipartner/docs.git).
  - Press **Enter**.
  - You will also need to provide your account info and select the destination for the cloned repo.

2. Open the terminal, and provide the following commands:

   ```bash
     git config --global user.name "Your Name"
     git config --global user.email "your.email@example.com"
   ```
   
3. Open the **Terminal**, and ensure that the filepath is correct, i.e. that it leads to the folder in which the repo is stored.

   ![image](https://github.com/user-attachments/assets/eeb93fac-7b5c-4dc0-bdca-236de4a46028)

4. Install dependencies by running _npm install_ in your **Terminal**.
   ```bash
   npm install
   ```
   This ensures all required Node modules are available. Now, you can start working on the content.
5. Click the **Source Control** icon in the left sidebar.       

   ![image](https://github.com/user-attachments/assets/0c18286c-0bc2-4c62-b7aa-1731e09ea345)
   
6. Git **Pull** from the master branch on the server.        

   ![image](https://github.com/user-attachments/assets/9e105793-f35b-44b6-be08-cf84bd2c4356)

   This ensures that the project version clone you have locally is up to date. 
7. Click the name of the branch in the bottom left corner of Visual Studio Code, then click **Create New Branch** in the dropdown that is displayed at the top of the screen.     

   ![image](https://github.com/user-attachments/assets/9c844075-9de1-492e-88ef-cf984b6cf189)

8. Use the following nomenclature when creating new branches: _topic/your_initials/short_description_

    Example:
    ```bash
    topic/js/creating_new_articles
    ```
    ![image](https://github.com/user-attachments/assets/f5b7049e-cf93-4193-87e2-0f7089280d3f)

    This helps keep branches organized and avoids conflicts.
  
9. To create new files, choose the place within the menu in which it makes sense to place it, and use the following command in the Visual Studio Code **Terminal**: __npm run create_ + _filepath__

    Example:
    ```bash
    npm run create docs/retail/reimbursement/how-to/setup/index.md
    ```
    ![image](https://github.com/user-attachments/assets/10892bdc-c190-4b4b-8d16-76e679d98321)      
    
   Be mindful of the difference between the _index.md and index.md files specified below in the **Useful information section**.
11. Update metadata in the frontmatter of your .md file:
  - Set the **Weight** value to control where the doc appears in the TOC.
  - Add a **Title**.
  - Add a **Description**.

  ![image](https://github.com/user-attachments/assets/743a93de-941e-402d-83f6-f370be7ccee8)

  Refer to the [Contributor guide](https://github.com/navipartner/docs/wiki/Contributor-guide) for more information on formatting, structure etc.

8. To test the changes you make on the help portal locally, use the following command:

   ```bash
   npm run start
   ```      
   The website will be generated locally, most likely on _http://localhost:1313/_.
   
9. Once you're done editing the topic, commit and push your changes.


## Working in the browser editor

1. Go to https://github.dev/navipartner/docs.
2. Pull the latest changes to ensure your main branch is up to date.
3. Navigate to the file you want to edit (content/docs).
4. Make your edits, then commit and push.
5. Open https://github.com/navipartner/docs in your browser, and click **Compare & Pull Request** to submit your changes.

## Create new files in the browser editor

### Prerequisites

- Node.js must be installed, along with its npm commands.

### Procedure

1. In your **Terminal**, run:
   ```bash
   npm install
   ```
3. Then create the file:
   ```bash
   npm run create docs/retail/reimbursement/how-to/setup/index.md
   ```
5. Use the _npm run create_ + _filepath_ command to create new files, e.g. _npm run create docs/retail/reimbursement/how-to/setup/index.md_ .
   Refer to the difference between the _index.md and index.md files specified below in the Useful information section.
6. Make sure the **Weight** parameter in the metadata section corresponds to the area of the table of contents that you wish to place the doc in.
7. Make sure you add a description in the corresponding parameter.
8. Make sure you've added a **Title**.
9. Once you're done editing, commit and push.

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

## Image resizing and formatting

https://hugomods.com/docs/images/

Example without shortcodes: \<image src="Images/edit_icon.PNG" width="30" height="30">
