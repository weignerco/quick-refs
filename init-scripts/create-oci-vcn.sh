# Create OCI Virtual Cloud Network (VCN) using OCI CLI
# Prerequisites:
# - OCI CLI installed and configured
# - OCI compartment OCID known
# Usage: ./create-oci-vcn.sh <compartment-ocid> <vcn-name> <cidr-block>
COMPARTMENT_OCID=$1
VCN_NAME=$2
CIDR_BLOCK=$3
# Create VCN
VCN_ID=$(oci network vcn create \
    --compartment-id $COMPARTMENT_OCID \
    --display-name $VCN_NAME \
    --cidr-block $CIDR_BLOCK \
    --query 'data.id' --raw-output)
echo "VCN '$VCN_NAME' created with OCID: $VCN_ID"
# Create Internet Gateway
IGW_ID=$(oci network internet-gateway create \
    --compartment-id $COMPARTMENT_OCID \
    --vcn-id $VCN_ID \
    --display-name "${VCN_NAME}_IGW" \
    --is-enabled true \
    --query 'data.id' --raw-output)
echo "Internet Gateway created with OCID: $IGW_ID"
# Create Route Table
ROUTE_TABLE_ID=$(oci network route-table create \
    --compartment-id $COMPARTMENT_OCID \
    --vcn-id $VCN_ID \
    --display-name "${VCN_NAME}_RT" \
    --route-rules '[{"cidrBlock":"

    