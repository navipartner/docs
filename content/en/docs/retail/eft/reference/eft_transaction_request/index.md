---
title: "EFT Transaction Request table"
description: "Refer to the descriptions of options and fields within the NPR EFT Transaction Request administrative section."
lead: ""
date: 2024-08-21T14:47:17+02:00
lastmod: 2024-08-21T14:47:17+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "eft_transaction_request-6932d9069a36ced14b225f45825edbe4"
weight: 218
toc: true
type: docs
---

Refer to the descriptions of options and fields within the [<ins>**NPR EFT Transaction Request**<ins>]({{< ref "../../explanation/eft_transaction_request/index.md" >}}) administrative section.

| Field Name      | Description |
| ----------- | ----------- |
| **Entry No.** | The entry number is assigned automatically. |
| **Integration Type** | Specifies the identifier of the specific integration used for the request. |
| **Processing Type** | Specifies the type of the transaction request, i.e. **Payment**, **Refund**, **Open**, **Close**, **Auxiliary**, **Other**, **Void**, **Lookup**, **Setup** and **Gift Card Load**. | 
| **Auxiliary Operation Desc.** | When the **Auxiliary** processing type is selected, this field will be populated with a text description of the integration-specific auxiliary function. |
| **Started** | Specifies the timestamp that indicates when the EFT framework has created the request. | 
| **Finished** | Specifies the timestamp that indicates when the EFT framework has received response for the request. |
| **Duration** | Specifies the duration of entry transfer to Business Central. |
| **Result Amount** | This is a result field that the EFT framework will act on upon response. The amount output is intended to be used in whatever syntax is required by the external system, while this field is solely intended for NP Retail. E.g. If an integration requires a positive sign for all operations, a refund of 900,00 can have the amount output of 900,00, whereas the result amount will be -900,00, since the financial value in NP Retail is -900,00. | 
| **Sales Ticket No.** | Specifies the number of the receipt that was active at the time of creating the request. |
| **POS Unit No.** | Specifies the number of the POS unit that was active at the time of creating the request. | 
| **User ID** | Specifies the ID of the user that was logged in Business Central at the time of creating the request. |
| **Successful** | Specifies the transaction result from the external EFT system. | 
| **External Result Known** | This value should be set to "false" only if your integration has invoked the external EFT system successfully, but a problem occurred that prevented a conclusive result from being retrieved. |  
| **Result Processed** | Specifies whether the entry result is processed or not. | 
| **Force Closed** | Indicates whether the dialog was force-closed by the end user, if the integration supports it. | 
| **Reversed** | This value is set by the framework if the transaction has been reversed with a **Void** or a **Refund** transaction. |
| **Recovered** | Specifies if the transaction result can be looked up later (=recovered). The value of this field is used together with **External Result Known** to determine if the end user should be prompted to perform the recovery of a transaction done by the EFT framework, in the event that an error has occurred. | 
| **Result Display Text** | This is an integration-specific option. If the external result isn't known, a message will be displayed. E.g. *Failed to send a message to POI. There may be a network issue, or the WebSocket connection hasn't been established.* | 
| **NST Error** | Can be used to store a C/AL error text in the integration. | 
| **Client Error** | Can be used to store a client-side error text in the integration. | 
| **Result Code**, **Result Description**, **Card Type**, **Card Name**, **Card Number**, and **Card Expiry Date** | These values are integration-specific. | 
| **Card Application ID** | Specifies the card application ID. Each card type has a unique application ID. For example, for VISA, the ID is: A0000000031010. |
| **Reference Number Input** | This field should be set by each integration to whatever value is used as the reference number from the **External EFT System**. A good candidate would be the value of the **Token** field, but some integrations might have syntax requirements. |

{{< alert icon="❗" text="Do not attempt to use the line number of the <b>POS Sale Line</b> as a part of your reference number, as no payment line exists until the request is completed."/>}}

| Field Name      | Description |
| ----------- | ----------- |
| **Reference Number Output** | Specifies the reference number from an external EFT system. This value will be copied onto any payment line created as a result of this EFT transaction request. | 
| **Authorization Number** | This value is integration-specific. |
| **Auxiliary Operation ID** | When the processing type is set to **Auxiliary**, this field will indicate which of the integration-specific auxiliary functions is requested. | 
| **Mode**, **Offline Mode**, and **Integration Version Code** | These values are integration-specific. | 
| **External Transaction ID** | Can be used to store an external customer token/ID. |
| **External Customer ID** | Can be used to store an external customer token/ID. | 
| **Hardware ID** | This value is an integration-specific identifier of the hardware that has performed the request. | 
| **Transaction Date**, **Transaction Time**, **Authentication Method**, and **Bookkeeping Period** | These values are integration-specific. | 
| **Amount Input** | This value is set by the framework to whatever the operation should act on, e.g. A value of 900,00 with a **Payment** processing type means that the request is a payment of 900,00; A value of -900,00 with a **Refund** processing type means that the request is a refund of 900,00. |
| **Amount Output** | Specifies the transaction amount from an external EFT system. | 
| **Currency Code** | Specifies the currency for the **Amount Input** field. |
| **Cashback Amount** | The framework calculates how much of a payment request amount will be above the sale total. This can be used by integrations to disallow cashback or to register it differently than purchasing of goods. | 
| **Fee Amount** | This value is integration-specific. |
| **Financial Impact** | The framework marks all successful transactions with a non-zero result amount as financial impact requests. </br> For LOOKUP (recovery), only the results that realign NP Retail with a previously unknown result are marked as financial impact. Lookups that confirm the originally recorded result aren't marked as financial impact. | 
| **Processed Entry No.** | This number should be provided for the request types that can/need to act another transaction. I.e. when voiding, this field will refer to the entry number of the transaction that is being voided. | 
| **Reversed by Entry No.** | Specifies the entry number of the transaction request that voided the transaction. | 
| **Recovered by Entry No.** | Specifies the entry number of the transaction request that recovered the transaction. | 
| **Initiated from Entry No.** | This value is integration-specific. It can be used to chain requests. It is not a framework feature, but some integrations (e.g. Pepper) use this approach to retry requests in case an internal error occurs. | 
| **Receipt 1** and **Receipt 2** | These are blobs for the first and the second receipt. | 
| **No. of Reprints** | This value should be left as 0 unless reprinted. Each reprint increments by one. It can be used by a receipt print template to print **COPY** text, or similar, on reprints. | 
| **Token** | Specifies the GUID generated upon request creation. |
| **Number of Attempts** | This value is integration-specific. It can be used to chain requests. This isn't a framework feature, but some integrations use this approach to retry requests in case an internal error occurs. | 
| **Moved to POS Entry** | Specifies whether an entry has been moved to POS. | 
| **Matched in Reconciliation** | Specifies whether the entry has been matched in reconciliation. | 
| **PSP Reference** | Specifies the NP Pay transaction ID. | 
| **Reconciled** | Specifies whether the entry has been reconciled with an NP Pay transaction. | 
| **Reconciliation Date** | Specifies the date when the current EFT transaction request has been reconciled. | 
| **Manual Capture** | Specifies whether a manual capture has taken place. | 