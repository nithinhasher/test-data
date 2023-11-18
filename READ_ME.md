STEP 1:
Clone the project to your local storage

STEP 2:
Change the directory to project root structure

STEP 3:
Create virtual environment:
python -m venv venv
or (In case the above doesn't work)
python3 -m venv venv

STEP 4:
PIP Packages installation through 'requirments.txt' file,
(Requirements Installation Process):

1. Activate .venv
2. cd to root directory if not
3. "pip install -r requirements.txt" to command line

Also make sure to unzip a file in "./resources/en_core_web_md.zip"
and move the extracted files to  "env/lib/python3.11/site-packages"

Warning: 'venv/bin/python3.11 -m spacy download en_core_web_md' isn't working through requirements.txt, thats the reason to move it manually

STEP 5:
Test Data Extraction from S3 Bucket to do testing

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_data_creation_report.html --capture=tee-sys --self-contained-html pre_run/test_000_setup_test_data.py
(OR)
python -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_data_creation_report.html --capture=tee-sys --self-contained-html pre_run/test_000_setup_test_data.py

STEP 6:
Run actual test scripts

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_all_fields.html --capture=tee-sys --self-contained-html tests/
(OR)
python -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_all_fields.html --capture=tee-sys --self-contained-html tests/






_______________________________________________________________________________________

TO RUN SPECIFIC TEST FILE FROM ROOT DIRECTORY:
python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_data_creation_report.html --capture=tee-sys --self-contained-html pre_run/test_000_setup_test_data.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_title_validation_report.html --capture=tee-sys --self-contained-html tests/test_title_validation.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_short_description_report.html --capture=tee-sys --self-contained-html tests/test_short_description.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_description_report.html --capture=tee-sys --self-contained-html tests/test_description.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_reporter_name_report.html --capture=tee-sys --self-contained-html tests/test_reporter_name.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_reporter_type_report.html --capture=tee-sys --self-contained-html tests/test_reporter_type.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_report_date_time_report.html --capture=tee-sys --self-contained-html tests/test_report_data_time.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_country_name_report.html --capture=tee-sys --self-contained-html tests/test_country_name.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_object_type_api_name_report.html --capture=tee-sys --self-contained-html tests/test_object_type_api_name.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_type_field_report.html --capture=tee-sys --self-contained-html tests/test_type_field.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_sub_type_field_report.html --capture=tee-sys --self-contained-html tests/test_sub_type_field.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_event_data_field_report.html --capture=tee-sys --self-contained-html tests/test_event_date.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_secondary_source_field_report.html --capture=tee-sys --self-contained-html tests/test_secondary_source.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_contact_method_field_report.html --capture=tee-sys --self-contained-html tests/test_contact_method.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_date_of_awareness_field_report.html --capture=tee-sys --self-contained-html tests/test_date_of_awareness.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_department_field_report.html --capture=tee-sys --self-contained-html tests/test_department.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_alnylam_assist_number_field_report.html --capture=tee-sys --self-contained-html tests/test_alnylam_assist_number.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_external_adverse_event_number_field_report.html --capture=tee-sys --self-contained-html tests/test_external_adverse_event_number.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_lot_field_report.html --capture=tee-sys --self-contained-html tests/test_lot.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_record_reference_field_report.html --capture=tee-sys --self-contained-html tests/test_external_record_reference.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_medical_case_number_field_report.html --capture=tee-sys --self-contained-html tests/test_medical_case_number.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_clinical_commercial_field_report.html --capture=tee-sys --self-contained-html tests/test_clinical_commercial.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_device_related_field_report.html --capture=tee-sys --self-contained-html tests/test_device_related.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_far_reportability_assessment_field_report.html --capture=tee-sys --self-contained-html tests/test_far_reportability_assessment.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_adhoc_approval_approved_field_report.html --capture=tee-sys --self-contained-html tests/test_adhoc_approval_required.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_all_fields_report.html --capture=tee-sys --self-contained-html pre_run/test_all_fields.py

python3 -m pytest --html=reports/$(date +"%d_%m_%Y-%H_%M_%S")/test_all_fields.html --capture=tee-sys --self-contained-html tests/
_______________________________________________________________________________________

