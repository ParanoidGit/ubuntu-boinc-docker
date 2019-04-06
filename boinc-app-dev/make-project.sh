#!/usr/bin/env bash

# run example: make-project.sh /boinc-project/src/my-project my_project

project_path=$1
project_name=$2

cd /boinc/tools
export USER="root"

if ! [ -d $project_path/ ]; then
	./make_project --delete_prev_inst --drop_db_first \
		--no_query --url_base http://172.17.0.2 \
		--project_root $project_path $project_name
	echo "Project \"$project_name\" successfully created."
else
	echo "Project \"$project_name\" exists: $project_path"
fi

exit 0
