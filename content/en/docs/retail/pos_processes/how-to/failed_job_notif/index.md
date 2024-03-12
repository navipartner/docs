---
title: "Send notifications for failed job queue entries and retry"
description: "Recipients can be notified via SMS/email whenever there is an error in an automated task that requires user input to be resolved."
lead: ""
date: 2023-08-18T15:02:44+02:00
lastmod: 2023-08-18T15:02:44+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "failed_job_notif-157915178ae7382fa56d54be5f922088"
weight: 112
toc: true
type: docs
---

Preselected recipients can be notified via SMS or email whenever there is an error in the **Job Queue Entry** which stops the automated task and requires user input to proceed. To configure this behavior, make sure the prerequisites are met and follow the provided steps.

#### Prerequisites

- Make sure there’s a **Job Queue Entry** which has status **On Hold**. 
- Make sure there’s an **E-mail Template** with the code **JOB_QUEUE_ERROR** that references **Table No. 472**.

#### Procedure

1.	Navigate to the **Job Queue Entries** page in Business Central and open the **Job Queue Entry Card** for the entry that you are setting up.
2.	Open the dropdown for **Notification Profile on Error** and then **Select from full list**.
3.	In the **Select – Job Queue Notif. Profiles** pop-up window click **New**.

  ![job_queue1](job_queue1.PNG)

4.	Provide **SALESORDERERROR** in the **Code** field and the **Description**: *Error on Job Queue Entry Sales Order Posting*.    
    As the same job queue notification profile can be used for multiple different **Job Queue Entries**, it’s recommended to create multiple general profiles with less specific email templates that can be reused.
5.	Check off the **Send E-mail** checkbox and open the dropdown next to the **E-mail Template Code**, then select the **E-mail Template** **JOB_QUEUE_ERROR**.      
    Since the email is created with data from the **Job Queue Entry** table, you can find out more about the error from **Description**, **Error Message** and the **Earliest Start Date/Time**.
6.	Provide the email address to which error reports are sent in the **Email** field.     
    If you wish to add multiple recipients, separate the emails with a ‘;’. You can also add default recipients in **E-mail Template** if they need to always receive e-mails with error reports.
7.	(Optional) If there are some urgent tasks and important errors, it may also be beneficial to set the **Send SMS**, **SMS Template Code** and **Phone No.** fields to send SMS from an **SMS Template** as well.
8.	With the **SALESORDERERROR** selected, click **OK** to use this newly created profile and return to the **Job Queue Entry** card.
9.	On the card, check off the **Auto-Reschedule after Error** checkbox to enable the **Auto-Schedule Delay (sec.)** field where you can fill in **86400** to have it attempt to reschedule the job to occur 24 hours after the previous error has occurred.  

  {{< alert icon="📝" text="It is recommended to also have the <b>Notification Profile on Error</b> since it may otherwise appear as if the job is running successfully, even if it’s not. Furthermore, the <b>Auto-Reschedule Delay (sec.)</b> is recommended to be set to a higher value, to provide enough time to fix the error before the next email is sent. For example, if you set <b>Maximum No. of Attempts to Run</b> to <b>5</b>, <b>Rerun Delay (sec.)</b> to <b>300</b> and <b>Auto-Reschedule Delay (sec.)</b> to <b>300</b>, an email will be sent every 1800 seconds."/>}}

The **Job Queue Entry** is now set up to send an email after it has attempted to run the **Maximum No. of Attempts to Run** and then reschedule itself to run again the following day.

