---
title: "Set up Click & Collect in NP Retail"
description: "Refer to this guide to set up the Click & Collect module in NP Retail."
lead: ""
date: 2023-07-05T15:45:13+02:00
lastmod: 2023-07-05T15:45:13+02:00
draft: false
images: []
menu:
  docs:
    parent: "click_and_collect"
    identifier: "setup-a3647dc806534f48f26c00c088cafc9e"
weight: 146
toc: true
type: docs
---

To set up the Click & Collect module in NP Retail, follow the provided steps:

## Prerequisites

 - Make sure the web service for Click & Collect exists in the company. You can check this in the **Web Services** administrative section.       

![Click & Collect Web Service Example](collect_store_webservice.png "Click & Collect WS")

 - Make sure there's a user whose **License Type** is set to **External User** in the environment.      
   You need to make sure that a password in **Business Central Password Authentication** is set for the user, as well as adequate permissions in the **User Permission Sets** panel of the **User Card**. 
 - The **Role** on the **My Settings** page needs to be set to **NP Retail** so that you can have access to the necessary configurations for the Click & Collect module.

The Click & Collect module configuration consists of the following tasks:

- Creating a new [<ins>Collect Store<ins>]({{< ref "../stores/index.md" >}}).
- Configuring the **Collect Workflow Module**.
- Creating a new [<ins>Collect Workflow<ins>]({{< ref "../workflow/index.md" >}}).

After these essential setup components are prepared, you can configure additional elements described in the next steps section below.

## Next steps

### Set up the POS Audit Profile

The logic of prepayment of 100% is that all payment is done at the moment when the order is placed. For the system to post and deliver the initial sales order, a "zero" sale needs to be executed at the end of the process. Therefore, it is necessary to tick the **Enable Zero Amount Sales** checkbox in the [<ins>POS Audit Profile<ins>]({{< ref "../../../pos_profiles/reference/audit_prof/audit_prof.md" >}}).

### Set up the Collect Task Processor

The **Collect Task Processor** administrative section contains the **Initialize Task Processors** action you can trigger to populate the codes that determine in which way the collect flow will be carried out (**Workflow Processor Code**, **Document Posting Code**, and **Expiration Code**). Once the fields are populated with the adequate NaviConnector task processor codes, the job queue entries that process the collect document updates are added. They can be additionally adjusted in the **Job Queue Entries** page, if needed.

### Apply Click & Collect on POS

To apply the Click & Collect feature in a store, you need to attach the following actions to buttons on the designated POS unit with the [<ins>POS Editor<ins>]({{< ref "../../../pos_layout/how-to/new_button/index.md" >}}):

   #### Create Click N Collect Order (CREATE_COLLECT_ORD)

   This action is mainly used for creating Click & Collect orders on the POS in local stores. 

   In the [<ins>parameter setup<ins>]({{< ref "../../../pos_processes/reference/pos_actions_ref/index.md" >}}), you can preset the percentage of the order amount that you want the customer to prepay. For example, if you want the ordering shop to collect the entire prepayment amount, you need to set the percentage to 100. If not set, the user will be presented with a pop-up window to insert a percentage to be taken as a prepayment on the sales order. 

   #### Process Click N Collect Order (PROCESS_COLLECT_ORD)

   This action is mainly used for processing collect orders via the POS in the collecting store. You can define how the POS action is going to find the location filter to apply on collect orders. 

   #### Pickup Click N Collect Order (DELIVER_COLLECT_ORD)

   This action is used for delivering the processed collect orders via the POS in the collecting store. 

#### See also

- [<ins>Create a new Collect Workflow<ins>]({{< ref "../workflow/index.md" >}})
- [<ins>Create a new Collect Store<ins>]({{< ref "../stores/index.md" >}})
- [<ins>Accept web-store collect orders in Business Central<ins>]({{< ref "../accept_web_orders/index.md" >}})