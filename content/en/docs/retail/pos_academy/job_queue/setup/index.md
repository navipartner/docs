---
title: "Job Queue Entries setup"
description: "Job Queue Entries are a standard Microsoft feature, upgraded with several NP Retail functionalities that improve the workflow of automated jobs."
lead: ""
date: 2023-08-18T14:55:48+02:00
lastmod: 2023-08-18T14:55:48+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-3ca800cfc804e06f97a6834fd584cc62"
weight: 51
toc: true
type: docs
---

Job Queue Entries are a standard Microsoft feature, upgraded with several NP Retail functionalities that improve the workflow of automated jobs.  

## Automatically post Sales Orders every evening via job queue 

You can set up a job that automatically posts only those sales orders which meet the specified criteria. For example, you can create a setup in which only posts those job queue entries that have been released and made under the specific **Salesperson Code**. To configure this behavior, make sure the prerequisites are met and follow the provided steps. 

#### Prerequisites

- Have **Salespeople/Purchasers** with the code **WEB** created.  
- Have a **Job Queue Category** with the code **SALESPOST** created. 

#### Procedure

1.	Navigate to the **Job Queue Entries** page in Business Central.
2.	Click **New** to open a new **Job Queue Entry Card**.
3.	Set the **Object Type to Run** to **Report** if it’s not already set by default.
4.	Set the **Object ID to Run** to **296**.
5.	Select the code **SALESPOST** in the dropdown list next to the **Job Queue Category Code**.
6.	(Optional) You can use the **Job Queue Category Code** to avoid running jobs with overlapping segments at the same time.     
    A single table can’t simultaneously be modified by multiple different jobs. Other jobs will be rescheduled to take place after the first job has been completed. 
7.	In **Maximum No. of Attempts to Run** insert **5** and set the **Rerun Delay (sec.)** to **300**.     
    In certain cases, **Job Queue Entries** may fail due to timeout or connection issues. If you use this option, a job queue will be run up to 5 times, with a 300 second delay between each attempt, to avoid having to restart the job manually.
8.	(Optional) Change the default value (12) in the **Job Timeout** field if you expect the job to be completed in a shorter period or wish to avoid it running into the opening hours.
9.	In the **Report Parameters** section, enable the **Report Request Page Options** toggle switch to open additional options related to the **Batch Post Sales Orders** report.
10.	Enable the **Ship and Invoice** toggle switches. 
11.	Add the following criteria in the filter section and click **OK** to close the window.   
    **Status** = **‘Released’**
    **Salesperson Code** = **‘WEB’** 
12.	In the **Recurrence** section, navigate to **Next Run Data Formula** and fill in **1D**, then set the **Starting Time** to **22:00:00**.     
    The job will be run once every day within the specified time frame.
13.	When using **Next Run Date Formula**, you can keep the **No. of Minutes between Runs** as **0**.          
    The value should be higher than 0 if a job needs to be run more than once a day.
14.	Make sure the **Inactivity Timeout Period** is left as-is (**5**).   
    This option is only used if the job queue entry times out.
15.	(Optional) To set when the job queue entry will be run for the first time during a day, navigate to **Earliest Start Date/Time** and insert **T** to change it to **Today’s Date**, and change the time to **22:00**.
16.	In the **Home** tab click **Set Status to Ready**.       
    The job will now be automatically run each night at 22h.

### Reference

- [Recommended NP Retail Job Queue Entries]({{< ref "../../../pos_processes/reference/job_queue_codeunits/index.md" >}})