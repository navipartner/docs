---
title: "Change Ticket Reservation"
description: "With this functionality, it is easy for you to modify a customer's ticket reservation in regards to time and date."
lead: ""
date: 2023-07-13T08:30:16+02:00
lastmod: 2023-07-13T08:30:16+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "change_reservation-8b09cf94224b09dc5c12dda18a792a95"
weight: 288
toc: true
type: docs
---

With this functionality, it is easy for you to modify a customer's ticket reservation in regards to time and date. To change the existing reservation, follow the provided steps.

 
## Procedure in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Ticket BOM** and choose the related link. Then navigate to the **Reschedule Policy** column.  
2. You can choose between three options:

- **Not Allowed** - this is the default option; if selected, rescheduling will not be possible.
- **Always (Until used)** - the ticket can't be rescheduled after it has been used.
- **Cut-Off (Hours)** - if selected, you need to specify the number of hours before ticket expires in the **Reschedule Cut-Off (Hours)** field. It is implied that the ticket is unused.  
    - **Reschedule Cut-Off (Hours)** - you need to specify after how many hours it will be possible to reschedule if **Cut-Off (Hours)** is selected in the **Reschedule Policy** column. The value 24 would allow rescheduling up to 24 hours before the event ends. The default option is to allow the admission until the event ends, and this can be controlled by the **Event Arrival Until Time** option located in the **Ticket Schedules** administrative section. Note that hours can be expressed in decimals. Also note that they can be negative, which makes it possible to reschedule after the event has been concluded. For example, the value -24 would allow rescheduling up to 24 hours after event has completed – provided the ticket was unused.  

   The default **Authorization Code Scheme** is "[N*4]-[N*4]" and can be changed in **Ticket Setup**.  
 
{{< alert icon="📝" text="The <a href=\"/docs/entertainment/ticket/authorization_code_rescheduling/\">authorization code</a> is not for back office users working in Business Central. It is intended for the customer to change their own reservation online (which requires that the feature is set up on the website). This will produce a random number such as '2842-3921' which can be put on a print ticket in the NP Designer."/>}}

3. Find the customer's ticket in the **Ticket List** (for example, by using the **External Ticket No.**).  
4. Click **Process**, and choose **Change Ticket Reservation**.    
   A popup window is displayed. 
5. Click the **Scheduled Time Description** cell describing the open record.    
   You can now view the other admission lines.  
6. Choose the new time and date that the customer would prefer to change to.
7. Click **OK**.     
   Ticket reservation has been successfully changed.

#### See also

- [<ins>NP Designer<ins>]({{< ref "../ticket_designer/index.md" >}})
- [<ins>Set up DIY printed tickets<ins>]({{< ref "../diy_printed_ticket/index.md" >}})
- [<ins>Set up tickets using the Ticket Setup Wizard<ins>]({{< ref "../ticket_setup_wizard/index.md" >}})
- [<ins>Admit an issued ticket<ins>]({{< ref "../admit_issued_ticket/index.md" >}})
- [<ins>Create prepaid tickets<ins>]({{< ref "../create_prepaid/index.md" >}})
- [<ins>Create postpaid tickets<ins>]({{< ref "../create_postpaid/index.md" >}})