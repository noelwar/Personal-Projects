### Question: Highest Cost Orders

Amazon <br>
Medium <br>
Interview Questions <br>
ID 9915 <br>


Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01.
If customer had more than one order on a certain day, sum the order costs on daily basis.
Output customer's first name, total cost of their items, and the date.

For simplicity, you can assume that every first name in the dataset is unique.

customers
|variable|type|
|-|-|
|id|int|
|first_name|varchar|
|last_name|varchar|
|city|varchar|
|address|varchar|
|phone_number|varchar|

<br>

orders
|variable|type|
|-|-|
|id|int|
|cust_id|int|
|order_date|datetime|
|order_details|varchar|
|total_order_cost|int|
