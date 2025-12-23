---
title: "Set up Job Queue Refresher"
description: "The job queue refresher ensures that all critical background jobs continue running without user intervention, even outside working hours or on weekends."
lead: ""
date: 2025-04-23T11:31:49+02:00
lastmod: 2025-04-23T11:31:49+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "job_queue_refresher-f76d1de786df1727f838b9d575894404"
weight: 254
toc: true
type: docs
---

Business Central uses background tasks (job queues) to run **automated processes** such as data synchronization, integrations, POS handling, inventory calculations, and other recurring operations.

For these processes to work reliably, job queues must remain available, correctly configured, and able to restart if errors occur.

The **Job Queue Refresher** in NP Retail ensures this stability by monitoring selected job queues, known as **monitored jobs**.

A job queue can become monitored **automatically** (protected job queues) or **manually** when a user marks it as monitored.

## Benefits of Job Queue Refresher

General benefits:
 - Monitored job queues are **restored** if deleted.
 - Parameters are **restored** to expected values.
 - Job queues are restarted if their status is **Error** or **On Hold** (note that job queues that have **Manually Set On Hold** to true are never refreshed by neither of the refreshers).

These mechanisms ensure consistent execution of automated processes.

**Additional benefits of the External Refresher**: <br>
The external refresher uses a Cloudflare Worker that connects to the environment once per hour and performs the refresh cycle.

This enables:
 - Automated job queue **monitoring** even when no users log into Business Central.
 - The ability to distribute monitored jobs across **multiple Entra App users**, increasing parallel processing capacity and improving performance.


## How the Refresher Works

1.	Monitored jobs are **identified**
 - protected job queues are added automatically
 - users can manually mark additional job queues as monitored
2.	The **refresher** checks monitored jobs (External refresher: once per hour, Login-based refresher: on full user login, but not more frequently than once per hour)
 - whether the job queue exists
 - whether parameters match expected values
 - whether the job queue stopped due to error or was set to “On Hold”
3.	The refresher performs **corrective** actions
 - restarts job queues
 - recreates missing job queues
 - restores expected parameters

If the external refresher is not enabled, these checks occur when a full user with corresponding permissions logs into the system (not more than once per hour).



## Prerequisites

Before configuring the **Job Queue Refresher**, ensure the following requirements are met.
General requirements:
 - NP Retail version 109.0 or higher is installed.
 - The setup is performed by a full Business Central user with permissions to manage job queues.

Additional requirements for **External Refresher**:
 - Business Central SaaS environment (external refresher is not available for OnPrem environments).
 - The user performing the steps must be both a Microsoft Entra ID administrator and a Business Central administrator.


## Step-by-Step Setup

**Step 1: Open Job Queue Refresh Setup**
 - Select the Search icon.
 - Search for **Job Queue Refresh Setup**.
 - Open the page containing the refresher configuration settings.

**Step 2: Configure general settings (applies to External refresher only)**
 - **Default Runner User**: Specifies the user under which a job queue runs if no runner user is assigned directly to that job.
 - **Default Time Zone**: Defines how job queue schedules are interpreted and executed.

 Time zone settings ensure that scheduled job queues run at the correct local time even when users operate in different regions.

**Step 3: Set up Monitored Jobs**

**Monitored jobs** are checked and refreshed either when a qualified **user logs** into the system (login-based refresher) or automatically via the **External Job Queue Refresher** but not more frequently than once per hour.

 - {{< alert icon="💡" >}}
See section [Set up Monitored Jobs](#set-up-monitored-jobs).
{{< /alert >}}

**Step 4: Enable the Job Queue Refresher**

Set the toggle **Enabled** to On. 

This enables the login-based refresher, which will now monitor and perform corrections on monitored jobs. 

**Step 5: Recommended: Set up External Job Queue Refresher**

  - {{< alert icon="💡" >}}
See section [Set up External Job Queue Refresher](#set-up-external-job-queue-refresher).
{{< /alert >}}

    
### Set up External Job Queue Refresher

By configuring the External Job Queue Refresher, workloads can be distributed across several service accounts, allowing increased parallel job queue execution and improved processing efficiency in high-volume environments.

  - {{< alert icon="💡" >}}
This section requires the [Step-by-Step Setup](#procedure) completed. 
{{< /alert >}}


**Step 1: Create External Refresher User (Privileged user required)**

Open Actions → External JQ Refresher → **Create External JQ Refresher User**.

The system creates a Microsoft Entra Application and a service user used by the Cloudflare Worker. It also tries to grant user consent.

**Step 2: Grant Consent (If the previous step experienced any issues with it, otherwise, this step can be skipped)**
1.	Open the created **Entra App**.
2.	Select **Grant Consent**.
3.	**Approve** all requested permissions.

**Step 3: Enable External Refresher**

Open Actions → External JQ Refresher → **Enable External JQ Refresher**.

Once enabled, the Cloudflare Worker performs the refresh once per hour.

**Step 4: Runner Users and Multiple Entra Apps**

To support larger environments, monitored jobs may be distributed across multiple Entra Apps.
Assigning a runner user:
1.	**Repeat** the Step 1 (“Create External Refresher User”) as many times as many JQ Runners you will need.
2.	Find **Monitored Jobs** list in the **Job Queue Refresh Setup**.
3.	Select a Monitored Job.
4.	Set the **Job Queue Runner User Name** field.

### Set up Monitored Jobs

[Protected Job Queues](#protected-job-queues) are added to the monitored jobs list **automatically**.

Users may also add additional job queues **manually**. There are several ways to add a job queue to the **monitored jobs list**:

1. From the **Job Queue Entry** card, set the **Monitored Job** field to true.

2. From the Monitored Jobs list, use the **New** action to create a job queue that does not yet exist.

3. From the Monitored Jobs list, use the **Create from Job Queues** action to add an existing job queue that is not yet monitored. Multiple job queue entries can be added at the same time.

Once added, the monitored job becomes part of the **refresher cycle**.


## Protected Job Queues

Protected Job Queues are essential NP Retail job queues that must remain available and correctly configured.

For protected job queues, the refresher ensures that they are restored if deleted (in the list of monitored jobs) and that their parameters remain consistent with expected system defaults.


### Customizable Protected Monitored Jobs
Some protected jobs may allow changes to certain parameters. These are customizable protected jobs.

Customers may adjust parameters such as **schedule** or **configuration**. The refresher will not override these changes.

 - {{< alert icon="📝" text="If a Job Queue is set as a Monitored Job, its values should be edited in its Monitored Job card, if permitted."/>}}

The following jobs are currently configured as default customizable protected jobs:
 - Adjust Cost – Item Entries
 - Retention Policy JQ
 - NPR Shopify Export BC Transactions JQ

#### Fields Always Customizable
The following fields are always safe to edit, regardless of whether the job queue is protected, and their values will not be overridden by system defaults:
 - Description
 - Notif. Profile on Error
 - NPR Auto-Resched. after Error
 - NPR Auto-Resched. Delay (sec.)


## Useful Functions

### Manual Refresh
The **Refresh Now** action immediately triggers a refresh cycle without waiting for the next scheduled interval.
Useful when a job queue has been stopped or when configuration changes must be applied instantly.

### Managing the Monitored Jobs list
The **Monitored Jobs** list displays all monitored jobs.

From here, users can:
 - **review** monitored job entries,
 - **assign** JQ runner users,
 - **modify** allowed parameters,
 - **use** Recreate Monitored Jobs to restore missing entries,
 - **delete** a custom monitored job (not protected),
 - either **add an existing job queue** or **create a new monitored** job from scratch.


### Disabling the External Job Queue Refresher 

The **Disable External JQ Refresher** action removes the current tenant-environment-company information from Cloudflare worker, which prevents it from future processing by the External Job Queue Refresher.

 - {{< alert icon="📝" text="The system may automatically disable the External Job Queue Refresher if the tenant-environment-company information is removed or outdated. In such cases, the refresher must be re-enabled."/>}}

### Navigating to the Job Queue Entry

The **Job Queue Entry** card action opens related job queue entry card. It is useful when there are multiple job queue entries with the same object ID and only one or few of them are set as **Monitored Job**. 


## Developer Guide for Extending Job Queue Refresher

This section is intended for developers and partners who build extensions (PTEs) that require integration with the Job Queue Refresher functionality. It explains how protected job queues are defined, how customizable protected job queues are implemented, which events are available, and how the refresher logic can be extended.

### Defining Protected Job Queue

Protected job queues are identified using the **NPR NP Protected Job** boolean field.

When set to true, the job queue becomes protected and is monitored accordingly.
Protected job queues and their corresponding monitored job entry are restored if deleted and have their parameters enforced according to system rules.
Extensions may set this flag for their own job queues if they should be protected by the refresher.

### Adding Protected Job Queue in PTE

To add a protected job queue through a Per-Tenant extension:
1.	Create a **Job Queue entry**
2.	Use **SetProtected(true)**
3.	Optionally, **subscribe to events** to mark it as customizable or adjust its behavior

Such job queues are automatically added to the monitored jobs list.

### Defining Customizable Protected Job Queues

To allow users to change parameters of a protected job queue (for example, schedules), the system exposes the following event:

*Codeunit "NPR Job Queue Management*: <br>
**OnCheckIfIsNprCustomizableJob(JobQueueEntry: Record "Job Queue Entry"; var NprCustomizableJob: Boolean; var Handled: Boolean)**

Subscribing to this event allows the developer to:
 - mark selected protected job queues as **customizable**,
 - allow **user-defined parameters** to override defaults
 - adjust **protected job queue** behavior for specific scenarios

#### Events for Extending Refresher Functionality

Developers can use the following events to adjust or extend refresher logic:
1. **OnBeforeInsertRecurringJobQueueEntry(var JobQueueEntry: Record "Job Queue Entry")** used for customizing job queue parameters during creation.
2. **OnCheckIfIsNprCustomizableJob(JobQueueEntry: Record "Job Queue Entry"; var NprCustomizableJob: Boolean; var Handled: Boolean)** used to determine whether a protected job queue should be treated as customizable.
