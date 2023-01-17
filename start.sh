if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Agunivers7/IMDb-Movie-Bot1 /IMDb-Movie-Bot1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /IMDb-Movie-Bot1
fi
cd /IMDb-Movie-Bot1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
