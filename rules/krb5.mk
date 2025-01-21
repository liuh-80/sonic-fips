# krb5

KRB5_VERSION_MAIN = 1.20.1-2
KRB5_VERSION_FULL = $(KRB5_VERSION_MAIN)+deb12u2
KRB5_VERSION_FIPS = $(KRB5_VERSION)+fips
KRB5 = libk5crypto3_$(KRB5_VERSION_FIPS)_$(ARCH).deb
$(KRB5)_SRC_PATH = $(SRC_PATH)/krb5

# Download krb5 code
$(KRB5)_PRE_SCRIPT = rm -rf $(KRB5_SRC_PATH);dget -u http://deb.debian.org/debian/pool/main/k/krb5/krb5_$(KRB5_VERSION_FULL).dsc;mv ./krb5-$(KRB5_VERSION_MAIN) $(KRB5_SRC_PATH);


MAIN_TARGETS += $(KRB5)
$(KRB5)_DERIVED_DEBS =