---
title: "NPR Retention Policy"
description: "New Retention Policy feature for NaviPartner tables (BC26+), with a dedicated job queue entry for faster processing."
lead: ""
date: 2023-07-07T12:46:03+02:00
lastmod: 2023-07-07T12:46:03+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "retentionpolicy-e24025e6fffa59f29dac87df3fb0ca82"
weight: 162
toc: true
type: docs
---

This feature introduces a new retention policy specifically for NaviPartner (NPR) tables. Previously, retention for these tables was handled using the standard functionality. To improve processing speed, our tables now have a dedicated implementation.

As a result, customers will see an additional **Job Queue Entry** for NPR retention policy processing, alongside the standard entry.

![job_queue_entry](Images/JobQueueEntry.png)

- {{< alert icon="📝" text="This feature is only available in BC26 and higher."/>}}

## NPR Retention Policies Page 

A new **NPR Retention Policies Page** allows customers to view and disable retention for NPR tables and apply the retention policy manually via a page action if needed.

![retention_policy_page](Images/Retention_Policy_Page.png) 

 - {{< alert icon="📝" text="PTEs can substitute the implementation for their own by subscribing to an event on each table, if desired."/>}}

## NPR Retention Policy Log Entries Page 

The **NPR Retention Policy Log Entries Page** lets customers view when retention policies were applied and also check for any errors that occurred during processing.

![retention_policy_log](Images/Retention_Policy_Log.png)


The new retention policies use the same logic and filtering as the default NPR retention policies.

Old setup for NPR tables in the standard retention policy is cleared automatically.

#### See also

- [<ins>Create a retention policy<ins>]({{< ref "/docs/retail/eft/how-to/retention_policy/index.md" >}})