#!/bin/bash

recipient_email="owais4500107@cloud.neduet.edu.pk"
subject="I AM SENDING THIS FROM LINUX"
attachment="Anamoly.log"

# Check if uuencode is installed
if ! command -v uuencode &> /dev/null; then
    echo "Error: uuencode is not installed. Please install the 'sharutils' package."
    exit 1
fi

# Send email with attachment
(echo "TEST FROM OWAIS" && uuencode "$attachment" "$attachment") | mail -s "$subject" "$recipient_email"

if [ $? -eq 0 ]; then
    echo "Email sent successfully."
else
    echo "Error: Failed to send email."
fi

