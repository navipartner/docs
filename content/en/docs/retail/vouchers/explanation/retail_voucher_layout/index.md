---
title: "Retail voucher layout"
description: "This article contains the best practices and requirements for the retail voucher layout."
lead: ""
date: 2024-01-16T08:08:27+01:00
lastmod: 2024-01-16T08:08:27+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "retail_voucher_layout-0dc065cf9abb715e5ab9bfc7c9cf9e4f"
weight: 141
toc: true
type: docs
---

This article contains the best practices and requirements for designing retail voucher layouts.

## Fonts

You can only use a specified set of fonts in the retail voucher layout. Refer to the [<ins>Microsoft documentation<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/ui-fonts) for full lists of fonts you can use in documents, checks, and barcodes. 

{{< alert icon="📝" text="Uploading custom fonts to Business Central environments isn't possible due to security and legal reasons." />}}

## Barcodes

- Each barcode should be surrounded by a clear area - the optimal barcode layout consists of a black barcode and white area behind and around it. 
- For more information on one-dimensional and two-dimensional barcode fonts, refer to the following [<ins>article on Microsoft's documentation portal<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-report-barcode-fonts).

## Images

The images used in retail voucher layouts should be stored in loss-less formats, such as PNG or BMP.

## Reports

A font can consist of several versions to support different requirements for characteristics like width and height, human-readability, and so on. Each font version has a specific name. You use the font name to set up the barcode in a report layout.

IDAutomation also provides evaluation (demo) fonts for trial and test purposes. The evaluation fonts have names that are similar to the purchased fonts. Evaluation fonts typically include an S and Demo in font name. For example, Code 39 includes a purchased font with the name IDAutomationHC39M and an evaluation font with the name IDAutomationSHC39M Demo.

There are various voucher reports for BC SaaS that you can select depending on the type of barcode you're using:

