echo "Make directories to make sure they are there..."
mkdir -p /etc/ccda/files/validator_configuration/vocabulary/valueset_repository/VSAC
mkdir -p /etc/ccda/files/validator_configuration/vocabulary/code_repository
mkdir -p /etc/ccda/files/validator_configuration/scenarios_directory

echo "Copying validator-api xlsx's..."
cp /etc/submodules/code-validator-api/codevalidator-api/docs/ValueSetsHandCreatedbySITE/*.xlsx /etc/ccda/files/validator_configuration/vocabulary/valueset_repository/VSAC/

echo "Downloading reference-cdda-validator war file..."
wget -nv https://github.com/siteadmin/reference-ccda-validator/releases/download/1.0.37/referenceccdaservice.war -O /var/lib/tomcat/webapps/referenceccdaservice.war


echo "Copying config_extras..."
cp -f /etc/ccda/files/config_extra/web.xml /etc/tomcat/web.xml
cp -f /etc/ccda/files/config_extra/referenceccdaservice.xml /etc/tomcat/Catalina/localhost/referenceccdaservice.xml

echo "Done!"