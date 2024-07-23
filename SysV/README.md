# SysV

1. move the topLogger SystemV init script to `/etc/init.d`

2. start the init process

    ```shell
    sudo ./etc/init.d/toplogger start
    ```   

3. status check

    ```shell
    sudo ./etc/init.d/toplogger status
    ```   

4. kill the process

    ```shell
    sudo ./etc/init.d/toplogger stop
    ```   

5. install it in the default runlevels so that it starts at boot time

    ```shell
    sudo update-rc.d toplogger defaults
    ```

6. reboot the host and check that the topServer is up and running on the background

    ```shell
    ps uax | grep topServer
    ```
