#!/bin/bash

# setup_tables.sh - This script creates the base tables and populates the dimensions

echo 'CREATE DB TABLES'
python create_database_tables.py

echo
echo 'POPULATE DATE DIMENSION TABLE'
python populate_date_dimension.py

echo
echo 'POPULATE STATES DIMENSION TABLE'
python populate_states.py

echo
echo 'POPULATE COUNTIES DIMENSION TABLE'
python populate_counties.py

echo
echo 'POPULATE CBSA DIMENSION TABLE'
python populate_cbsa.py

echo
echo 'POPULATE CSA DIMENSION TABLE'
python populate_csa.py

echo
echo 'POPULATE AAU MEMBERSHIP DIMENSION TABLE'
python populate_aau_membership.py

echo
echo 'POPULATE ATHLETIC CONFERENCES DIMENSION TABLE'
python populate_athletic_conferences.py

echo
echo 'POPULATE CIP HISTORY TABLE'
python populate_cip_history.py

echo
echo 'POPULATE CIP HIERARCHY DIMENSION TABLE'
python populate_cip_hierarchy.py

echo
echo 'POPULATE CARNEGIE CLASSES DIMENSION TABLE'
python populate_carnegie_classes.py

echo
echo 'POPULATE IPEDS DEGREE TYPES DIMENSION TABLE'
python populate_ipeds_degree_types.py

echo
echo 'POPULATE IPEDS DEMOGRAPHIC DIMENSION TABLE'
python populate_ipeds_demographic_dimension.py

echo
echo 'POPULATE IPEDS EMPLOYEE DIMENSION TABLE'
python populate_ipeds_employee_dimension.py

echo
echo 'POPULATE IPEDS FACULTY DIMENSION'
python populate_ipeds_faculty_dimension.py

echo
echo 'POPULATE IPEDS FINANCE (FASB) DIMENSION TABLE'
python populate_ipeds_fasb_finance_dimension.py

echo
echo 'POPULATE SURVEY DIMENSION TABLE'
python populate_ipeds_survey_dimension.py

echo
echo 'POPULATE HERD ACADEMIC FIELDS DIMENSION'
python populate_nsf_herd_academic_fields.py

echo
echo 'POPULATE HERD FEDERAL AGENCIES DIMENSION'
python populate_nsf_herd_federal_agencies.py

echo
echo 'POPULATE LOCAL PEER GROUPS DIMENSION TABLE'
python populate_peer_groups.py

echo
echo 'POPULATE IPEDS CUSTOM PEER LISTS TABLE'
python populate_ipeds_custom_peer_lists.py
