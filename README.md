# AWSCost
automated approach to pulling AWS cost for resources and attaching it to instance in DT for easy manipulation

Step 1:
Granting IAM permissions to use the AWS Cost Explorer API
An IAM user must be granted explicit permission to query the AWS Cost Explorer API. For the policy that grants the necessary permissions to an IAM user. Your IAM role once created the last box will have the access key and secret key. you can also use AWS CLI to create this user: 
$ aws iam create-access-key --user-name MyUser
{
    "AccessKey": {
        "UserName": "MyUser",
        "AccessKeyId": "AKIAIOSFODNN7EXAMPLE",
        "Status": "Active",
        "SecretAccessKey": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY",
        "CreateDate": "2018-12-14T17:34:16Z"
    }
}
