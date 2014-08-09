#!/usr/bin/perl

# MobMaker for Imperial Diku Mud by Frank Anderson
# Copyright 2003
# This script may not be copied, changed, or distributed without
# my written consent.
# Please send bug reports and questions to frank@cyberthreat.net 

print "Content-type:text/html\n\n";

# tidy up the form input

read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});
	@pairs = split(/&/, $buffer);
foreach $pair (@pairs) {
    ($name, $value) = split(/=/, $pair);
    $value =~ tr/+/ /;
    $value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
    $FORM{$name} = $value;
}

# html starts

	print "<html><head><title>Your mob by MobMaker</title></head><body>";
	print "<p><h2>Your mob is done!</h2></p>";
	print "Copy the following code and paste it into your favorite text editor:<br>";
	print "<hr><pre>";

# mob number

	print "#$FORM{'mobnumber'}<br>";

# mob keywords, short name and descriptions

	print "$FORM{'mobkeywords'}~<br>";
	print "$FORM{'shortname'}~<br>";
	print "$FORM{'shortdesc'}<br>~<br>";


# --------long desc wrapping issues start here

	use Text::Wrap;
		$initial_tab = "";	# Tab before first line
		$subsequent_tab = "";	# All other lines flush left

	print wrap($initial_tab, $subsequent_tab, $FORM{'longdesc'});
	print "<br>~<br>";


# ---------end long desc issue

# lore

	print "lore<br>";

	
	print wrap($initial_tab, $subsequent_tab, $FORM{'lore'});
	print "<br>~<br>";

# level

	print "level $FORM{'moblevel'}<br>";

# alignment

	print "align $FORM{'alignment'}<br>";

# mob armor class

	print "armor $FORM{'armor'}<br>";

# race

	print "race $FORM{'race'}<br>";

# hitpoints

	print "hp $FORM{'hp1'}d$FORM{'hp2'}+$FORM{'hp3'} $FORM{'hp4'}<br>";
	
# mob mana

if ($FORM{'mana1'}) {
	print "mana $FORM{'mana1'}d$FORM{'mana2'}+$FORM{'mana3'} $FORM{'mana4'}<br>";
}

# gold

	print "gold $FORM{'gold1'}d$FORM{'gold2'}+$FORM{'gold3'}<br>";

# mob sex

	print "$FORM{'sex'}<br>";

# exp modifier

if ($FORM{'expmod'}) {
	print "exp $FORM{'expmod'}<br>";
}

# attacks
# attack 1

if ($FORM{'att1percent'} > 0)
{
	print "$FORM{'att1percent'}% $FORM{'att1type'} $FORM{'att1tar'} $FORM{'att1thaco'} $FORM{'att1dice'}d$FORM{'att1diceside'}+$FORM{'att1diceplus'} $FORM{'att1damtype'}<br>";
}
	else {};

# attack 2

if ($FORM{'att2percent'} > 0)
{
print "$FORM{'att2percent'}% $FORM{'att2type'} $FORM{'att2tar'} $FORM{'att2thaco'} $FORM{'att2dice'}d$FORM{'att2diceside'}+$FORM{'att2diceplus'} $FORM{'att2damtype'}<br>";
}
else {};

# attack 3

if ($FORM{'att3percent'} > 0)
{
print "$FORM{'att3percent'}% $FORM{'att3type'} $FORM{'att3tar'} $FORM{'att3thaco'} $FORM{'att3dice'}d$FORM{'att3diceside'}+$FORM{'att3diceplus'} $FORM{'att3damtype'}<br>";
}
else {};

# attack 4

if ($FORM{'att4percent'} > 0)
{
print "$FORM{'att4percent'}% $FORM{'att4type'} $FORM{'att4tar'} $FORM{'att4thaco'} $FORM{'att4dice'}d$FORM{'att4diceside'}+$FORM{'att4diceplus'} $FORM{'att4damtype'}<br>";
}
else {};

# attack 5

if ($FORM{'att5percent'} > 0)
{
print "$FORM{'att5percent'}% $FORM{'att5type'} $FORM{'att5tar'} $FORM{'att5thaco'} $FORM{'att5dice'}d$FORM{'att5diceside'}+$FORM{'att5diceplus'} $FORM{'att5damtype'}<br>";
}
else {};

# attack 6

if ($FORM{'att6percent'} > 0)
{
print "$FORM{'att6percent'}% $FORM{'att6type'} $FORM{'att6tar'} $FORM{'att6thaco'} $FORM{'att6dice'}d$FORM{'att6diceside'}+$FORM{'att6diceplus'} $FORM{'att6damtype'}<br>";
}
else {};

# attack 7

if ($FORM{'att7percent'} > 0)
{
print "$FORM{'att7percent'}% $FORM{'att7type'} $FORM{'att7tar'} $FORM{'att7thaco'} $FORM{'att7dice'}d$FORM{'att7diceside'}+$FORM{'att7diceplus'} $FORM{'att7damtype'}<br>";
}
else {};

# attack 8

if ($FORM{'att8percent'} > 0)
{
print "$FORM{'att8percent'}% $FORM{'att8type'} $FORM{'att8tar'} $FORM{'att8thaco'} $FORM{'att8dice'}d$FORM{'att8diceside'}+$FORM{'att8diceplus'} $FORM{'att8damtype'}<br>";
}
else {};

# attack 9

if ($FORM{'att9percent'} > 0)
{
print "$FORM{'att9percent'}% $FORM{'att9type'} $FORM{'att9tar'} $FORM{'att9thaco'} $FORM{'att9dice'}d$FORM{'att9diceside'}+$FORM{'att9diceplus'} $FORM{'att9damtype'}<br>";
}
else {};

# attack 10

if ($FORM{'att10percent'} > 0)
{
print "$FORM{'att10percent'}% $FORM{'att10type'} $FORM{'att10tar'} $FORM{'att10thaco'} $FORM{'att10dice'}d$FORM{'att10diceside'}+$FORM{'att10diceplus'} $FORM{'att10damtype'}<br>";
}
else {};
# end of attacks

# start of casting attacks

# spell 1

if ($FORM{'cast1percent'} > 0)
{
print "$FORM{'cast1percent'}% cast $FORM{'cast1spell'} $FORM{'cast1target'}<br>";
}

# spell 2

if ($FORM{'cast2percent'} > 0)
{
print "$FORM{'cast2percent'}% cast $FORM{'cast2spell'} $FORM{'cast2target'}<br>";
}

# spell 3

if ($FORM{'cast3percent'} > 0)
{
print "$FORM{'cast3percent'}% cast $FORM{'cast3spell'} $FORM{'cast3target'}<br>";
}

# spell 4

if ($FORM{'cast4percent'} > 0)
{
print "$FORM{'cast4percent'}% cast $FORM{'cast4spell'} $FORM{'cast4target'}<br>";
}

# spell 5

if ($FORM{'cast5percent'} > 0)
{
print "$FORM{'cast5percent'}% cast $FORM{'cast5spell'} $FORM{'cast5target'}<br>";
}

# spell 6

if ($FORM{'cast6percent'} > 0)
{
print "$FORM{'cast6percent'}% cast $FORM{'cast6spell'} $FORM{'cast6target'}<br>";
}

# spell 7

if ($FORM{'cast7percent'} > 0)
{
print "$FORM{'cast7percent'}% cast $FORM{'cast7spell'} $FORM{'cast7target'}<br>";
}

# spell 8

if ($FORM{'cast8percent'} > 0)
{
print "$FORM{'cast8percent'}% cast $FORM{'cast8spell'} $FORM{'cast8target'}<br>";
}

# spell 9

if ($FORM{'cast9percent'} > 0)
{
print "$FORM{'cast9percent'}% cast $FORM{'cast9spell'} $FORM{'cast9target'}<br>";
}

# spell 10

if ($FORM{'cast10percent'} > 0)
{
print "$FORM{'cast10percent'}% cast $FORM{'cast10spell'} $FORM{'cast10target'}<br>";
}


# end of casting attacks

# switch

if ($FORM{'switchpercent'} > 0)
{
print "$FORM{'switchpercent'}% switch $FORM{'switchtarget'}<br>";
}

# starting position

print "pos $FORM{'startposition'} $FORM{'defposition'}<br>";

# actions

if ($FORM{'ISNPC'}) {{

	print "act $FORM{'ISNPC'} ";
}
if ($FORM{'AGGRESSIVE'}) {
	print "$FORM{'AGGRESSIVE'} ";
}
if ($FORM{'ACT_HUNT'}) {
	print "$FORM{'ACT_HUNT'} ";
}
if ($FORM{'ANARCHIST'}) {
	print "$FORM{'ANARCHIST'} ";
}
if ($FORM{'CLERIC'}) {
	print "$FORM{'CLERIC'} ";
}
if ($FORM{'F_AGG'}) {
	print "$FORM{'F_AGG'} ";
}
if ($FORM{'HIDE'}) {
	print "$FORM{'HIDE'} ";
}
if ($FORM{'MAGE'}) {
	print "$FORM{'MAGE'} ";
}
if ($FORM{'MEMORY'}) {
	print "$FORM{'MEMORY'} ";
}
if ($FORM{'MERCY'}) {
	print "$FORM{'MERCY'} ";
}
if ($FORM{'NICE-THIEF'}) {
	print "$FORM{'NICE-THIEF'} ";
}
if ($FORM{'NOCORPSE'}) {
	print "$FORM{'NOCORPSE'} ";
}
if ($FORM{'PARRY'}) {
	print "$FORM{'PARRY'} ";
}
if ($FORM{'SCAVENGER'}) {
	print "$FORM{'SCAVENGER'} ";
}
if ($FORM{'SENTINEL'}) {
	print "$FORM{'SENTINEL'} ";
}
if ($FORM{'SPEC'}) {
	print "$FORM{'SPEC'} ";
}
if ($FORM{'STAY-TERRAIN'}) {
	print "$FORM{'STAY-TERRAIN'} ";
}
if ($FORM{'STAY-ZONE'}) {
	print "$FORM{'STAY-ZONE'} ";
}
if ($FORM{'SWITCH'}) {
	print "$FORM{'SWITCH'} ";
}
if ($FORM{'THIEF'}) {
	print "$FORM{'THIEF'} ";
}
if ($FORM{'SWIM'}) {
	print "$FORM{'SWIM'} ";
}
if ($FORM{'WARRIOR'}) {
	print "$FORM{'WARRIOR'} ";
}
if ($FORM{'WIMPY'}) {
	print "$FORM{'WIMPY'} ";
}

print "<br>";
}

# immunities

if ($FORM{'immacid'} || $FORM{'immams'} || $FORM{'immblindness'} || $FORM{'immbludgeon'} || $FORM{'immcharm'} || $FORM{'immcold'} || $FORM{'immcurse'} || $FORM{'immdrain'} || $FORM{'immdraining'} || $FORM{'immfeeblemind'} || $FORM{'immfire'} || $FORM{'immlightning'} || $FORM{'immmagic'} || $FORM{'immparalysis'} || $FORM{'immpiercing'} || $FORM{'immpoison'} || $FORM{'immpwb'} || $FORM{'immpwk'} || $FORM{'immpws'} || $FORM{'immsilence'} || $FORM{'immslash'} || $FORM{'immsleep'} || $FORM{'immweb'}) {{

	print "imm ";
}
if ($FORM{'immacid'}) {
	print "$FORM{'immacid'} ";
}
if ($FORM{'immams'}) {
	print "$FORM{'immams'} ";
}
if ($FORM{'immblindness'}) {
	print "$FORM{'immblindness'} ";
}
if ($FORM{'immbludgeon'}) {
	print "$FORM{'immbludgeon'} ";
}
if ($FORM{'immcharm'}) {
	print "$FORM{'immcharm'} ";
}
if ($FORM{'immcold'}) {
	print "$FORM{'immcold'} ";
}
if ($FORM{'immcurse'}) {
	print "$FORM{'immcurse'} ";
}
if ($FORM{'immdrain'}) {
	print "$FORM{'immdrain'} ";
}
if ($FORM{'immdraining'}) {
	print "$FORM{'immdraining'} ";
}
if ($FORM{'immfeeblemind'}) {
	print "$FORM{'immfeeblemind'} ";
}
if ($FORM{'immfire'}) {
	print "$FORM{'immfire'} ";
}
if ($FORM{'immlightning'}) {
	print "$FORM{'immlightning'} ";
}
if ($FORM{'immmagic'}) {
	print "$FORM{'immmagic'} ";
}
if ($FORM{'immparalysis'}) {
	print "$FORM{'immparalysis'} ";
}
if ($FORM{'immpiercing'}) {
	print "$FORM{'immpiercing'} ";
}
if ($FORM{'immpoison'}) {
	print "$FORM{'immpoison'} ";
}
if ($FORM{'immpwb'}) {
	print "$FORM{'immpwb'} ";
}
if ($FORM{'immpwk'}) {
	print "$FORM{'immpwk'} ";
}
if ($FORM{'immpws'}) {
	print "$FORM{'immpws'} ";
}
if ($FORM{'immsilence'}) {
	print "$FORM{'immsilence'} ";
}
if ($FORM{'immslash'}) {
	print "$FORM{'immslash'} ";
}
if ($FORM{'immsleep'}) {
	print "$FORM{'immsleep'} ";
}
if ($FORM{'immweb'}) {
	print "$FORM{'immweb'} ";
}
print "<br>";
}



# affects

if ($FORM{'affblind'} || $FORM{'affcurse'} || $FORM{'affdetectalign'} || $FORM{'affdetectinv'} || $FORM{'affdetectmagic'} || $FORM{'affdivination'} || $FORM{'affdodge'} || $FORM{'afffly'} || $FORM{'afffury'} || $FORM{'affhide'} || $FORM{'affhold'} || $FORM{'affiminv'} || $FORM{'affinfra'} || $FORM{'affinvisible'} || $FORM{'affinvul'} || $FORM{'affparalysis'} || $FORM{'affpoison'} || $FORM{'affpfg'} || $FORM{'affpfe'} || $FORM{'affsanc'} || $FORM{'affsenselife'} || $FORM{'affsleep'} || $FORM{'affsneak'} || $FORM{'affsphere'} || $FORM{'affpfn'} || $FORM{'afftrue'}) {{


	print "aff ";
}
if ($FORM{'affblind'}) {
	print "$FORM{'affblind'} ";
}
if ($FORM{'affcurse'}) {
	print "$FORM{'affcurse'} ";
}
if ($FORM{'affdetectalign'}) {
	print "$FORM{'affdetectalign'} ";
}
if ($FORM{'affdetectinv'}) {
	print "$FORM{'affdetectinv'} ";
}
if ($FORM{'affdetectmagic'}) {
	print "$FORM{'affdetectmagic'} ";
}
if ($FORM{'affdivination'}) {
	print "$FORM{'affdivination'} ";
}
if ($FORM{'affdodge'}) {
	print "$FORM{'affdodge'} ";
}
if ($FORM{'afffly'}) {
	print "$FORM{'afffly'} ";
}
if ($FORM{'afffury'}) {
	print "$FORM{'afffury'} ";
}
if ($FORM{'affhide'}) {
	print "$FORM{'affhide'} ";
}
if ($FORM{'affhold'}) {
	print "$FORM{'affhold'} ";
}
if ($FORM{'affiminv'}) {
	print "$FORM{'affiminv'} ";
}
if ($FORM{'affinfra'}) {
	print "$FORM{'affinfra'} ";
}
if ($FORM{'affinvisible'}) {
	print "$FORM{'affinvisible'} ";
}
if ($FORM{'affinvul'}) {
	print "$FORM{'affinvul'} ";
}
if ($FORM{'affparalysis'}) {
	print "$FORM{'affparalysis'} ";
}
if ($FORM{'affpoison'}) {
	print "$FORM{'affpoison'} ";
}
if ($FORM{'affpfg'}) {
	print "$FORM{'affpfg'} ";
}
if ($FORM{'affpfe'}) {
	print "$FORM{'affpfe'} ";
}
if ($FORM{'affpfn'}) {
	print "$FORM{'affpfn'} ";
}
if ($FORM{'affsanc'}) {
	print "$FORM{'affsanc'} ";
}
if ($FORM{'affsenselife'}) {
	print "$FORM{'affsenselife'} ";
}
if ($FORM{'affsleep'}) {
	print "$FORM{'affsleep'} ";
}
if ($FORM{'affsneak'}) {
	print "$FORM{'affsneak'} ";
}
if ($FORM{'affsphere'}) {
	print "$FORM{'affsphere'} ";
}
if ($FORM{'afftrue'}) {
	print "$FORM{'afftrue'} ";
}
print "<br>";
}


# protections

if ($FORM{'pfacid'} || $FORM{'pfbludgeon'} || $FORM{'pfcold'} || $FORM{'pfdrain'} || $FORM{'pffire'} || $FORM{'pflightning'} || $FORM{'pfmagic'} || $FORM{'pfpiercing'} || $FORM{'pfpoison'} || $FORM{'pfslash'}) {{



	print "prot ";
}
if ($FORM{'pfacid'}) {
	print "$FORM{'pfacid'} ";
}
if ($FORM{'pfbludgeon'}) {
	print "$FORM{'pfbludgeon'} ";
}
if ($FORM{'pfcold'}) {
	print "$FORM{'pfcold'} ";
}
if ($FORM{'pfdrain'}) {
	print "$FORM{'pfdrain'} ";
}
if ($FORM{'pffire'}) {
	print "$FORM{'pffire'} ";
}
if ($FORM{'pflightning'}) {
	print "$FORM{'pflightning'} ";
}
if ($FORM{'pfmagic'}) {
	print "$FORM{'pfmagic'} ";
}
if ($FORM{'pfpiercing'}) {
	print "$FORM{'pfpiercing'} ";
}
if ($FORM{'pfpoison'}) {
	print "$FORM{'pfpoison'} ";
}
if ($FORM{'pfslash'}) {
	print "$FORM{'pfslash'} ";
}
print "<br>";
}




 

# friends
if ($FORM{'friends'}) {
print "friend $FORM{'friends'}<br>";
}


# hate

if ($FORM{'enemy1'} ne 'undef') {

print "hate $FORM{'enemy1'} $FORM{'enemy2'} $FORM{'enemy3'} $FORM{'enemy4'} $FORM{'enemy5'} $FORM{'enemy6'}<br>";

}


# Blocking

if ($FORM{'block1'} ne 'undef') {

	print "block $FORM{'blockdir'} $FORM{'block1'} $FORM{'block2'} $FORM{'block3'} $FORM{'block4'} $FORM{'block5'} $FORM{'block6'}<br>"; 
	print "$FORM{'blockvic'}~<br>";
	print "$FORM{'blockroom'}~<br>";
}




# Special Attacks

if ($FORM{'specvic'}) {

	print "SA<br>"; 
	print "$FORM{'specvic'}~<br>";
	print "$FORM{'specroom'}~<br>";
}

# Loading items

if ($FORM{'item1number'}) {{

	print "$FORM{'item1command'} $FORM{'item1percent'}% $FORM{'item1number'}<br>"; 
}

if ($FORM{'item2number'}) {

	print "$FORM{'item2command'} $FORM{'item2percent'}% $FORM{'item2number'}<br>"; 
}

if ($FORM{'item3number'}) {

	print "$FORM{'item3command'} $FORM{'item3percent'}% $FORM{'item3number'}<br>"; 
}
if ($FORM{'item4number'}) {

	print "$FORM{'item4command'} $FORM{'item4percent'}% $FORM{'item4number'}<br>"; 
}
if ($FORM{'item5number'}) {

	print "$FORM{'item5command'} $FORM{'item5percent'}% $FORM{'item5number'}<br>"; 
}
}


print "<p>";
print "</pre><hr>";
print "Note: Some versions of Internet Explorer are known to have problems with maintaining line breaks through the copy/paste process. If you get strange results after pasting the code into your text editor, try it with a different web browser.<p>";
print "<a href=\"../mobmaker.html\">Start over</a><p>";
print "See changelog <a href=\"../mobmakerchangelog.html\">here</a>.";
print "</body></html>";
