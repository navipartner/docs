---
title: "Job Queue Entry card"
description: "When a sale is completed, a corresponding POS entry is created in the system. This entry can be posted either manually or automatically using a job queue."
lead: ""
date: 2025-04-23T21:04:32+02:00
lastmod: 2025-04-23T21:04:32+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "job_queue_card-d10e059721f3bbe31124070e9529a5dd"
weight: 256
toc: true
type: docs
---

When a sale is completed, a corresponding POS entry is created in the system. This entry can be posted either manually or automatically using a job queue.

The **Job Queue Entry** card includes several fields that define how and when the job should run:

| Field Name      | Description | 
| ----------- | ----------- | 
| **Object Type to Run** | Defines the type of object (report or codeunit) that the job queue will execute. After selecting the object type, you must also specify the **Object ID to Run**. |
| **Object ID to Run** | 	Identifies the specific object (report or codeunit) to run. The ID must correspond to the selected **Object Type to Run**. | 
| **Object Caption to Run** | Displays the name of the selected object. |
| **Description** | Provides a brief description of the job queue entry. You can edit this field on the Job Queue Entry card, but not from the **Job Queue Entries** list. |
| **Earliest Start Date/Time** |	Sets the earliest date and time the job can start. Use the format: MM/DD/YYYY HH:MM AM/PM. | 
| **Job Timeout** | Specifies the maximum duration (in time) that the job is allowed to run. | 
| **Status** | Shows the current status of the job queue entry. New entries are set to **On Hold** by default. You can manually change the status to **Ready** or back to **On Hold**. Other status updates occur automatically based on system events. | 
| **Notification Profile on Error** | Selects a notification profile to be used when the job entry fails and its status is set to **Error**. | 
| **Auto-Reschedule after Error** | Indicates whether the system should automatically schedule another attempt to run the job after it fails. | 
| **Auto-Reschedule Delay (sec.)** | Specifies the delay, in seconds, before the job is retried after an error. |
| **Manually Set on Hold** | Indicates whether the job was manually placed on hold. |
| **Managed by App** | Indicates whether the job is managed by the [<ins>**NP Refresher**<ins>]({{< ref "../../how-to/job_queue_refresher/index.md" >}}) functionality. If enabled (manually for custom jobs or automatically for NP-defined jobs), the system creates a linked record in the **Monitored Job Queue Entries** list (located in the **Job Queue Refresh Setup** administrative section). This record acts as a template. If the original job is deleted, it will be recreated with its monitored settings. If the job is changed (for example, put on hold due to an error), it will automatically be reset and restarted based on the monitored configuration. | 
