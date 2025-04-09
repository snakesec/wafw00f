rm -rf /opt/ANDRAX/wafw00f

source /opt/ANDRAX/PYENV/python3/bin/activate

/opt/ANDRAX/PYENV/python3/bin/pip3 install .

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Pip install local package... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf andraxbin/* /opt/ANDRAX/bin
rm -rf andraxbin

chown -R andrax:andrax /opt/ANDRAX
chmod -R 755 /opt/ANDRAX
