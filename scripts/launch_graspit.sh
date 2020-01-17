#!/bin/bash


if env | grep -q ^GRASPIT=
then
    echo "Using Already set GRASPIT=" $GRASPIT
else
    export GRASPIT="/home/${USER}/.graspit"
	echo "Defining GRASPIT=" $GRASPIT
fi

export GRASPIT_PLUGIN_DIR=$(dirname $(catkin_find libreachability_energy_plugin.so))

graspit_simulator -p libgraspit_interface,libreachability_energy_plugin,libgrid_sample_plugin --node_name graspit
