---
title: "Set up Membership module web services"
description: ""
lead: ""
date: 2023-07-12T15:54:01+02:00
lastmod: 2023-07-12T15:54:01+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "membership_setup-3826e28ed013760661613133416b40c6"
weight: 999
toc: true
type: docs
---

To set up the ticket web services, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Web Services**, and choose the related link.    
   The list of all available web services is displayed.
2. Click **New** in the ribbon. 
3. Select **Codeunit** in the **Object Type** field, and provide **6060128** as the **Object ID**.
4. State **member_services** as the **Service Name**.    
   
  {{< alert icon="📝" text="In a multitenant environment, you need to perform this from the **default** tenant. You can see which tenant you're currently using in the URL."/>}}

1. Refer to the [list of member web services]({{< ref "../membership_webservices_ref/index.md" >}}) to decide on the next action you wish to take. 
2. (Optional) Set up [auto-renewal process]({{< ref "../autorenewal/index.md" >}}).