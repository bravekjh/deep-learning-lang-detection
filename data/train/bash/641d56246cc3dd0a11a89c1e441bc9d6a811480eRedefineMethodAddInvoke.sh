#
# Copyright 2008 Sun Microsystems, Inc.  All Rights Reserved.
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
#
# This code is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 2 only, as
# published by the Free Software Foundation.
#
# This code is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# version 2 for more details (a copy is included in the LICENSE file that
# accompanied this code).
#
# You should have received a copy of the GNU General Public License version
# 2 along with this work; if not, write to the Free Software Foundation,
# Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
#
# Please contact Sun Microsystems, Inc., 4150 Network Circle, Santa Clara,
# CA 95054 USA or visit www.sun.com if you need additional information or
# have any questions.
#

# @test
# @bug 6667089
# @summary Reflexive invocation of newly added methods broken.
# @author Daniel D. Daugherty
#
# @run shell MakeJAR3.sh RedefineMethodAddInvokeAgent 'Can-Redefine-Classes: true'
# @run build RedefineMethodAddInvokeApp
# @run shell RedefineMethodAddInvoke.sh
#

if [ "${TESTJAVA}" = "" ]
then
  echo "TESTJAVA not set.  Test cannot execute.  Failed."
  exit 1
fi

if [ "${TESTSRC}" = "" ]
then
  echo "TESTSRC not set.  Test cannot execute.  Failed."
  exit 1
fi

if [ "${TESTCLASSES}" = "" ]
then
  echo "TESTCLASSES not set.  Test cannot execute.  Failed."
  exit 1
fi

JAVAC="${TESTJAVA}"/bin/javac
JAVA="${TESTJAVA}"/bin/java

cp "${TESTSRC}"/RedefineMethodAddInvokeTarget_1.java \
    RedefineMethodAddInvokeTarget.java
"${JAVAC}" -d . RedefineMethodAddInvokeTarget.java
mv RedefineMethodAddInvokeTarget.java RedefineMethodAddInvokeTarget_1.java
mv RedefineMethodAddInvokeTarget.class RedefineMethodAddInvokeTarget_1.class

cp "${TESTSRC}"/RedefineMethodAddInvokeTarget_2.java \
    RedefineMethodAddInvokeTarget.java
"${JAVAC}" -d . RedefineMethodAddInvokeTarget.java
mv RedefineMethodAddInvokeTarget.java RedefineMethodAddInvokeTarget_2.java
mv RedefineMethodAddInvokeTarget.class RedefineMethodAddInvokeTarget_2.class

"${JAVA}" ${TESTVMOPTS} -javaagent:RedefineMethodAddInvokeAgent.jar \
    -classpath "${TESTCLASSES}" RedefineMethodAddInvokeApp > output.log 2>&1
cat output.log

MESG="Exception"
grep "$MESG" output.log
result=$?
if [ "$result" = 0 ]; then
    echo "FAIL: found '$MESG' in the test output"
    result=1
else
    echo "PASS: did NOT find '$MESG' in the test output"
    result=0
fi

exit $result
