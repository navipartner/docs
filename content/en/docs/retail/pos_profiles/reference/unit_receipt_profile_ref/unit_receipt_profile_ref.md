---
title: "POS Unit Receipt Text Profile (reference guide)"
description: "The POS Unit Receipt Text Profile can be used for assigning additional text to the receipt footer area. Every POS unit can contain distinct text in the footer if they have different POS unit Receipt Text Profiles with different text in them."
lead: ""
date: 2023-07-05T10:31:28+02:00
lastmod: 2023-07-05T10:31:28+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "unit_receipt_profile_ref-5f42c9a658b448738a3bde2baf46f345"
weight: 999
toc: true
type: docs
---

The POS Unit Receipt Text Profile can be used for assigning additional text to the receipt footer area. Every POS unit can contain distinct text in the footer if they have different POS unit Receipt Text Profiles with different text in them.
The POS Unit Receipt Text Profile consists of two sections: **General** and **POS Sales Ticket Receipt Text**.

The following fields can be defined in the **General** section:

| Field Name      | Description |
| ----------- | ----------- |
| **Code**       | The unique code for a profile.     |
| **Description**   | The short description of a profile.        |
| **Break Line**  | The number of characters after which the line will be broken. |
| **Sales Ticket Receipt Text** | The text which will be displayed in the footer. |


The **POS Sales Ticket Receipt Text** section is used for entering text which will be shown in the receipt footer. If the text was already entered in the **Sales Ticket Receipt Text** field in the **General** section, it will automatically be displayed in this section. The idea behind this section is that the business can maintain it and promote special messages (seasonal greetings or promotions). It's not necessary to modify the print template, only to enter a message in this section. It is an extension to the footer of the sales ticket. 

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/e47a9668-ebac-462d-aa34-f3fb0b0d5a12" loading="lazy" title="Synthesia video player - POS Academy: Unit Receipt Text Profile " allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>