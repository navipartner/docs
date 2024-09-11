---
title: "Process Reimbursements"
description: "Refer to this guide to learn how to process the reimbursement."
lead: ""
date: 2023-09-08T09:05:06+02:00
lastmod: 2023-09-08T09:05:06+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "process-2c0d0718b475b5d0093b575c43c63140"
weight: 251
toc: true
type: docs
---

Having completed the necessary configurations for the process, you now need to run the reimbursement.

## Prerequisites

- Set up **Reimbursement Modules**, [<ins>**Reimbursement Templates**<ins>]({{< ref "../template_setup/index.md" >}}), [<ins>**Reimbursement Party Types**<ins>]({{< ref "../party_types/index.md" >}}), and [<ins>**Reimbursement Parties**<ins>]({{< ref "../parties/index.md" >}}).

## Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Reimbursement**, and choose the related link.        
2. Click **New** and populate the necessary fields.     
   - The action **Run Data Collection** performs data collection using the specified **Data Collection Module** and filters.
   - The action **Run Reimbursement** performs the reimbursement using the specified reimbursement module and parameters, if the **Next Reimbursement Date** is set with a date equal or later than today's date.
3. Populate the **Next Reimbursement Date** the first time the reimbursement is run.      
   After that, the date will be calculated according to the value in the **Reimburse every** field.
4. Populate **Next Posting Date** the first time the reimbursement is done.    
   After that, the posting date will be based on the **Next Posting date Calculation** on the party every time the reimbursement is performed. 

#### See also

- [<ins>Set up reimbursement party types<ins>]({{< ref "../party_types/index.md" >}})
- [<ins>Set up reimbursement templates<ins>]({{< ref "../template_setup/index.md" >}})
- [<ins>Output reimbursement entries<ins>]({{< ref "../../explanation/output_entries/index.md" >}})