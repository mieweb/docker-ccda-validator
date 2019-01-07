echo "Make directories to make sure they are there..."
mkdir -p /etc/ccda/files/validator_configuration/vocabulary/valueset_repository/VSAC
mkdir -p /etc/ccda/files/validator_configuration/vocabulary/code_repository
mkdir -p /etc/ccda/files/validator_configuration/scenarios_directory

echo "Copying validator-api xlsx's..."
cp /etc/submodules/code-validator-api/codevalidator-api/docs/*.xlsx /etc/ccda/files/validator_configuration/vocabulary/valueset_repository/VSAC/
cp /etc/submodules/code-validator-api/codevalidator-api/docs/ValueSetsHandCreatedbySITE/*.xlsx /etc/ccda/files/validator_configuration/vocabulary/valueset_repository/VSAC/

### Removing this file fixes an error 02:11:59,585 ERROR [VocabularyLoadRunner:107] Failed to load configured vocabulary directory.
rm /etc/ccda/files/validator_configuration/vocabulary/valueset_repository/VSAC/ValueSet_format_Template.xlsx

echo "Downloading reference-cdda-validator war file..."
wget https://github.com/siteadmin/reference-ccda-validator/releases/download/1.0.37/referenceccdaservice.war -O /var/lib/tomcat/webapps/referenceccdaservice.war
echo "Done!"
