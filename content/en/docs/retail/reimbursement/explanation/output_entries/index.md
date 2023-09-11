---
title: "Output Reimbursement Entries"
description: "There are 3 types of Reimbursement Entries explained more in this article."
lead: ""
date: 2023-09-08T09:16:48+02:00
lastmod: 2023-09-08T09:16:48+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "output_entries-b4ba625caae591724ee2bbc26455e2b2"
weight: 252
toc: true
type: docs
---
There are 3 types of Reimbursement Entries:

1.	**Data Collection** is created when the **Run Data Collection** action is triggered, and it contains certain data from Business Central. The **Show Source** action tabs display the data this entry is based on.
2.	**Manual Application** is used for removing single **Data Collection Entries** from an upcoming reimbursement. The manual applications can also be cancelled with the action **Cancel Manual Application**.
3.	The **Reimbursement** is created when the Run Reimbursement action is triggered, and it represents the **Final Result**. 

In the provided screenshot a provision has been made, meaning the **Final Result** is a posting to G/L.

![provision_posting](provision_posting.png)

Running the **Data Collection** in the reimbursement, makes the module collect data according to different setups and calculate the reimbursement output. 

A reimbursement can also be executed by **Task Queue NAS** by setting up a task on **Codeunit 6151106** **"NpRi Task Queue Mgt."**, and it has the following parameters:

  - **RUN_DATA_COLLECTIONS**: Whether to run Data Collection.
  - **RUN_REIMBURSEMENTS**: Whether to run Reimbursements.