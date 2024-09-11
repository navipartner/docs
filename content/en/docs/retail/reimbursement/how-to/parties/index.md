---
title: "Set up reimbursement parties"
description: "A Reimbursement party is the actual entity to perform reimbursement on and links directly to a Business Central record."
lead: ""
date: 2023-09-06T15:09:19+02:00
lastmod: 2023-09-06T15:09:19+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "parties-933421bff6f9533dd09b03fa785eb1f1"
weight: 251
toc: true
type: docs
---
A Reimbursement party is the actual entity to perform reimbursement on and links directly to a Business Central record in the table specified on the **Party Type**.

{{< alert icon="📝" text="<b>Reimburse every</b> and <b>Next Posting Date Calculation</b> are inherited from the party type, but can be overwritten, if needed."/>}}

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Reimbursement Parties**, and choose the related link.        
2. Click **New**.   
3. Provide the **Party Type** you've previously defined.    
   The default values in the **Reimbursement Party Types** will be assigned to the **Reimburse Every** and **Next Posting Data Calculation** fields. 
4. Provide the **No.** which can either correspond to a customer number or a vendor number.
5. (Optional) Modify the sequence to run the reimbursement in the **Reimburse Every** field.
6. (Optional) Modify the **Next Posting Date Calculation** for the outcome of the process. 

#### See also

- [<ins>Process reimbursements<ins>]({{< ref "../process/index.md" >}})
- [<ins>Set up reimbursement party types<ins>]({{< ref "../party_types/index.md" >}})
- [<ins>Set up reimbursement templates<ins>]({{< ref "../template_setup/index.md" >}})
- [<ins>Output reimbursement entries<ins>]({{< ref "../../explanation/output_entries/index.md" >}})