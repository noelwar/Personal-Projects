### Question: Premium vs Freemium

Microsoft <br>
Hard <br>
Interview Questions <br>
ID 10300 <br>


Find the total number of downloads for paying and non-paying users by date.
Include only records where non-paying customers have more downloads than paying customers.
The output should be sorted by earliest date first and contain 3 columns date, non-paying downloads, paying downloads.

ms_user_dimension
|variable|type|
|-|-|
|user_id|int|
|acc_id|int|
<br>

ms_acc_dimension
|variable|type|
|-|-|
|acc_id|int|
|paying_customer|varchar|
<br>

ms_download_facts
|variable|type|
|-|-|
|date|datetime|
|user_id|float|
|downloads|float|
