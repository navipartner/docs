---
title: "Activate and use the MPOS editor"
description: "By activating the MPOS Editor, users will no longer need to jump between different systems to edit the MPOS UI."
lead: ""
date: 2023-10-10T16:05:34+02:00
lastmod: 2023-10-10T16:05:34+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "activate_mpos_editor-ac4607c92574e6a195635fd18c2b7ff9"
weight: 111
toc: true
type: docs
---

The MPOS editor gives users the option to set up POS actions and buttons directly from within the MPOS UI, without having to work in Business Central in parallel. However, to make sure it's operational, you first need to activate it by following the provided steps:

#### Prerequisites

- Enable the [POS Editor]({{< ref "../activate_pos_editor/" >}}) to be able to use the POS Layout Setup Wizard.

#### Procedure

1. Open the POS.     
   The POS has an empty layout assigned to it. 
2. Enter the **Edit** mode by pressing the cog icon in the bottom right corner of the screen.
3. Press **New Layout**, and then **New Layout** again.
3. Select a template, give it a **Name**, and make sure the **Mobile Layout** is picked.
4. Click **Create**.      
   The screen shrinks in size to match the mobile device screen.
5. To see the changes on an actual mobile device, set up the following:    
   - Assign a mobile device to a POS unit.
   - Give the POS Layout Code you've assigned in step 4 to the POS unit. 
6. Reload the MPOS.     
   The changes performed on the desktop are applied on the MPOS upon reload. The design on the editor is now the same as the one on the MPOS.      

   <iframe width="560" height="315" src="https://www.youtube.com/embed/o2FdbYVLXUo?si=TcyeiSn5fGS7NbAo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>