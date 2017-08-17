/*    Clears inventory of a container
*
*     Parameters:
*     0:    container (object)
*/

params ["_container"];

clearWeaponCargoGlobal _container;
clearItemCargoGlobal _container;
clearMagazineCargoGlobal _container;
clearBackpackCargoGlobal _container;
