# [[[ TEST : "ERROR ECVPARP00" ]]]
# [[[ HEADER ]]]
package RPerl::Test::EmptyModule::Class_00_Bad_VersionNumber_02;
use strict;
use warnings;
use RPerl;
our $VERSION = 0.001_00;

# [[[ OO INHERITANCE ]]]
use parent qw(RPerl::Test);
use RPerl::Test;

# [[[ OO PROPERTIES ]]]
our %properties = ( ## no critic qw(ProhibitPackageVars)  # USER DEFAULT 2: allow OO properties
    empty_property => my integer $TYPED_empty_property = 2
);

# [[[ OO METHODS ]]]
our void__method $empty_method = sub { 2; };

1;
1;                  # CODE SEPARATOR: end of class
