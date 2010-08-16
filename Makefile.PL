
use strict;
use warnings;

 BEGIN { require 5.008; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t t/Demonstrations/*.t t/Test/Mini/*.t t/Test/Mini/Logger/*.t t/Test/Mini/Unit/Sugar/*.t'
                                 },
                       'NAME' => 'Test::Mini',
                       'DISTNAME' => 'Test-Mini',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Pieter van de Bruggen <pvande@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'Mock::Collection' => '0',
                                             'Text::Outdent' => '0.01',
                                             'B' => '0'
                                           },
                       'ABSTRACT' => 'Clean Unit Testing',
                       'EXE_FILES' => [],
                       'VERSION' => '0.06',
                       'PREREQ_PM' => {
                                        'Scalar::Util' => '1.21',
                                        'IO::Scalar' => '2.110',
                                        'Class::MOP' => '1.00',
                                        'aliased' => '0',
                                        'List::Util' => '1.21',
                                        'List::MoreUtils' => '0',
                                        'Try::Tiny' => '0.04',
                                        'Getopt::Long' => '0',
                                        'Sub::Name' => '0',
                                        'B::Hooks::EndOfScope' => '0',
                                        'Exception::Class' => '1.29',
                                        'B::Hooks::OP::Check' => '0.18',
                                        'Data::Inspect' => '0.03',
                                        'Sub::Install' => '0',
                                        'Text::Outdent' => '0.01',
                                        'Devel::Declare' => '0.006',
                                        'Devel::Declare::Context::Simple' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



