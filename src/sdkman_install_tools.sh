if ! command -v sdk &> /dev/null
then
    curl -s "https://get.sdkman.io" | bash
    source $HOME/.sdkman/bin/sdkman-init.sh
fi

# Install Java
for i in "21.0.2" "17.0.10" "11.0.22" "8.0.392"
do
  sdk install java $i
done

# Install other Java Languages with sdkman
for i in ant groovy kotlin maven scalacli springboot
do
   sdk install $i
done
 
