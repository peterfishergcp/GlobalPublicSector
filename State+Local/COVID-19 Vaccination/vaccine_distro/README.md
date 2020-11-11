# Google Global Public Sector - Looker ML for Vaccine Distribution

Contributors/Owners:
Joseph Lei/Karteek Kotamsetty/Mike Snodgrass/Ranadheer Mettu/Peter Fisher

High Level Overview
1. Create GCP Account
2. Create a GCS - Storage Bucket 
3. Upload the vaccine distro CSVs to the GCS Storage Bucket
4. Create GCP BigQuery DataSet vaccine_distro
5. Import CSVs into BiqQuery Data Set vaccine_distro
6. Test and Confirm Data was loaded
7. Create Looker Instance, and Account, Define Looker Connection to BigQuery, Create Looker Service Account
8. Clone vaccine_distro repo into your Looker Instance
9. Create reports and dashboards with your vaccine_distro LookML


Once you have your GCP Account, navigate to Google Cloud Storage and create a storage bucket that will hold our CSV data files.
CSV files can be downloaded here:[CSV Data Files](https://github.com/peterfishergcp/GlobalPublicSector/tree/main/State%2BLocal/COVID-19%20Vaccination/vaccine_distro/csv%20datafiles)

[QuickStart on how to create a storage bucket](https://cloud.google.com/storage/docs/quickstart-console)

<br/>
<br/>

![Vaccine Distro Storage Bucket](images/gcs_vaccine_distro_csv.png)

<br/>
<br/>

Next, we are going to use Google's BigQuery as our database. 
We are going to create a data set, and then upload the CSV files using the Upload Wizard in BigQuery.

<br/>
<br/>

Step 1 - Create BigQuery Data Set

![Vaccine Distro DataSet](images/step1_dataset.png)

<br/>
<br/>


Step 2a - Create BigQuery Tables from CSV

![Vaccine Distro DataSet](images/step2_createtable.png)

<br/>
<br/>


Step 2b - Load CSV into BigQuery Table

![Vaccine Distro Loading Data](images/step2_wizard_gs.png)

<br/>
<br/>


Step 2c - Get the location for the CSV file. Where to find the GS URI location from Google Cloud Storage

![Vaccine Distro GS Location](images/step2_gs_uri.png)

<br/>
<br/>


Step 2d - Create Table Wizard Completed. Note, that table name, auto-schema, and skip header row fields we either marked and entered.
(*Note: It is best if you create the table using the same name as the CSV file wihout the .csv. As example, the chain_pharmacy.csv we would create a table chain_pharmacy. We will repeat this process for each of the csv files)

![Vaccine Distro Loading Data Final](images/step2_createtable_filledout.png)

<br/>
<br/>



Step 2e - Hit Create Table, and a data load job will start. Once the job is complete, you should see the chain_pharmacy under your vaccine_distro dataset in BigQuery. You can confirm that the data is loading by previewing the data.

![Vaccine Distro Loading Data Confirmation](images/step2_confirmation_table_create_loaded.png)

<br/>
<br/>



Repeat for Step 2a through Step 2e for each csv file.

![Vaccine Distro Storage Bucket](images/gcs_vaccine_distro_csv.png)

<br/>
<br/>



You should have 6 tables:  chain_pharmacy, county_14d, covid19_open_data, jjl_capacity, state_14d, state_fips in your vaccine_distro dataset, similar to the screenshot below.

![BigQuery Vaccine Distro Data Set](images/bigquery_vaccine_distro_data_set.png)

<br/>
<br/>






***This is not an officially supported Google product***


