---
title: "Pay by Link Payment Method Mapping"
description: "The Pay by Link can be mapped in the Payment Method Mapping  "
lead: ""
date: 2025-07-29T08:28:36+02:00
lastmod: 2025-07-29T08:28:36+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pay_by_link-7b679f94313e92a19cf1eb2af30a1c84"
weight: 627
toc: true
type: docs
---

**Payment Method Mapping Functionality Overview**<br/>
This functionality enables the mapping of external payment method data to internal codes used within Business Central for payment processing.

**Key Definitions:**<br/>
<ul><li>External Payment Method Code: This refers to the payment method identifier from an external system, such as a Magento website (e.g., adyen_amazonpay, adyen_cc, adyen_cc_paid).</li>
<li>External Payment Type: This indicates the type of payment as defined by the payment service provider (PSP), such as mc for Mastercard, visa for Visa, etc.</li></ul>

Using a combination of the External Payment Method Code and the External Payment Type, the system identifies the appropriate Payment Gateway Code and Payment Method Code in Business Central to process the payment.

**Special Case: Pay by Link**<br/>
For Pay by Link transactions, the setup differs slightly:
<ul>
<li>External Payment Method Code: This will be left empty because the customer is not selecting a payment method from an external website. Instead, the payment link is generated directly</li>
<li>External Payment Type: When the customer completes the payment, Adyen will return the card type used (e.g., Visa, Mastercard). We configure separate records in the Payment Method Mapping for each expected card type.</li>
</ul>

Business Central uses the combination of the (empty) External Payment Method Code and the provided External Payment Type to determine the correct Payment Method Code for posting the payment.<br/>

While the Payment Gateway Code field can be populated in the Payment Method Mapping, it is not utilized in the Pay by Link scenario. This is because the payment gateway is already known and fixed at the time the payment link is generated.

**Fallback Behavior**<br/>
If no matching record is found in the Payment Method Mapping, the system will default to retrieving the payment account from the NP Pay Setup, consistent with the current behavior.

