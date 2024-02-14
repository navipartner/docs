---
title: "Print template features"
description: "The print template module comes with a set of tools used for facilitating their management."
lead: ""
date: 2024-02-14T10:56:16+01:00
lastmod: 2024-02-14T10:56:16+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "template_tools-e9008193fb144672e97493217420c7e0"
weight: 264
toc: true
type: docs
---

The print template module comes with a set of tools used for facilitating their management.

## Duplicating print templates

You can create a duplicate of an existing template by first selecting the desired print template from the list, and then clicking **Create Copy**. Once you name the duplicate, it will be available for use.

## Importing package files

If a template has been created in another environment, or provided by a third party, it is possible to import its package file. You can do this via the **Import Package File** action. Once you import the desired template from your local machine, the **Import Worksheet** page will be displayed, just like when the template data is downloaded.

## Exporting package files

There are two versions of this feature. The first one is used for exporting the entire **Print Template** list, while the other is used for exporting only the selected templates. This results in creation of a single JSON file which contains the desired templates at the current version. 

  {{< alert icon="📝" text="Archived templates aren't exported with this action."/>}}

## Versioning

It's a good practice to archive print templates after making modifications, because a new template version needs to be created each time the template is altered. Archiving ensures that a changelog of all versions is available, so if there are some discrepancies, you can instantly revert the template to a previous version.

Archiving is performed by clicking the **Archive** button in the top ribbon of the **Template Card**. The only requirement is that the **Version Comment** be filled out. You can reenable editing by clicking **New Version**. The changelog can be reached by clicking **View Archived Versions**. From it, it's possible to either restore the template to a previous version by clicking **Restore Version** or export it by clicking **Export Version**.

## Logging print jobs

For debugging purposes, it's possible to log the raw print jobs. This is done by toggling **Log Output** in the **Template Card** of a specific print template.

When activated, all subsequent print jobs are stored in the **Print Template log**, which can be accessed by clicking **Show Log** in the ribbon.