---
title: "POS Input Box Profile events"
description: "The POS Input Box Profiles are used for setting up which data will be recognized in the input box in a POS Unit."
lead: ""
date: 2023-07-04T15:23:46+02:00
lastmod: 2023-07-04T15:23:46+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "input_box_profile-351ec7949c1a360a0f90b84bb23e07b4"
weight: 122
toc: true
type: docs
---

The POS input box profiles are used for setting up the type of data that will be recognized in the POS unit input boxes. There are two types of POS input box profiles - one is used in the **Sale View**, and the other one in the **Payment View** of the POS unit. 

Events which trigger the action for inserting data in the POS are assigned in the **POS Input Box Setup Events** section of **POS Input Box Setups**. In this section the editable fields are **Event Code** and **Enabled**. Every **Event Code** has to be enabled so it can be used in the POS.

Every event needs to be enabled before it can be used on the POS. The following options are available: 

| Code     | Module name | Description | Action code | Action description | POS view | Event codeunit | 
| ----------- | ----------- | ----------- | ----------- | ----------- | ----------- | ----------- |
| **BOARDING_PASS** | Tax Free | Boarding Pass | **BOARDINGPASS** | a POS action for scanning a boarding pass | Sale | 6150837 |
| **BOARDINGPASS** | Tax Free | Boarding Pass | **BOARDINGPASS** | a POS action for scanning a boarding pass | Sale | 6150837 |
| **CUSTOMERNAME** | Customer | Customer Name | **CUSTOMER_SELECT** | a POS action for attaching or removing customers from a POS sale | Sale | 6150865 |
| **CUSTOMERNO** | Customer | Customer No. | **CUSTOMER_SELECT** | a POS action for attaching or removing customers from a POS sale | Sale | 6150865 |
| **DISCOUNT_COUPON** | Discount Coupon | Reference No. | **SCAN_COUPON** | a POS action that handles scanning discount coupons | Sale | 6151590 |
| **EXCHLABEL** | Exchange Label | Barcode | **EXCHANGELABEL** | a POS action for handling exchange labels | Sale | 6150830 |
| **GLOBAL_EXCHANGE** | Global Exchange | Handles return of the global exchange label | **CROSS_REF_RETURN** | a POS action for returning items based on their global cross reference numbers | Sale | 6151169 |
| **INPUTBOX_JSON_ACTION** | JSON Action Orchestration | JSON payload action | **INPUTBOX_JSON** | a POS action for handling JSON sent to the input box | Sale | 6150947 | 
| **ITEM_UNIT_PRICE** | Item | Insert items and set unit prices from the barcode | **ITEM_UNIT_PRICE** | a POS action for inserting items and setting the unit price from the barcode | Sale | 6150855 |
| **ITEMCROSSREFERENCENO** | Item | Item cross reference | **ITEM** | a POS action for inserting item lines into the current transaction | Sale | 6150723 |
| **ITEMNO** | Item | Item number | **ITEM** | a POS action for inserting item lines into the current transaction | Sale | 6150723 |
| **ITEMQTY** | Item | Insert item and set quantity directly from the barcode | **ITEM_QTY** | a POS action for inserting items and setting the quantity directly from the barcode | Sale | 6150856 | 
| **ITEMSEARCH** | Item | Search description | **ITEM** | a POS action for inserting item lines into the current transaction | Sale | 6150723 |
| **MEMBER_ARRIVAL** | Membership management | External card no.  | **MM_MEMBER_ARRIVAL** | a POS action which handles member arrival functions | Sale | 6060140 | 
| **MEMBER_SELECT** | Membership loyalty | External card no. | **MM_MEMBER_LOYALTY** | a POS action used for redeeming member points and applying them as coupons | Sale | 6060146 |
| **PARKED_SALE** | Parked sales ticket no. | Sales ticket no. | **LOAD_FROM_POS_QUOTE** | a POS action for loading the POS sale from the POS saved sale | Sale | 6151005 |
| **PLAY_SOUND** | Global | Plays an audio file from an URL | **PLAY_SOUND** | a POS action for playing back an audio file from the provided URL | Sale | 6150786 | 
| **QTYSTAR** | Sale line | Quantity | **QUANTITY** | a POS action for posting inventory adjustments directly from the POS | Sale | 6150808 |
| **SALEPRICE** | Sale line | Amount | **CHANGE_AMOUNT** | a POS action used for changing the line amount via the POS input box events | Sale | 6151175 |
| **SERIALNOITEMCROSSREF** | Item | Item reference | **ITEM** | a POS action for inserting an item line into the current transaction | Sale | 6150723 |
| **SS_ITEM_SEARCH** | Item | Search description | **SS-ITEM** | a POS action for self-service/inserting item lines into the current transaction  | Sale | 6150723 |
| **SS_ITEM_X_REF_NO** | Item | Item reference | **SS-ITEM** | a POS action for self-service/inserting item lines into the current transaction | Sale | 6150723 |
| **SS_ITEMNO** | Item | Item No. | **SS-ITEM** | a POS action for self-service/inserting item lines into the current transaction | Sale | 6150723 |
| **SS_SERIALNO_X_REF** | Item | Item reference | **SS-ITEM** | a POS action for self-service/inserting item lines into the current transaction | Sale | 6150723 |
| **TICKET_ARRIVAL** | Ticket management | External ticket no. | **TM_TICKETMGMT_3** | a POS action that handles ticket management functions | Sale | 6060123 |
| **SCAN_VOUCHER_2** | Enter reference no. | Reference no.  | **SCAN_VOUCHER_2** | a POS action that handles scanning retail vouchers (payment) | Payment | 6151444 | 


#### See also

- [<ins>Set up POS Input Box profiles<ins>]({{< ref "../../how-to/input_box_prof/index.md" >}})
- [<ins>POS processes<ins>]({{< ref "../../../pos_processes/intro.md" >}})
- [<ins>POS profile overview<ins>]({{< ref "../../intro.md" >}})