---
title: "Printer troubleshooting"
description: ""
lead: ""
date: 2023-07-18T13:23:56+02:00
lastmod: 2023-07-18T13:23:56+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "printer-40dab78256fc7288a2a55a19bad300e8"
weight: 999
toc: true
type: docs
---

#### The print job hasn't been sent to the printer. What can be done to fix this?

- One of the following solutions should be applicable in this scenario:

  - Navigate to the **Print Template Output Setup** administrative section, and check whether the **Codeunit Name**, **Codeunit ID**, and the **Output Type** are correctly stated. 

  - Check if the codeunit has been tied to the print template list.

  ![print output list](print_output_list.PNG)

  - Check if the correct print template has been defined in the **Print Template List**.

  {{< alert icon="📝" text="If the Epson printer is used, it's not necessary to select a specific <b>Codeunit ID</b>, unless you're printing labels, in which case both the <b>Codeunit ID</b> and the <b>Print template</b> need to be specified regardless of the selected printer."/>}}
