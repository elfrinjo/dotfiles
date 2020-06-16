#!/bin/bash
#########################################################################
##     tsaClient.sh
#
# Clientscript for the FreeTSA Timestamping Service
# This script generates a tgz archive containing a given file and the
# timestamping information from freetsa.org including tsr, tsq, log and
# the ca certificates.
#
# devops@elfring.ms - 2019-05-29
#
#

echo "Clientscript for the FreeTSA Timestamping Service"
echo "https://www.freetsa.org"
echo

fileToStamp=$1

if [  _$# != _1 ]
then
	echo "Usage: $0 [file to timestamp]"
	echo
	exit 1
fi

if [ ! -e $fileToStamp ]
then
	echo "$fileToStamp does not exist."
	echo
	exit 2
fi

{
echo "Timestamping file $fileToStamp"
echo

echo "-------> Create SHA512 checksum (informational)"
echo "# sha512sum $fileToStamp"
sha512sum $fileToStamp 2>&1 | sed 's/^/     /'
echo

echo "-------> Create and display timestamp query (TSQ)"
echo "# openssl ts -query -data $fileToStamp -no_nonce -sha512 -cert -out $fileToStamp.tsq"
echo "# openssl ts -query -in $fileToStamp.tsq -text"
openssl ts -query -data $fileToStamp -no_nonce -sha512 -cert -out $fileToStamp.tsq 2>&1 | sed 's/^/     /'
openssl ts -query -in $fileToStamp.tsq -text 2>&1 | sed 's/^/     /'
echo

echo "-------> Have the TSQ signed and display the reply (TSR)"
echo "# curl --silent --header "Content-Type: application/timestamp-query" --data-binary "@$fileToStamp.tsq" https://freetsa.org/tsr --output $fileToStamp.tsr"
echo "# openssl ts -reply -in $fileToStamp.tsq -text"
curl --silent --header "Content-Type: application/timestamp-query" --data-binary "@$fileToStamp.tsq" https://freetsa.org/tsr --output $fileToStamp.tsr 2>&1 | sed 's/^/     /'
openssl ts -reply -in $fileToStamp.tsr -text 2>&1 | sed 's/^/     /'
echo

echo "-------> Verify TSR (informational)"
echo "# curl --silent  --output freetsa_cacert.pem https://freetsa.org/files/cacert.pem"
echo "# openssl ts -verify -in $fileToStamp.tsr -queryfile $fileToStamp.tsq -CAfile freetsa_cacert.pem"
curl --silent  --output freetsa_cacert.pem https://freetsa.org/files/cacert.pem 2>&1 | sed 's/^/     /'
openssl ts -verify -in $fileToStamp.tsr -queryfile $fileToStamp.tsq -CAfile freetsa_cacert.pem 2>&1 | sed 's/^/     /'

} | tee $fileToStamp.log

tar czf $fileToStamp.tsa.tgz $fileToStamp.tsq $fileToStamp.tsr $fileToStamp.log freetsa_cacert.pem $fileToStamp
rm $fileToStamp.tsq $fileToStamp.tsr $fileToStamp.log freetsa_cacert.pem
echo
