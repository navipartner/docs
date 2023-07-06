---
title: "Create a retention policy"
description: ""
lead: ""
date: 2023-07-06T09:29:28+02:00
lastmod: 2023-07-06T09:29:28+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "retention_policy-046bce42518bc05253271286981fb32a"
weight: 999
toc: true
type: docs
---

If you wish to fully implement the data archive feature, you need to set the retention policy, and assign a retention period to that retention policy. During that period, the selected records will be stored in the system, but as soon as it expires, the records will be automatically archived. The archived records can be downloaded in the XSL or the CSV format, and stored for later use, while not taking too much space in the environment. 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Retention Policies**, and choose the related link.         
2. Choose the data that is going to be archived when the specified retention period expires, and open its **Retention Policy Card**. 
3. Specify the **Retention Period** in the **Retention Policy** section.     

  {{< alert icon="⚠️" text="The <b>Expired Records</b> field contains the number of records that are going to be archived on the next job run. If you wish to archive the records manually, click <b>Apply Manually</b> in the ribbon."/>}}