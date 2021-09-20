OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg c[1];
creg d[1];

h q[1];
cx q[1],q[2];
barrier q[1],q[0],q[2];
cx q[0],q[1];
h q[0];
measure q[0] -> c[0];
measure q[1] -> d[0];
x q[2];
z q[2];