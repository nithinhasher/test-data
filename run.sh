#!/bin/sh
datetime=$(date +"%Y-%m-%d_%H-%M")
echo $datetime

/usr/bin/python3.11 -m pytest --html=reports/$datetime/test_data_creation_report.html --capture=tee-sys --self-contained-html pre_run/test_000_setup_test_data.py
echo "time of test data: $datetime"
sleep 20
if [ $? -eq 0 ]; then
    sleep 20
    /usr/bin/python3.11 -m pytest --html=reports/$datetime/test_all_fields.html --capture=tee-sys --self-contained-html tests/
    echo "time of test execution: $datetime"
    if [ $? -eq 0 ]; then
        # Upload the generated reports to S3
        echo "time before uploading it to s3: $datetime"
        /usr/local/bin/aws s3 cp "reports/$datetime/test_all_fields.html" s3://dummy-allllllyanm-report/$datetime
        echo "Script execution completed successfully!"
    else
        echo "Main test script failed."
    fi
else
    echo "Test Data Setup has been failed!"
fi
