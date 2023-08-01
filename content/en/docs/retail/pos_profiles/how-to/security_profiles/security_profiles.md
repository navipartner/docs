---
title: "Set up POS Security Profile"
description: "In POS Security Profile it is possible to set up the administrator password, and the password for unlocking a POS unit after the unit has been locked due to non-activity."
lead: ""
date: 2023-07-04T13:56:31+02:00
lastmod: 2023-07-04T13:56:31+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "security_profiles-f445f306f29aebc7635df78a7c604ea2"
weight: 21
toc: true
type: docs
---


In **POS Security Profile** it is possible to set up the administrator password, and the password for unlocking a POS unit after the unit has been locked due to non-activity.

![security_profile](Security_profile.PNG)

To set up the security profile, follow the provided steps:

1. In **General** insert **Code** and **Description**.      
   The **Code** has to be unique for for each profile, while the **Description** field should contain a short description of the profile.

2. Provide the **Administrator Password**.       
   It can be assigned to different buttons in the POS menu, so if someone presses a button, the administrator password should be provided in the pop up window. 

3. Set the **Lock Timeout**, i.e. the time of non-activity after which the POS unit will be locked.

4. Provide the **Unlock Password**.      
   This password will be used for unlocking the POS unit.
