echo "Copying validator-api xlsx's..."
cp /etc/submodules/code-validator-api/codevalidator-api/docs/*.xlsx /etc/ccda/files/validator_configuration/vocabulary/valueset_repository/VSAC/
cp /etc/submodules/code-validator-api/codevalidator-api/docs/ValueSetsHandCreatedbySITE/*.xlsx /etc/ccda/files/validator_configuration/vocabulary/valueset_repository/VSAC/

### Removing this file fixes an error 02:11:59,585 ERROR [VocabularyLoadRunner:107] Failed to load configured vocabulary directory.
rm /etc/ccda/files/validator_configuration/vocabulary/valueset_repository/VSAC/ValueSet_format_Template.xlsx


echo "Done!"