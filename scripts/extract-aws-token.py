#!/usr/bin/env python
import sys
import os
from ConfigParser import SafeConfigParser

parser = SafeConfigParser()
parser.read(os.environ['HOME'] + "/.aws/credentials")

print 'export AWS_ACCESS_KEY_ID=' + parser.get(sys.argv[1], 'aws_access_key_id')
print 'export AWS_SECRET_ACCESS_KEY=' + parser.get(sys.argv[1], 'aws_secret_access_key')
print 'export AWS_SESSION_TOKEN=' + parser.get(sys.argv[1], 'aws_session_token')
print 'export AWS_SECURITY_TOKEN=' + parser.get(sys.argv[1], 'aws_session_token')
