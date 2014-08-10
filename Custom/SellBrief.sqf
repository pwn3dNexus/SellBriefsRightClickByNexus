// Sell briefcasescript by Nexus hellsplayground.us
//Special thanks to Matt L for the frame for this. Used his carepackage script. 

private ["_itemUse","_cost","_hasBriefs","_body", "_hisMoney", "_myMoney", "_killsH", "_test2", "_headShots", "_test","_playeridke","_humanity","_sellPrice"];
//////////////////////////CONFIG//////////////////////////////////////S
_cost = 1; //amount of item to take
_itemUse = "ItemBriefCase100oz";// type of item
_hasBriefs = {_itemUse == _x} count (magazines player); //no real use being here unless you make it require a tool, then change magazines to weapons

//END CONFIG

if (_hasBriefs >= _cost) then {

for "_i" from 0 to _cost - 1 do {
player removeMagazine _itemUse;
};

_myMoney = player getVariable ["headShots",0];
_myMoney = _myMoney + 50000;                           // Money trade value 
_body setVariable ["headShots", 0 , true];
player setVariable ["headShots", _myMoney , true];

systemChat format ['You traded your brief for half price. Go to the trader next time for the full amount.'];
sleep 2;

_cid =	player getVariable ["CharacterID","0"];

_headShotsZupa = player getVariable ["headShots",0];


			if(_headShotsZupa > 0) then{
				
				}else{
				_headShotsZupa = 0;
				};

player setVariable ["moneychanged",1,true];	

} else {

};