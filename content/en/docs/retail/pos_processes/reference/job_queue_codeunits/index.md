---
title: "NP Retail Job Queue Entries"
description: "You can use the previously stated guidelines for setting up job queue entries to set up similar jobs with the help of this list of recommended codeunits."
lead: ""
date: 2023-08-18T15:55:49+02:00
lastmod: 2023-08-18T15:55:49+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "job_queue_codeunits-eb9593e503a10b9aee23c464ace28b8f"
weight: 115
toc: true
type: docs
---

You can use the previously stated guidelines for setting up job queue entries to set up similar jobs with the help of this list of recommended codeunits.

## Codeunit 6014469; NPR Send SMS Job Handler

You can set up an SMS template and a job which sends SMS through various endpoints stored in a dedicated table. SMS can be sent at either specific times or in shorter intervals.

## Codeunit 6014510; NPR MobilePayV10 CancelDead

If you use the MobilePay EFT integration, you may potentially receive notifications which state how unsuccessful payments that have been attempted towards your store have been reserved. This **Job Queue Entry** cancels such reservations. It’s recommended to run this entry outside of working hours.

## Codeunit 6014664; NPR Cleanup JQ Log Entries

If there are multiple **Job Queue Entries** which are run every few minutes, there may be thousands of log entries every day, which may be taking up space without giving you much useful information. With this codeunit, you can clean up **Job Queue Log Entries** older than a certain period. For example, you can set the parameter string to: **ClearBeforeDF=<-30D>** to clean up all **Job Queue Log Entries** older than 30 days. It’s recommended to run this job each day outside of working hours.

## Codeunit 6014683; NPR Post Inventory Cost to G/L

This codeunit is used for adjusting item costs. Running this job automatically may slow the whole system down, so it’s recommended to set the job to be triggered during the night.  

## Codeunit 6014699; NPR POS Post GL Entries JQ	

This codeunit is used for updating the records by posting transactions from the **POS Entry List** to **G/L Entry Table** in Business Central. It is recommended to schedule this job for the night to avoid data overflow during the daily operations.

## Codeunit 6059770; NPR POS Post Item Entries JQ

This codeunit is used for updating inventory by posting Item entries from the **POS Entry List** to the **Item Ledger Entry** and **Value Entry Tables** in Business Central. Since it’s necessary to keep the stock up to date, it’s recommended to set this sequence to occur at least every minute.
For more details on the above Job Queues, refer to the [Job queue how-to guide]({{< ref "../../how-to/job_queue/index.md" >}}).

## Codeunit 6014688; NPR TM Retention Ticket Data

This codeunit is used for deleting the expired ticket data. There’s a date formula in the **Ticket Setup** page which specifies when the expiration will occur.

## Codeunit 6059912; NPR MM Membership Stat. Mgmt

This codeunit is used for calculating certain statistics in the **Membership Statistics** section of the NP Retail Entertainment Role Center.

## Codeunit 6151508; NPR Nc Task List Processing	

This codeunit can be used for various operations in the **NP Retail Task List**. The two **Job Queue Entries** that should automatically be created are:

- Resetting the Retry Count: **Using Parameter String = processor=NC,reset_retry_count**       
  The tasks will be reset for the Task List Processor NC, so they can automatically be run again, which will potentially result in successful issue resolution. It’s recommended to run this job outside of working hours and only once a day, so that it doesn’t hinder daily operations.
- Processing the Task List: **Using Parameter String = processor=NC,update_task_list,process_task_list,max_retry=3**     
  New tasks will be imported for the **Task List Processor NC** to the **Task List** and an attempt will be made to **Process** the tasks in the **Task List** up to three times.

## Codeunit 6151509; NPR Nc Import List Processing

You can use this codeunit to process the **Import List** automatically and create entries automatically with the **Parameter String = process_import_list**.

Since the **Import List** is usually used for importing entries that need to be available immediately, it is recommended to have this run as a recurring job every few minutes.
