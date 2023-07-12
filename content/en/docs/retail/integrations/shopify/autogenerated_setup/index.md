---
title: "Automatically generated setups"
description: ""
lead: ""
date: 2023-07-11T11:10:25+02:00
lastmod: 2023-07-11T11:10:25+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "autogenerated_setup-41171fa9917cbc324585ef770b643cb7"
weight: 999
toc: true
type: docs
---

The following setups are generated automatically when necessary. They don't require any action on your part.

## Data log subscribers

Data log subscribers are required if the system needs to keep track of changes done to the data. They are automatically generated if the relevant integration area is enabled. You can find this administrative section by looking it up in the Role Center.

The following data log subscribers are needed for the Shopify integration:

| Table                                 | Direct Data Processing Codeunit           | Itegration Area                       |
| :---                                  |                               :----:      |                                  ---: |
| 27           Item                     | 70010442 NP-Spfy Item Mgt.                | Item List Integration                 |
| 32           Item Ledger Entry        | 70010446 NP-Spfy Inventory Level Mgt.     | Available Inventory Updates           |
| 37           Sales Line               | 70010446 NP-Spfy Inventory Level Mgt.     | Available Inventory Updates           |
| 5401         Item Variant             | 70010442 NP-Spfy Item Mgt.                | Item List Integration                 |
| 5717         Item Reference           | 70010442 NP-Spfy Item Mgt.                | Item List Integration                 |
| 70010435      Shopify Inventory Level | 70010442 NP-Spfy Item Mgt.                | Available Inventory Updates           |


{{< alert icon="📝" text="All data log subscribers should have <b>Delayed Data Processing (sec)</b> set to <b>1</b> and the <b>Direct Data Processing</b> set to <b>Yes</b>, except for testing environments, as it may cause incorrect inventory levels to be sent to Shopify."/>}}

## Job Queue Entries

The job queue entries are needed to automate the periodic data exchange between Business Central and Shopify. You can find this administrative section by looking it up in the Role Center.

They involve:

 - Processing of both Business Central task list and import list entries. 
 - Running specific Shopify-related tasks, like getting Shopify orders. 

The job queue entries are created automatically once the relevant integration areas are enabled, or if a data sending task is scheduled. 

|          Event                                                                                                |            Job Queue Entry Created               |
|---------------------------------------------------------------------------------------------------------------|--------------------------------------------------|
| Enable Sales Order Integration                                                                                |  Object Type to Run = Codeunit </br> Object ID to Run = 70010434 "NP-Spfy Order Mgt." </br> Description = Get Sales Orders from Shopify </br> No. of Minutes between Runs = 5 |
| Enable Sales Order Integration                                 |     Object Type to Run = Codeunit </br> Object ID to Run = 6151509 "NPR Nc Import List Processing" </br> Description = SHOPIFY* Import List entry processing </br> Parameter String = import_type=SHOPIFY*,process_import_list </br> No. of Minutes between Runs = 5 |
| A data sending task is scheduled (the changed item </br> or a variant,  available inventory, posted sales order etc.)| Object Type to Run = Codeunit </br> Object ID to Run = 6151508 "NPR Nc Task List Processing" </br> Description = SHOPIFY Task List processing </br> Parameter String = processor=SHOPIFY,process_task_list,max_retry=3 </br> No. of Minutes between Runs = 10 |

## Import types

Import types are needed to process data received from external sources, like Shopify.

The following import types are needed for the integration (all of them are related to the [**Sales Order Integration**]({{< ref "../sales_order_setup/index.md" >}}) area)

| Code                   | Description             | Import List Update Handler      | Import Codeunit ID     |  Lookup Codeunit ID       |
| :----:                 |    :----:               |                          :----: |                 :----: |                    :----: |
| SHOPIFY_CREATE_ORDER   | Create Shopify Order    | Default                         | 70010435               | 70010436                  |
| SHOPIFY_DELETE_ORDER   | Delete Shopify Order    | Default                         | 70010437               | 70010436                  |
| SHOPIFY_POST_ORDER     | Post Shopify Order      | Default                         | 70010438               | 70010436                  |

{{< alert icon="📝" text="All the import types are reviewed and created automatically, when new import list entries are added."/>}}
