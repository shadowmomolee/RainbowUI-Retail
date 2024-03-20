local E, L, C = select(2, ...):unpack()

if E.isClassic then E.changelog = [=[
v1.15.0.2775
	Talent inspection will correctly work for group members without OmniCD

]=]
elseif E.isBCC then E.changelog = [=[
v2.5.4.2722
	Fixed sync for cross realm group members

]=]
elseif E.isWOTLKC then E.changelog = [=[
v3.4.3.2773
	Added season 8 Wrathful Gladiator's set bonuses
	Fixed incorrect sorting when a unit dies or resurrects on ver.2772
	Added option to change icon texture for 'Trinket, Main Hand, Consumables' spell type.

]=]
else E.changelog = [=[
v10.2.6.2786
	bump toc
	10.2.6 Class Updates
		Casting Holy Word: Chastise with Divine Word active now refunds 15 seconds from the cooldown of Holy Word: Chastise.
		Voice of Harmony now causes Holy Nova to reduce the cooldown of Chastise in addition to Holy Fire.
		Lightwell cooldown reduced by 3 seconds when you cast Holy Word: Serenity or Holy Word: Sanctify.
	Talent trees updated

v10.2.5.2785
	Float Like a Butterfly will correctly reduce Evasion and Feint by 0.5 sec per combo point spent.
	Hotfixes: March 12, 2024
		Float Like a Butterfly (talent) effectiveness is now reduced by 50% in PvP combat.

]=]
end

E.changelog = E.changelog .. "\n\n|cff808080Full list of changes can be found in the CHANGELOG file"
