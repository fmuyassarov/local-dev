# systemD

![System V vs SystemD](systemd.avif "System V vs SystemD")


1. move the `toplogger.service` service unit file to `/lib/systemd/system/toplogger.service`

2. enable the service to tell systemd to start the service automatically at boot. This will create a symbolic link

    ```shell
    sudo systemctl enable toplogger.service
    ```

3. start the service

    ```shell
    sudo systemctl start toplogger.service
    ```

4. status check

    ```shell
    sudo systemctl status toplogger.service
    ```

5. disable the service from starting automatically. This will remove the symbolic link that indicated that the service should be started automatically.

    ```shell
    sudo systemctl disable toplogger.service
    ```

6. check if a unit is currently active (running)
    ```shell
    systemctl is-active toplogger.service
    ```

7. check if a unit is currently enabled
    ```shell
    systemctl enabled toplogger.service
    ```

7. check if a unit is currently is-failed
    ```shell
    systemctl is-failed toplogger.service
    ```

8. listing the units
    ```
    systemctl list-units
    ```

9. list all inactive services
    ```
    systemctl list-units --all --state=inactive
    ```

10. displaying the unit file
    ```
    systemctl cat toplogger.service
    ```

11. displaying Dependencies
    ```
    systemctl list-dependencies toplogger.service
    ```

12. checking unit properties
    ```
    systemctl show toplogger.service
    ```

13. editing the unit file
    ```
    sudo systemctl edit toplogger.service
    ```