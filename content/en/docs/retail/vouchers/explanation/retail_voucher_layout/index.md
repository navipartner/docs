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

### Code 128

- Report 6014466 "NPR NpRv Voucher Cloud"
- Report 6014492 "NPR NpRv Voucher Cloud 2"

#### Code 128 Fonts (no text below the barcode)

| Font Name      | Font Height | N Dimension |
| ----------- | ----------- | ---------- | 
| IDAutomationC128XXS | .10" or .254 CM | 	10 |
| IDAutomationC128XS |  .20" or .508 CM | 20 |
| IDAutomationC128S	 | .35" or .889 CM | 35 |
| IDAutomationC128M | 	 .50" or 1.27 CM | 50 |
| IDAutomationC128L |  .60" or 1.46 CM	| 58 |
| IDAutomationC128XL | 	 .75" or 1.90 CM | 75 | 
| IDAutomationC128XXL | 1" or 2.54 CM | 100 | 

#### Code 128 Fonts "Character set B" (text below barcode)

| Font Name      | Font Height | N Dimension |
| ----------- | ----------- | ---------- | 
| IDAutomationHbC128XS |  .20" or .508 CM	| 20 | 
| IDAutomationHbC128S | .35" or .889 CM | 35 | 
| IDAutomationHbC128M | 	 .50" or 1.27 CM | 50 |
| IDAutomationHbC128L |  .60" or 1.46 CM	| 58 | 
| IDAutomationHbC128XL |  .75" or 1.90 CM	 | 75 |
| IDAutomationHbC128XXL |  1" or 2.54 CM | 100 |

#### Code 128 Fonts "Character set C" (text below barcode:)

| Font Name      | Font Height | N Dimension |
| ----------- | ----------- | ---------- | 
| IDAutomationHcC128XS |  .20" or .508 CM	 | 20 |
| IDAutomationHcC128S |  .35" or .889 CM	| 35 |
| IDAutomationHcC128M |  .50" or 1.27 CM	 | 50 |
| IDAutomationHcC128L	|  .60" or 1.46 CM	| 58 |
| IDAutomationHcC128XL |  .75" or 1.90 CM	| 75 | 
| IDAutomationHcC128XXL |  1" or 2.54 CM	| 100 | 

### Code 39

- Report 6014513 "NPR NpRv Voucher Cloud C39"
- Report 6014515 "NPR NpRv Voucher Cloud 2 C39"

#### Code 39 Fonts (text below the barcode)

| Font Name      | Font Height |
| ----------- | ----------- | 
| IDAutomationHC39XS |  1/8" (.125") or .3cm |
| IDAutomationHC39S |  1/4" (.25") or .6cm |
| IDAutomationHC39M |  13/32" (.4") or 1cm |
| IDAutomationHC39L |  1/2" (.5") or 1.5cm |
| IDAutomationHC39XL |  7/8" (.88") or 2.2cm |
| IDAutomationHC39XXL |  1 5/16" (1.31") or 3.4cm |

#### Code 39 Fonts (no text below the barcode)

| Font Name      | Font Height |
| ----------- | ----------- | 
| IDAutomationC39XS	|  1/8" (.125") or .3cm |
| IDAutomationC39S |  1/4" (.25") or .6cm |
| IDAutomationC39M |  13/32" (.4") or 1cm |
| IDAutomationC39L |  1/2" (.5") or 1.5cm | 
| IDAutomationC39XL |  7/8" (.88") or 2.2cm |
| IDAutomationC39XXL |  1 5/16" (1.31") or 3.4cm |

#### Extended Code 39 Fonts (text below the barcode)

| Font Name      | Font Height |
| ----------- | ----------- | 
| IDAutomationXHC39XS |  1/8" (.125") or .3cm |
| IDAutomationXHC39S |  1/4" (.25") or .6cm |
| IDAutomationXHC39M |  13/32" (.4") or 1cm |
| IDAutomationXHC39L |  1/2" (.5") or 1.5cm |
| IDAutomationXHC39XL |  7/8" (.88") or 2.2cm |
| IDAutomationXHC39XXL |  1 5/16" (1.31") or 3.4cm |

#### Extended Code 39 Fonts (no text below the barcode)

| Font Name      | Font Height |
| ----------- | ----------- | 
| IDAutomationXC39XS |  1/8" (.125") or .3cm |
| IDAutomationXC39S |  1/4" (.25") or .6cm |
| IDAutomationXC39M |  13/32" (.4") or 1cm |
| IDAutomationXC39L |  1/2" (.5") or 1.5cm |
| IDAutomationXC39XL |  7/8" (.88") or 2.2cm |
| IDAutomationXC39XXL	|  1 5/16" (1.31") or 3.4cm | 

### QR-Code

- Report 6014516 "NPR NpRv Voucher Cloud QR"
- Report 6014517 "NPR NpRv Voucher Cloud 2 QR"

The font used for barcodes is **IDAutomation2D**. 



