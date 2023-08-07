---
title: "Tax-free profile parameters"
description: "Learn what the tax-free profile parameter fields and options are used for."
lead: ""
date: 2023-07-07T12:07:52+02:00
lastmod: 2023-07-07T12:07:52+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "params_ref-6804ab2a4e22ddd14fa3b6586552853b"
weight: 167
toc: true
type: docs
---

The following fields and options can be populated when setting the parameters for tax-free profiles:

{{< alert icon="📝" text="All options in the <b>Required</b> section can be set up by combining relevant laws and preferences. All provided information should cater to specific customers."/>}}

## General settings

| Field Name      | Description |
| ----------- | ----------- |
| **Shop ID**, **Desk ID**, **Username** and **Password** | Provide the customer-specific information in all of these fields. |
| **Consolidation Allowed** | Specifies whether multiple sales lines can be consolidated in a single tax-free voucher.  |
| **Consolidation Separate Limits** | Specifies whether multiple sales receipts in a single consolidation attempt should be treated as one in regards to amount limits. | 
| **Voucher Issue Date Limit** | Specifies the date limit on issuing the tax-free vouchers for the existing sales receipts. |
| **Count Zero VAT Goods for Limit** | Specifies whether or not the items without any VAT should count towards the amount limits even though they aren't a part of the actual voucher. | 

## Dialog settings

All settings in the **Dialog** section control the traveler info capture flow when issuing a tax-free voucher. All of the settings themselves can be hidden, optional or required. 

## Automatic settings

All settings in the **Automatic** section are filled out automatically when the **Auto Configure** action is selected on the **Tax Free Units** administrative section.