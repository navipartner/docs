---
title: "Digital receipt actions"
description: "The following POS actions are associated with digital receipts, and can be configured in a way which supports this feature."
lead: ""
date: 2024-08-15T13:25:33+02:00
lastmod: 2024-08-15T13:25:33+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "digital_receipt_actions-1bc5d12c1a2b75d346ba4f30c683800b"
weight: 115
toc: true
type: docs
---

The following POS actions are associated with digital receipts, and can be configured to make the process of issuing digital receipts more flexible:

{{< alert icon="⚠️" text="These actions will only work if you've enabled the digital receipt feature globally in the <b>Digital Receipt Setup</b> administrative section."/>}}

## SEND_RECEIPT - Sending digital receipts via email

The **SEND_RECEIPT** POS action has an option **Select Receipt to Send** that you can use to specify whether standard receipts or digital receipts will be sent after the sale. Digital receipts will be sent automatically only if they haven't previously been issued. Otherwise, they will not be generated twice - the first one that was issued will be used when requested the second time. 

  ![digital_receipts](Images/digital_receipts.PNG)

## SEND_SMS_RECEIPT - Sending digital receipts via SMS

You can send digital receipts via SMS, provided that you've previously created and selected an SMS template for this action. After the phone number is provided, a message with the content corresponding to the template will be sent. A digital receipt will be issued automatically when the action ends, only if one hasn't been issued before. Otherwise, the first one that was issued will be used when requested the second time. 

## PRINT_RECEIPT - Printing receipt

Customers can print digital receipts on running the **PRINT_RECEIPT** POS action with the action parameter **Issue Digital Receipts** enabled. It will issue a digital receipt automatically after the action ends, only if one hasn't previously been issued. Otherwise, the first one that was issued will be used when requested the second time.
