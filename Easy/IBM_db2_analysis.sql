/*

IBM is analyzing how their employees are utilizing the Db2 database by tracking the SQL queries executed by their employees. 
The objective is to generate data to populate a histogram that shows the number of unique queries run by employees during 
the third quarter of 2023 

'queries' Table:

| Column Name     |  Type     | 
|-----------------|-----------|
| employee_id     | integer   |
| query_id        | integer   |
| query_starttime | timestamp |
| execution_time  | integer   |


'employees' Table:

| Column Name     |  Type     | 
|-----------------|-----------|
| employee_id     | integer   |
| full_name       | string    |
| gender          | string    |

*/
