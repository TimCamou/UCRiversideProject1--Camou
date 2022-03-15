#!/bin/bash

cat 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule | grep $1 | awk '{print $1,$2,$5,$6}' >> Dealer_Working_During_Losses
