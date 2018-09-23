# 
echo "Hello, this file will generate your development workspace..."
sleep 1

cd $HOME/Documents && echo "the folders will be generated inside of: " && pwd


generate_folders(){

	echo "Generating the default dev_workspace folder"
	sleep 1
	if [[ -d dev_workspace ]]; then
		echo "Uops, Directory already exists..."
		exit;
	fi

}

while true; do
    read -p "Do you wish to proceed? (type: Y or N) " yn
    case $yn in
        [Yy]* ) echo "Ok, Let's continue..."; generate_folders; break;;
        [Nn]* ) echo "Installation aborted.";exit;;
        * ) echo "Please answer Yes (Yy) or No (Nn).";;
    esac
done

