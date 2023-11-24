---
title: "Create a capture service user"
description: "All users who will should have access to the mobile apps should be created in the **CS Users** setup section. Each CS user should also be an active BC user."
lead: ""
date: 2023-07-13T13:35:05+02:00
lastmod: 2023-07-13T13:35:05+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "cs_user_setup-16a664f35be72813906b44e2a090965d"
weight: 357
toc: true
type: docs
---

All users who will should have access to the [<ins>mobile apps<ins>]({{< ref "../install_apps/index.md" >}}) should be created in the **CS Users** setup section. Each CS user should also be an active BC user.  

  {{< alert icon="📝" text="Each device which uses NP WMS will be assigned a BC user. This user should be active and have their <b>License Type</b> set to be <b>Device Only User</b> (ISV)."/>}}

## Prerequisites

- Create [<ins>warehouse employees<ins>](https://docs.microsoft.com/en-us/dynamics365/business-central/warehouse-how-to-set-up-warehouse-employees) to be able to start creating CS users.

## Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **CS Users** and choose the related link.        
   The list of the configured users is displayed.     
 
2. Click **New** located in the ribbon in the top part of the screen.
3. Fill out the necessary fields with the following information:

    - **Name** - select the name of a valid Business Central user from the dropdown list.
    - **Password** - provide the password that the user needs to log into Business Central. 
    - **View Documents** - provide the user with access to all warehouse documents or only those assigned to them.     

        - **Assigned** - you can only see the documents that are assigned to you.
        - **Assigned and Unassigned** - you can only see the documents that are assigned to you and all documents that have no user assigned to them.
        - **All** - you can see the documents that are assigned to you, all documents that have no user assigned to them, and all documents assigned to other users.
        - **Super** - you can see all documents and change the status on them. This option is recommended for a supervisor role.    

    - **Logon Method** - select whether the logon method is automatic or if you're prompted to provide credentials.
    - **User group** - enter or select a valid User Group Code which determines which group the employee belongs to. 
    - **Device Id** - enter or select the device Id of the mobile device attached to the user. There can be only one device per a user. 
  

<iframe width="560" height="315" src="https://www.youtube.com/embed/11YtGLyGVxI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


