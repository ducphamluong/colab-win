read -p "Ctrl + V Authtoken(import token ngrok): " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp 3388 &>/dev/null &
echo Download files from sever
apt-get install qemu
echo "Please wait...."
echo "Start up Windows"
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Ctrl+C to Copy"
echo "Wait 1-2 Minutes to complete setup"
echo "Do not close this tab"
apt-get install qemu-system-x86 -y 
qemu-system-x86_64 -hda w10x64.img -m 8G -smp cores=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic
sleep 43200
