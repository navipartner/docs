---
title: "Generate ticket-holder notifications"
description: ""
lead: ""
date: 2023-07-13T09:00:02+02:00
lastmod: 2023-07-13T09:00:02+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "ticketholder_notif_setup-2d7a06a3600ee81ff8b1c7d4b662b556"
weight: 171
toc: true
type: docs
---

Notifications for ticketholders can be created and sent from the ticket management module. Notifications are generated from the admission schedule entries that have reservations.

There are three types of notifications:

- **Reminder** - used when there is one admission schedule entry for the event, and it's open; 
- **Reschedule** - used when there is more than one schedule entry for the same event, the first entry is closed, and the last isn't; 
- **Cancellation** - applied when the last scheduled entry for the event is closed. 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Ticket Admissions**, and choose the related link.
2. Select an event, and click **Navigate** in the ribbon, followed by **Admission Schedules**.
3. From here, click **Process** in the ribbon, and then **Schedule Entries**.
4. From the admission entry you wish to notify the ticketholders for, click **Create Ticketholders List**.    
   If the list already exists, there will be prompts regarding actions to append or recreate the list. The ticketholder list is displayed regardless of whether there is someone to notify or not. 
5. If you click **Send Notification** in the ribbon, the system will attempt to send a notification to the selected list of ticketholders that have the **Pending** status, and aren't blocked. 

 {{< alert icon="📝" text="The notification method needs to be specified. Currently, only email method is supported."/>}}

