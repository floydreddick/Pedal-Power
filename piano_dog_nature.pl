#!/usr/bin/perl

use strict;
use warnings;

# Pedal Power - calculate the power output from a bicycle pedal stroke

# First, we define the power output constants
my $power_constant = 2.5;
my $power_constant_mm = 0.015;

# Next, we get the user input
print "Please enter the pedal stroke length in metres: ";
my $pedal_stroke_length_m = <STDIN>;
chomp $pedal_stroke_length_m;

# Now, we convert the pedal stroke length to millimetres
my $pedal_stroke_length_mm = $pedal_stroke_length_m * 1000;

# Calculate the power output
my $power_output_m = $power_constant * $pedal_stroke_length_m;
my $power_output_mm = $power_constant_mm * $pedal_stroke_length_mm;

# Output the power output
print "\nThe power output is: \n";
print "Meters: $power_output_m watts \n";
print "Millimetres: $power_output_mm watts \n";

# Sample input/output
# Please enter the pedal stroke length in metres: 0.35
#
# The power output is:
# Meters: 0.875 watts 
# Millimetres: 5.25 watts