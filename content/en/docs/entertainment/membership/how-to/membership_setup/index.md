---
title: "Set up Membership module web services"
description: "Refer to this guide to set up the ticket web services for the Entertainment solution."
lead: ""
date: 2023-07-12T15:54:01+02:00
lastmod: 2023-07-12T15:54:01+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "membership_setup-3826e28ed013760661613133416b40c6"
weight: 291
toc: true
type: docs
---

To set up the ticket web services, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Web Services**, and choose the related link.    
   The list of all available web services is displayed.
2. Click **New** in the ribbon. 
3. Select **Codeunit** in the **Object Type** field, and provide **6060128** as the **Object ID**.
4. State **member_services** as the **Service Name**.    
   
  {{< alert icon="📝" text="In a multitenant environment, you need to perform this from the <b>default</b> tenant. You can see which tenant you're currently using in the URL."/>}}

5. Refer to the [<ins>list of member web services<ins>]({{< ref "../../reference/membership_webservices_ref/index.md" >}}) to decide on the next action you wish to take. 
6. (Optional) Set up [<ins>auto-renewal process<ins>]({{< ref "../autorenewal/index.md" >}}).


#### See also

- [<ins>Member community<ins>]({{< ref "../../reference/member_community_ref/index.md" >}})
- [<ins>Set up the automatic renewal process<ins>]({{< ref "../autorenewal/index.md" >}})
- [<ins>Azure member registration setup<ins>]({{< ref "../../reference/azure_membership/index.md" >}})
- [<ins>Membership web services<ins>]({{< ref "../../reference/membership_webservices_ref/index.md" >}})