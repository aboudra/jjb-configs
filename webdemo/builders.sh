set -e

# set PATH
export PATH=/c/Python27:/c/Python27/Scripts:${PATH}

# run http server
python demoapp/server.py &

# run robot framework
python -m robot.run --variable BROWSER:${browser} login_tests
