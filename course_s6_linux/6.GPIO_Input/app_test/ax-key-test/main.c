/** ===================================================== **
 *Author : ALINX Electronic Technology (Shanghai) Co., Ltd.
 *Website: http://www.alinx.com
 *Address: Room 202, building 18, 
           No.518 xinbrick Road, 
           Songjiang District, Shanghai
 *Created: 2020-3-2 
 *Version: 1.0
 ** ===================================================== **/


#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>

int main(int argc, char *argv[])
{
    int fd, fd_l ,ret;
    char *filename, led_value = 0;
    unsigned int key_value;

    /* 验证输入参数个数 */
    if(argc != 2)
    {
        printf("Error Usage\r\n");
        return -1;
    }

    /* 打开输入的设备文件, 获取文件句柄 */
    filename = argv[1];
    fd = open(filename, O_RDWR);
    if(fd < 0)
    {
        /* 打开文件失败 */
        printf("file %s open failed\r\n", argv[1]);
        return -1;
    }

    while(1)
    {
        /* 读取按键状态 */
        ret = read(fd, &key_value, sizeof(key_value));
        if(ret < 0)
        {
            printf("read failed\r\n");
            break;
        }
        /* 按键被按下 */
        if(1 == key_value)
        {
            printf("ps_key1 press\r\n");
            led_value = !led_value;

            /* 用设备节点/dev/gpio_leds, 点亮led */
            fd_l = open("/dev/gpio_leds", O_RDWR);
            if(fd_l < 0)
            {
                printf("file /dev/gpio_leds open failed\r\n");
                break;
            }

            ret = write(fd_l, &led_value, sizeof(led_value));
            if(ret < 0)
            {
                printf("write failed\r\n");
                break;
            }

            ret = close(fd_l);
            if(ret < 0)
            {
                printf("file /dev/gpio_leds close failed\r\n");
                break;
            }
        }
    }

    ret = close(fd);
    if(ret < 0)
    {
        printf("file %s close failed\r\n", argv[1]);
        return -1;
    }

    return 0;
}
























