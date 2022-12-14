#!/usr/bin/perl
#-----------------------------------------------------------------------------
# AWStats axample plugin
# <-----
# THIS IS A SAMPLE OF AN EMPTY PLUGIN FILE WITH INSTRUCTIONS TO HELP YOU TO
# WRITE YOUR OWN WORKING PLUGIN. REPLACE THIS SENTENCE WITH THE PLUGIN GOAL.
# NOTE THAT A PLUGIN FILE example.pm MUST BE IN LOWER CASE.
# ----->
#-----------------------------------------------------------------------------
# Perl Required Modules: Put here list of all required plugins
#-----------------------------------------------------------------------------
# $Revision: 1.9 $ - $Author: eldy $ - $Date: 2003/09/09 11:09:39 $


# <-----
# ENTER HERE THE USE COMMAND FOR ALL REQUIRED PERL MODULES
#if (!eval ('require "TheModule.pm";')) { return $@?"Error: $@":"Error: Need Perl module TheModule"; }
# ----->
use strict;no strict "refs";



#-----------------------------------------------------------------------------
# PLUGIN VARIABLES
#-----------------------------------------------------------------------------
# <-----
# ENTER HERE THE MINIMUM AWSTATS VERSION REQUIRED BY YOUR PLUGIN
# AND THE NAME OF ALL FUNCTIONS THE PLUGIN MANAGE.
# EACH POSSIBLE FUNCTION AND GOAL ARE DESCRIBE LATER.
my $PluginNeedAWStatsVersion="5.6";
my $PluginHooksFunctions="xxx";
# ----->

# <-----
# IF YOUR PLUGIN NEED GLOBAL VARIABLES, THEY MUST BE DECLARED HERE.
use vars qw/
$PluginVariable1
/;
# ----->



#-----------------------------------------------------------------------------
# PLUGIN FUNCTION: Init_pluginname
#-----------------------------------------------------------------------------
sub Init_example {
	my $InitParams=shift;
	my $checkversion=&Check_Plugin_Version($PluginNeedAWStatsVersion);

	# <-----
	# ENTER HERE CODE TO DO INIT PLUGIN ACTIONS
	debug("InitParams=$InitParams",1);
	$PluginVariable1="";
	# ----->

	return ($checkversion?$checkversion:"$PluginHooksFunctions");
}



# HERE ARE ALL POSSIBLE HOOK FUNCTIONS. YOU MUST CHANGE THE NAME OF THE
# FUNCTION xxx_example INTO xxx_pluginname (pluginname in lower case).
# NOTE THAT IN PLUGINS' FUNCTIONS, YOU CAN USE ANY AWSTATS GLOBAL VARIALES.


#-----------------------------------------------------------------------------
# PLUGIN FUNCTION: AddHTMLStyles_pluginname
# UNIQUE: NO (Several plugins using this function can be loaded)
# Function called to Add HTML styles at beginning of BODY section.
#-----------------------------------------------------------------------------
sub AddHTMLStyles_example {
	# <-----
	# PERL CODE HERE
	# ----->
}

#-----------------------------------------------------------------------------
# PLUGIN FUNCTION: AddHTMLBodyHeader_pluginname
# UNIQUE: NO (Several plugins using this function can be loaded)
# Function called to Add HTML code at beginning of BODY section.
#-----------------------------------------------------------------------------
sub AddHTMLBodyHeader_example {
	# <-----
	# PERL CODE HERE
	# ----->
}

#-----------------------------------------------------------------------------
# PLUGIN FUNCTION: ShowInfoHost_pluginname
# UNIQUE: NO (Several plugins using this function can be loaded)
# Function called to add additionnal columns to the Hosts report.
# This function is called when building rows of the report (One call for each
# row). So it allows you to add a column in report, for example with code :
#   print "<TD>This is a new cell</TD>";
# Parameters: Host name or ip
#-----------------------------------------------------------------------------
sub ShowInfoHost_hostinfo {
	# <-----
	# PERL CODE HERE
	# ----->
}

#-----------------------------------------------------------------------------
# PLUGIN FUNCTION: ShowPagesAddField_pluginname
# UNIQUE: NO (Several plugins using this function can be loaded)
# Function used to add additionnal columns to the Top Pages-URL report.
# This function is called when building rows of the report (One call for each
# row). So it allows you to add a column in report, for example with code :
#   print "<TD>This is a new cell</TD>";
#-----------------------------------------------------------------------------
sub ShowPagesAddField_example {
	# <-----
	# PERL CODE HERE
	# ----->
}

#-----------------------------------------------------------------------------
# PLUGIN FUNCTION: ShowInfoURL_pluginname
# UNIQUE: NO (Several plugins using this function can be loaded)
# Function called to add additionnal information for URLs in URLs' report.
# This function is called after writing the URL value in the URL cell of the
# Top Pages-URL report.
# Parameters: URL
#-----------------------------------------------------------------------------
sub ShowInfoURL_example {
	# <-----
	# PERL CODE HERE
	# ----->
}

#-----------------------------------------------------------------------------
# PLUGIN FUNCTION: ShowInfoUser_pluginname
# UNIQUE: NO (Several plugins using this function can be loaded)
# Function called to add additionnal columns to Authenticated users report.
# This function is called when building rows of the report (One call for each
# row). So it allows you to add a column in report, for example with code :
#   print "<TD>This is a new cell</TD>";
# Parameters: User
#-----------------------------------------------------------------------------
sub ShowInfoUser_example {
	# <-----
	# PERL CODE HERE
	# ----->
}


1;	# Do not remove this line
