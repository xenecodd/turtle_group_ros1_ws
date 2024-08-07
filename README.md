# ROS2 Turtle Follow

## Kullanım Talimatları

1. İlk olarak, aşağıdaki komutları ayrı terminallere yazarak ilk olarak turtlesim_node düğümünü, TurtleCreate ve TurtleFollow servislerini başlatın:
    ```sh
    rosrun turtlesim turtlesim_node
    rosrun turtle_control TurtleServerNode.py
    rosrun turtle_control TFollowServer.py
    ```

2. Daha sonra, aşağıdaki komutu kullanarak istediğiniz turtlebot sayısını belirterek istemciyi başlatın:
    ```sh
    rosrun turtle_control TurtleClientNode.py <turtlebot_sayisi>
    ```

3. Şimdi, aşağıdaki komutu kullanarak takip istemcisini başlatın. Program bir input isteyecek, buraya lider olmasını istediğiniz robotun adını yazın:
    ```sh
    rosrun turtle_control TFollowClient.py
    ```

4. Son olarak, aşağıdaki komutu terminale yazarak klavye üzerinden seçtiğiniz lider turtle'ı kontrol edin (`turtle2` kısmına lider olarak seçtiğiniz turtle'ın adını yazın):
    ```sh
    rosrun teleop_twist_keyboard teleop_twist_keyboard.py cmd_vel:=/turtle2/cmd_vel
    ```

5. Not: teleop_twist_keyboard ile ilgili bir sorun çıkarsa aşağıdaki komut satırlarını kullanabilirsiniz
    ```sh
    cd turtle_control_ws/src
    rm -rf teleop_twist_keyboard
    git clone https://github.com/ros-teleop/teleop_twist_keyboard

    ```
## 3 adet turtlebot turtle2'yi takip ediyor:

![Ekran görüntüsü 2024-07-16 174124](https://github.com/user-attachments/assets/0c05d9e4-3529-40e1-ba4e-e75725e40392)

##UPDATE 
Artık turtlebotlar ani hareketler sergileyip duvara çarpmıyor

1. ![image](https://github.com/user-attachments/assets/76c42e9c-f759-4a93-a8c1-95814a454cc3)

2. ![image](https://github.com/user-attachments/assets/56219c1a-708c-4c9e-8010-7430e3fde85f)





