---
title: "Create a dynamic ticket"
description: "Dynamic tickets have a flexible admission setup. Refer to this guide to create a dynamic ticket."
lead: ""
date: 2023-07-13T08:45:14+02:00
lastmod: 2023-07-13T08:45:14+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_dynamic_ticket-493ba888e6a5e09e306c1e4ea97da685"
weight: 288
toc: true
type: docs
---

Dynamic tickets have a flexible [<ins>admission<ins>]({{< ref "../../explanation/admission_schedule_lines/index.md" >}}) setup. To create a dynamic ticket, follow the provided steps.

{{< alert icon="❗" text="If you don't know how to set up tickets, please read related links first."/>}}

1. Create the **Ticket Item** that corresponds to your business needs in **Items**.
2. Create the desired [<ins>admission<ins>]({{< ref "../../explanation/admission_schedule_lines/index.md" >}}) in the **Ticket Admission** list.
3. Create **Ticket BOM** with one default **Admission**.
4. Specify the **Required Admissions** by setting the **Admission Inclusion** to:
   - **Required** - this option makes the admission mandatory;
   - **Optional and Not selected** - this option sets the admission as **Optional**, but not selected;
   - **Optional and Selected** - this option sets the admission as **Optional**, but selected by default.
5. If an optional admission requires a separate charge, create a new **Item** and assign it to an optional **Admission** in the **Additional Experience Item No.** field found in the **Ticket Admission** list.

{{< alert icon="📝" text="An item created for an optional admission must <b>NOT</b> have the <b>Ticket Type</b> field populated."/>}}

#### See also

- [<ins>Ticket Designer<ins>]({{< ref "../ticket_designer/index.md" >}})
- [<ins>Set up DIY printed tickets<ins>]({{< ref "../diy_printed_ticket/index.md" >}})
- [<ins>Set up tickets using the Ticket Setup Wizard<ins>]({{< ref "../ticket_setup_wizard/index.md" >}})
- [<ins>Admit an issued ticket<ins>]({{< ref "../admit_issued_ticket/index.md" >}})
- [<ins>Create prepaid tickets<ins>]({{< ref "../create_prepaid/index.md" >}})
- [<ins>Create postpaid tickets<ins>]({{< ref "../create_postpaid/index.md" >}})