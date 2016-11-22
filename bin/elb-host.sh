#!/bin/bash

ELB_HOST=$(aws cloudformation describe-stacks --stack-name dcos --query 'Stacks[0].Outputs[2].OutputValue' | sed -e s/\"//g)
echo $ELB_HOST
