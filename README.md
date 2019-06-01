# README

Aa simple api backend for a job posting site

**Create job posting:**

```
https://gemnote1.herokuapp.com/jobs
Method: POST
Content-Type: application/json
Body:
{
  "title": "S/W Engineer",
  "description": "Looking for an experienced developer for a permanant assignment.",
  "company_name": "Satterfield-Schaefer",
  "company_url": "http://aamir.pk",
  "posted_on": "2019-05-11",
  "job_type_id": 1
}
```

**View job posts**

Note: Both of the query parameters are optional

```
https://gemnote1.herokuapp.com/jobs?job_type_id=2&lastmonth=1

```

**View job post by ID**

```
https://gemnote1.herokuapp.com/jobs/3
```


