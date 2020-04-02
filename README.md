# Picture to Field Uploader

## What is it?

This is a simple utility that allows the user to upload a photo and automatically display it in a formula field on a Salesforce record. You can use this on either web or Salesforce mobile; the original use case for this was to allow a user to take photos from their phone and have these displayed in-line on a record page.

Note that currently this works for uploading one _new_ photo to a record; enhancements are likely necessary to support things like changing and deleting photos, as well as if you need to display more than one photo on a record. 

## How to deploy

This is set up to work with SFDX, so you can clone the repo and push it to your scratch org of choice, or you could convert to metadata and push to a sandbox or dev org. Eventually, I'll write full instructions for both options to support those newer to SFDX.

The permission set you need to add for this is called Picture_Uploader.

