#!/usr/bin/env bash

####
# Tracking the AWS resource usage
####

## CONFIGURE AWS 
# aws configure 
# Get the Access key and Secret key

##############
# Author: <name>
# Date: date
#
# version: v1 
#
# This script will report the AWS resource usage
###############



# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users 

set -x

# List s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list EC2 Instances 
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
# yq - yml parser 
# list lambda 
echo "Print list of lambda functions"
aws lambda list-functions

# list IAM users 
echo "Print list of iam users"
aws iam list-users










# type: tells you what kind of command the shell will execute when you type a name.
# Means --> When I run ls, what exactly am I running?


# A command name can resolve to:
  # Alias
  # Shell builtin
  # Function
  # External binary (file in PATH)
  # type shows you which one.

# whereis: binary + source + man
# command -v: POSIX-safe path 
# type -a ls
