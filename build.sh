
echo "$(tput setaf 2)Building nifi base.....$(tput sgr 0)"
docker build --compress -f Dockerfile-nifi-base -t="profirator/nifi-base:1.12.1" .

echo "$(tput setaf 2)Building nifi .....$(tput sgr 0)"
docker build --compress -f Dockerfile -t="profirator/nifi:1.12.1" .
