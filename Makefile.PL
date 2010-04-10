
use strict;
use warnings;

 BEGIN { require 5.008; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t t/Demonstrations/*.t t/Test/Mini/Unit/*.t t/Test/Mini/Unit/Logger/*.t t/Test/Mini/Unit/Logger/Roles/*.t t/Test/Mini/Unit/Logger/Roles/Timings/*.t'
                                 },
                       'NAME' => 'Test::Mini',
                       'DISTNAME' => 'Test-Mini',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Pieter Vande Bruggen <pvande@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'Text::Outdent' => '0.01',
                                             'B' => '0',
                                             'Moose' => '0'
                                           },
                       'ABSTRACT' => 'Clean Unit Testing with Moose',
                       'EXE_FILES' => [],
                       'VERSION' => '0.0501',
                       'PREREQ_PM' => {
                                        'Scalar::Util' => '1.21',
                                        'MooseX::Declare' => '0.31',
                                        'IO::Scalar' => '2.110',
                                        'aliased' => '0',
                                        'MooseX::Getopt' => '0.22',
                                        'List::Util' => '1.21',
                                        'MooseX::Method::Signatures' => '0.30',
                                        'Moose' => '0.98',
                                        'Data::Dumper' => '0',
                                        'Moose::Autobox' => '0.09',
                                        'Exception::Class' => '1.29',
                                        'B::Hooks::OP::Check' => '0.18',
                                        'TryCatch' => '1.002000',
                                        'MooseX::Attribute::ENV' => '0',
                                        'Sub::Install' => '0',
                                        'Data::Inspect' => '0.03',
                                        'Text::Outdent' => '0.01',
                                        'Devel::Declare' => '0.005011'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



