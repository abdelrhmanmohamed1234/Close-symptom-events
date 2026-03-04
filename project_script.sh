#!/bin/bash

read -p " please enter the Ticket ID : " incident_number

# get ticket_status
ticket_status_check=$(grep $incident_number ticket_status | awk '{print $2}')
if [[ $ticket_status_check == "opened" ]]
then
echo " the Ticket ID $incident_number still opened "
exit
else
ticket_id=$(grep $incident_number ticket_status | awk '{print $1}')
fi
echo $ticket_id

# get event_status
event_id=$(grep $ticket_id events_tickets | awk '{print $2}')
echo $event_id
event_status_check=$(grep $event_id events_status | awk '{print $2}')
if [[ $event_status_check == "opened" ]]
then
grep $event_id events_status | sed 's/opened/closed/' >> updated_events
fi







  
