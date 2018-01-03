
CURKERNEL=4.4.0-47-generic

ins_netcard()
{
	sudo insmod /lib/modules/${CURKERNEL}/kernel/drivers/net/mii.ko
	sudo insmod asix.ko

	lsmod | grep asix
}

unins_netcard()
{
	sudo rmmod asix.ko
	sudo rmmod mii.ko
}

echo "CURKERNEL=${CURKERNEL}"
