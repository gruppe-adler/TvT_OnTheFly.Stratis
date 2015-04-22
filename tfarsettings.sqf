tf_radio_channel_name = "TFAR";
tf_radio_channel_password = "helium";


tf_no_auto_long_range_radio = true;
tf_give_personal_radio_to_regular_soldier = false;
TF_give_microdagr_to_soldier = false;
tf_same_sw_frequencies_for_side = true;
tf_same_lr_frequencies_for_side = true;
tf_terrain_interception_coefficient = 6.0;


if (isServer) then {
publicVariable "tf_no_auto_long_range_radio";
publicVariable "tf_give_personal_radio_to_regular_soldier";
publicVariable "TF_give_microdagr_to_soldier";
publicVariable "tf_same_sw_frequencies_for_side";
publicVariable "tf_same_lr_frequencies_for_side";
publicVariable "tf_terrain_interception_coefficient";
};