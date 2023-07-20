---
title: "Set up Quickpay payment integration"
description: ""
lead: ""
date: 2023-07-11T10:51:29+02:00
lastmod: 2023-07-11T10:51:29+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "quickpay-053820871995ba2faf9501540805a43f"
weight: 121
toc: true
type: docs
---

To set up the Quickpay payment integration in NP Retail, make sure that prerequisites are met and follow the provided steps.

## Prerequisites
 
- Acquire a merchant account.       
    To use Quickpay, you first need to register a merchant account. The merchant account can either be obtained through NaviPartner or you can create it [on your own](https://quickpay.net/helpdesk/create-quickpay-account/).

- Obtain an API key.    
    An API key needs to be procured before any interaction between Business Central and Quickpay can occur. The key can be obtained in the [Quickpay Manager](https://quickpay.net/helpdesk/integration-setup/).

- Ensure that the user associated with the API key has at least the same permissions as the **Api User** system user. This can be achieved by using the **Use template** functionality in Quickpay.
 
## Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Payment Gateways**, and select the related link.

2. Click **New** to create a code for QuickPay.      

  ![Payment Gateway List](bambora_integration_list.PNG)   

  {{< alert icon="📝" text="Depending on the required setup, the options to <b>Enable Capture</b>, <b>Refund</b> and <b>Cancel</b> need to be flagged as illustrated in the provided screenshot."/>}}


3. Click **Show Setup Card** and update the **API Password** field with the key you've previously obtained as a prerequiste.

4. Verify the connectivity with Quickpay using the **Test Connection** action.