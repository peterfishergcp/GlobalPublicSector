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


Once you have your GCP Account, navigate to Google Cloud Storage and create a storage bucket that will hold our CSV data files



![Vaccine Distro Storage Bucket](images/gcs_vaccine_distro_csv.png)


Next, we are going to use Google's BigQuery as our database. 
We are going to create a data set, and then upload the CSV files using the Upload Wizard in BigQuery.




![BigQuery Vaccine Distro Data Set](images/bigquery_vaccine_distro_data_set.png)
