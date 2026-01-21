# Create a new OCI Linux instance using OCI CLI
# Prerequisites:
# - OCI CLI installed and configured
# - SSH key pair generated
# - OCI compartment OCID, image OCID, shape, and subnet OCID known
# Usage: ./create-oci-vm.sh <compartment-ocid> <image-ocid> <shape> <subnet-ocid> <ssh-public-key-path>
COMPARTMENT_OCID=$1
IMAGE_OCID=$2
SHAPE=$3
SUBNET_OCID=$4
SSH_PUBLIC_KEY_PATH=$5
INSTANCE_NAME="MyLinuxInstance"
oci compute instance launch \
    --compartment-id $COMPARTMENT_OCID \
    --image-id $IMAGE_OCID \
    --shape $SHAPE \
    --subnet-id $SUBNET_OCID \
    --display-name $INSTANCE_NAME \
    --ssh-authorized-keys-file $SSH_PUBLIC_KEY_PATH \
    --wait-for-state RUNNING
echo "Instance '$INSTANCE_NAME' created and running."
# Note: Adjust parameters as needed for your specific requirements.
# Example usage:
# ./create-oci-vm.sh ocid1.compartment.oc1..xxxx ocid
# .image.oc1..xxxx VM.Standard2.1 ocid1.subnet.oc1..xxxx ~/.ssh/id_rsa.pub
# After creation, retrieve the public IP address of the instance
INSTANCE_ID=$(oci compute instance list --compartment-id $COMPARTMENT_OCID --display-name $INSTANCE_NAME --query "data[0].id" --raw-output)
PUBLIC_IP=$(oci compute instance list-vnics --instance-id $INSTANCE_ID --query "data[0].public-ip" --raw-output)
echo "Public IP Address: $PUBLIC_IP"
# You can now SSH into the instance using the public IP
echo "To SSH into the instance, use: ssh -i <path-to-private-key> opc@$PUBLIC_IP"
# Replace <path-to-private-key> with the path to your SSH private key
# Example:
# ssh -i ~/.ssh/id_rsa opc@$PUBLIC_IP
# End of script