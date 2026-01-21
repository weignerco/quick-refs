
# The command is a classic SSH proxying example, perfect for hopping into a private "VM-02" via a public one "VM-01" (a bastion host)

ssh -i vm-02-prv.key -o ProxyCommand="ssh -W %h:%p -i vm-01.prv.key opc@<vm-01 public ip>" opc@<vm-02 private ip>

## Explanation of the command:
# vm-02-prv.key: Private key for VM-02 (the private instance).
# vm-01.prv.key: Private key for VM-01 (the bastion host).
# ProxyCommand="ssh -W %h:%p ...": Tells SSH to forward traffic to VM-02 through VM-01.
# %h:%p: These are placeholders—SSH substitutes them with the target host (<vm-02 private ip>) and port (22 by default).
# opc@<vm-01 public ip>: SSH login for the bastion host.

