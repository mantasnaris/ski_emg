// #define USB_RAWHID
#include <Arduino.h>

#define SERIAL_STREAM
#define SERIAL_MSG
// #define SAVE_SD

int ix = 0;

void setup()
{
    Serial.begin(115200); // Teensy ignores baud rate
}

uint32_t current_micros;
uint32_t prev_micros;
// uint32_t delay_micros = 10; //100 Hz
uint32_t delay_micros = 33; //30 Hz


bool check_time(){
    current_micros = micros();
    if (current_micros - prev_micros >= delay_micros){
        prev_micros = current_micros; // update time
        return true;
    }
    return false;
}

void loop()
{
    
    if (check_time()){
        // call "main" function        
        Serial.print("hello world ");
        ix++;
        Serial.println(current_micros);
    }


    // delay(33); // about 30 fps

}

//     // put your main code here, to run repeatedly:
//     // data will be sent to server
//     uint16_t v1 = analogRead(P1);
//     uint16_t v2 = analogRead(P2);

//     char str[50];
//     sprintf(str, "%d,%d,", v1, v2);

//     uint8_t buffer[50];
    
//     for (int i = 0; i < 50; i++)
//     {
//         buffer[i] = str[i];
//     }
    
//     // This initializes udp and transfer buffer
//     udp.beginPacket(udpAddress, udpPort);
//     udp.write(buffer, 11);
//     udp.endPacket();
//     // Serial.println("packet sent");
//     memset(buffer, 0, 50);
//     // processing incoming packet, must be called before reading the buffer
//     udp.parsePacket();
//     // receive response from server, it will be HELLO WORLD
//     if (udp.read(buffer, 50) > 0)
//     {
//         Serial.print("Server to client: ");
//         Serial.println((char *)buffer);
//     }
//     // Wait for 0.033 seconds (about 30fps)
//     delay(33);
// }



    // // get current time & check if enough has passed to run each callback
    // uint32_t prev_micros = micros();


    // for (int ix = 0; ix < N_CALLBACKS; ix++){
    //     if (current_micros - callbacks[ix].prev_micros >= callbacks[ix].delay_micros){
    //         // update time
    //         // see http://arduino.cc/forum/index.php/topic,124048.msg932592.html#msg932592
    //         callbacks[ix].prev_micros = current_micros;

    //         // call the pointer to the callback fxn if it's enabled
    //         if (callbacks[ix].enabled){ (*(callbacks[ix].fxn))(); }
    //     }
    // }
