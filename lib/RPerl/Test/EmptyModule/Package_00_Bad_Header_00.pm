# [[[ TEST : "ERROR ECVPAPC02" ]]]
# [[[ TEST : "Perl::Critic::Policy::Modules::RequireExplicitPackage" ]]]
# [[[ TEST : "Perl::Critic::Policy::TestingAndDebugging::RequireUseStrict" ]]]
# [[[ TEST : "Perl::Critic::Policy::TestingAndDebugging::RequireUseWarnings" ]]]
# [[[ HEADER ]]]
packaged RPerl::Test::EmptyModule::Package_00_Bad_Header_00;
use strict;
use warnings;
use RPerl;
our $VERSION = 0.001_000;

# [[[ SUBROUTINES ]]]
our void $empty_sub = sub { 2; };

1;
1;    # CODE SEPARATOR: end of package
