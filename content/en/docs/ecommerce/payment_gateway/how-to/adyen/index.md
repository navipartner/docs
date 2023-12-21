---
title: "Set up Adyen online payment gateway integration"
description: "Refer to this article if you wish to set up the Adyen online payment gateway integration in Business Central."
lead: ""
date: 2023-07-11T10:43:21+02:00
lastmod: 2023-07-11T10:43:21+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "adyen-7fe365989505bd39420d72c0bc061167"
weight: 321
toc: true
type: docs
---

To set up the Adyen online payment gateway integration in Business Central, make sure the prerequisites are met, and follow the provided steps:

## Prerequisite

- Create an API key for Adyen.     
     To allow Business Central to interact with Adyen's API it requires a set of access credentials. The integration uses basic authentication
    and therefore requires a **username** and a **password**. Please follow Adyen's documentation on how to [<ins>generate a basic authentication password<ins>](https://docs.adyen.com/development-resources/api-credentials#basic-authentication).

    {{< alert icon="❗" text="Ensure that the webservice user is enabled and has the both the <b>Merchant PAL webservice</b> role and the <b>Checkout webservice</b> role enabled."/>}}

    {{< alert icon="📝" text="It's recommended to create a new user which will not interfere with any other integrations."/>}}

## Procedure in Business Central

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Payment Gateways**, and select the related link.

2. Click **New** to create a code for Adyen.      

   ![Payment Gateway List](bambora_integration_list.PNG)   

    {{< alert icon="📝" text="Depending the required setup, the options to enable <b>Capture</b>, <b>Refund</b> and <b>Cancel</b> need to be flagged as illustrated in the screenshot above."/>}}

3.	Click **Show Setup Card** to update the fields listed below:

    - **Merchant Name** - The name of your merchant with Adyen.
    - **Environment** - You can choose either  the **Test** or the **Production** environment.   
    - **API URL Prefix** - The URL prefix for your live Adyen account.     
        Follow [<ins>the guide on finding the endpoint URL for the live account<ins>](https://help.adyen.com/knowledge/ecommerce-integrations/integrations-basics/how-can-i-find-the-endpoint-url-for-my-live-account) to find this value. This configuration is only required if **Environment** is set to **Production**.
    - **API Username** - The **username** obtained during the API credential generation.
    - **API Password** - The **password** obtained during the API credential generation.
