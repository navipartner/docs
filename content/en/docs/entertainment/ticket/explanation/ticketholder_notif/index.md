---
title: "Ticketholder notification"
description: ""
lead: ""
date: 2023-07-13T08:19:36+02:00
lastmod: 2023-07-13T08:19:36+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "ticketholder_notif-7a066ae6e5e11ced45c231b4fdb3044c"
weight: 999
toc: true
type: docs
---

Notifications can be sent to the ticket-holder prior to the visit and for follow-up purposes, for example, after the visit or if the ticket is revoked. Notifications are generated from the admission schedule entries that have reservations.

Each line in the **Ticket BOM** table can share a common notification profile, or have individual notification profiles for different admissions or ticket items. It is only when the **Ticket BOM** line has a **Notification Profile Code** assigned, that notifications will be considered for that ticket.

The notification rules are collected in a profile. A profile may have multiple lines per a type. It is thus possible to distribute one type of notification at a time.

There are different types of reminders to target the three use-cases:

- **Reservation Reminder** is a reminder for an upcoming event. It requires a ticket reservation. The date and time calculations are based on the admission start and the notification is scheduled to be sent before the _admission start_;
- **After First Admission** is meant to send a notification including a follow-up evaluation of the visit experience. Date and time calculations are based on _admission end_ and the notification is scheduled to be sent after the admission ends;
- **On Each Admission** is meant to send a notification some time after the ticket is scanned. Date and time calculations are based on the actual scan time of the ticket;
- **Revoke** – is meant to send a follow-up evaluation of the ticket-holder's reason for revoking the ticket. The date and time values are based on when the revocation occurred (now) and notification is scheduled to be sent with some delay after that.

{{< alert icon="📝" text="The actual send time of the notification can be offset by a duration expressed in hours, days or minutes. The send time is an approximation, as it depends on how frequently the job for sending notifications is executed."/>}}

It is also possible to state a detention time for each notification rule that can be either meant specifically for the profile or shared for all notifications of the same type. This feature prevents similar notification be sent to the same notification address for the duration of the detention time. For example, if ticket-holder bought and then revoked 5 tickets, it would be unnecessary to send 5 revoke follow-up notifications to the same **Notification Address**.
