---
title: "Admission schedule lines"
description: ""
lead: ""
date: 2023-07-12T16:02:09+02:00
lastmod: 2023-07-12T16:02:09+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-316f3b89bae9c7b4b52166806f041d83"
weight: 999
toc: true
type: docs
---

After you've created admissions and schedules, you can use the table in the **Admission Schedule Lines** administrative section, to specify which admissions will adhere to which schedules.

You can also use the **Schedule** and **Admission** options in the ribbon to find the specific admission or schedule, and edit it. 

If you change any information (schedule codes, opening hours etc.) about a schedule or an entry from the list, you can use the **Calculate New Entries** action in the ribbon to ensure that everything is in sync. 

There's also the **Recreate Entries** action which recreates any entries based on configuration when triggered. If something is changed about a schedule, and it needs to be reconfigured or recreated, you can use this action to overwrite any manual modification to a recreated line. 

{{< alert icon="📝" text="If dates or opening hours are changed on the schedule, and the <b>Recreate Entries</b> action is run, any issued tickets on the existing schedule entries will be <b>Void</b>*."/>}}

It is also possible to check beyond a single schedule and admission, and limit the sales or an admission to a specific date across multiple admissions and schedules with the concurrency-related options.

{{< alert icon="❗" text="Bear in mind that some options defined here can be overridden based on the <b>Capacity Limits By</b> option defined for the admission."/>}}


You can state which date the schedule has been proceeded to in the **Schedule Generated Until** field, but note that this is the date the schedule will continue generating entries from. Even though this date is set, there may be no entries created due to the constraint induced by the schedule definition. Thus, creating this date if there are entries created for the admission will result in rescheduling. If the schedule definition is changed, the entries may consequently be cancelled. The rescheduled entries which occur on the same date will retain the external ID they have been initially assigned. 
