rem First off deploy parent
call mvn clean deploy -P nexus

rem Next deploy middleware
cd WFA-Middleware/GeneralUtilities/WFA-GeneralUtils
call mvn clean deploy -P nexus
cd ../../../

rem Next deploy middleware
cd WFA-Middleware/TaskExecutor/WFA-TaskExecutor
call mvn clean deploy -P nexus
cd ../../../

rem Deploy Parser
cd Application/Parser/WFA-Parser
call mvn clean deploy -P nexus
cd ../../../

rem Deploy Samples
cd Application/Samples/SampleParserPlugin
call mvn clean deploy -P nexus
cd ../../../
