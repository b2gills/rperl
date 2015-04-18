# [[[ HEADER ]]]
package RPerl::CompileUnit::Module;
use strict;
use warnings;
use RPerl;
our $VERSION = 0.001_000;

# [[[ OO INHERITANCE ]]]
# <<< CHANGE_ME: leave as base class for no inheritance, or replace with real parent package name >>>
use parent qw(RPerl::CompileUnit);
use RPerl::CompileUnit;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values & print operator
## no critic qw(RequireInterpolationOfMetachars)  # USER DEFAULT 2: allow single-quoted control characters & sigils

# [[[ INCLUDES ]]]
use RPerl::Parser;
use RPerl::Generator;

# [[[ OO PROPERTIES ]]]
our hash_ref $properties = {};

# [[[ OO METHODS ]]]

our string__hash_ref__method $ast_to_rperl__generate = sub {
    ( my object $self, my string__hash_ref $modes) = @_;
    my string__hash_ref $rperl_source_group = {};
    
#    RPerl::diag('in Module->ast_to_rperl__generate(), received $self = ' . "\n" . RPerl::Parser::rperl_ast__dump($self) . "\n");
#    RPerl::diag('in Module->ast_to_rperl__generate(), received $modes = ' . "\n" . Dumper($modes) . "\n");

    my object__array_ref $modules_and_headers = $self->{children}->[0]->{children};
    
#    RPerl::diag('in Module->ast_to_rperl__generate(), have %RPerl::Generator:: symbol table = ' . "\n" . Dumper(\%RPerl::Generator::) . "\n");
    
    foreach my object $module_or_header (@{$modules_and_headers}) {
#        RPerl::diag('in Module->ast_to_rperl__generate(), have $module_or_header = ' . "\n" . RPerl::Parser::rperl_ast__dump($module_or_header) . "\n\n");
        my string__hash_ref $rperl_source_subgroup = $module_or_header->ast_to_rperl__generate($modes);
        RPerl::Generator::source_group_append($rperl_source_group, $rperl_source_subgroup);
    }

    return $rperl_source_group;
};

our string__hash_ref__method $ast_to_cpp__generate__CPPOPS_PERLTYPES = sub {
    ( my object $self, my string__hash_ref $modes) = @_;
    my string__hash_ref $cpp_source_group = { CPP => q{<<< RP::CU::M DUMMY CPPOPS_PERLTYPES SOURCE CODE >>>} };

    #...
    return $cpp_source_group;
};

our string__hash_ref__method $ast_to_cpp__generate__CPPOPS_CPPTYPES = sub {
    ( my object $self, my string__hash_ref $modes) = @_;
    my string__hash_ref $cpp_source_group = { CPP =>  q{<<< RP::CU::M DUMMY CPPOPS_PERLTYPES SOURCE CODE >>>} };

    #...
    return $cpp_source_group;
};

1;    # end of class
