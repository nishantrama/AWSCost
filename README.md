<h1 align="center"> AWS Cost Utility<project-name></h1>

## Overview
Provide an automated mechanism to pull metrics from AWS Billing and Cost Management APIs and ingest them into Dynatrace for charting and Dashboard visualization.


<p align="center">
A conceptual visualization of the end goal. Keep an eye on the goal while enjoying the journey.<br>
  <img width="460" height="300" src="assets/AppMon_Screenshot.png">
</p>


### Team
- Markie "Team Lead" Duby
- Aakash " " Kadakia
- Nish "Stella/Tezla" Rama
- Joe "Which city is he in" Hoffman




### Prerequisites
- bash shell
- Linux
- git
- DT OneAgent running on host executing AWSCost Utility
- AWS instance with AWS Cost API enabled


<project-description></p>
<p align="center"><i>Resolve the mystery of where your AWS costs go.<project-description></i><br>
 <img width="360" height="200" src="assets/Cloud_Money.png">
</p>



### Step 1: Getting Started




1. Pull down the code repo to the host where AWSCost Utility will run.

   ```bash
   git clone https://github.com/nishantrama/AWSCost
   ```

2. Setup ENV_VARs for the process running AWSCost Utility
   ```bash
   DT_HOST=<instance>.live.dynatrace.com
   DT_API_TOKEN=abc123....xyz
   ```

3. Change directories.

    ```bash
    cd AWSCost
    ```

### Step 2. Create keys and grant AWSCost Utility access to your EC2 instance data

1. Grant IAM permissions to use the AWS Cost Explorer API<br>
An IAM user must be granted explicit permission to query the AWS Cost Explorer API. For the policy that grants the necessary permissions to an IAM user. Your IAM role once created the last box will have the access key and secret key. you can also use AWS CLI to create the role. This would be a one time creation.  For acedemic simplicity, the following will suffice, until security matters.
<p align="center">
Screenshot of required permissions.<br>
  <img width="460" height="300" src="assets/IAMConfig.png">
</p>


### Step 3. Execute the script to start the AWS Cost daemon. 



1. Start the script.

   ```bash
   ./src/servercost.sh
   ```

2. Verify console for any errors.  Resolve errors.  <Magic happens here>




### Step 4. Query Data in DT Data Explorer

1. Dynatrace UI -> Explore Data -> AWS.cost.total<?> -> Max -> Split by name


## TODO
1. Detect and display if OA is/not installed on EC2 Instance

2. Rewrite in Python for portability to all environments

3. Verify Plugin is actually running on EC2 instance before deploying

4. Integrate [AWS GetRightSizing Recommendations](
https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetRightsizingRecommendation.html)

5. Expand support to other cloud solutions 

6. Refine AWS permissions to minimum set.
