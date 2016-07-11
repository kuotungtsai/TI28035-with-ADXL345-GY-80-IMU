
void I2CA_Init(void);
Uint16 I2CA_WriteData(struct I2CMSG *msg);
Uint16 I2CA_ReadData(struct I2CMSG *msg);
__interrupt void i2c_int1a_isr(void);

#define I2C_SLAVE_ADDR        0x53 //i2c device address
#define I2C_NUMBYTES          2    //the byte of read datasheet
#define X_HIGH_ADDR 0x32
#define X_LOW_ADDR 0x33
#define Y_HIGH_ADDR 0x34
#define Y_LOW_ADDR 0x35
#define Z_HIGH_ADDR 0x36
#define Z_LOW_ADDR 0x37

/*declare the channel for select*/
Uint16 I2C_read_channel=0x00;
#define X 0X00
#define Y 0X01
#define Z 0X02
//Uint16 I2C_HIGH_ADDR;
//Uint16 I2C_LOW_ADDR;
// Global variables
//this is copy the arduino example, for enable the measurement or something
struct I2CMSG I2cMsgOut1 = { I2C_MSGSTAT_SEND_WITHSTOP,
								I2C_SLAVE_ADDR,
								1,// # of byte
								0X2D, //I2C_EEPROM_HIGH_ADDR,
								8,                   // Msg Byte 1
							};// Msg Byte 1
//this is read the x axis date address
struct I2CMSG I2cMsgIn1 = { I2C_MSGSTAT_SEND_NOSTOP,
							I2C_SLAVE_ADDR,
							I2C_NUMBYTES,
							X_HIGH_ADDR,
							X_LOW_ADDR};

struct I2CMSG *CurrentMsgPtr;				// Used in interrupts

double xg,yg,zg;//the x axis gravity data
Uint16 virtualtimer = 0;
Uint16 readcounter = 0x00;//for lower the repetition rate for read
Uint16 device_intial_done_flag=0xFF;
Uint16 I2CA_Read_fail=0x00;//for check whether device is connected of not

void I2CA_Init(void) {
	// Initialize I2C
	I2caRegs.I2CSAR = 0x0050;		// Slave address - EEPROM control code

	I2caRegs.I2CPSC.all = 23;		  // Prescaler - need 7-12 Mhz on module clk
	I2caRegs.I2CCLKL = 10;			// NOTE: must be non zero
	I2caRegs.I2CCLKH = 5;			// NOTE: must be non zero
	I2caRegs.I2CIER.all = 0x24;		// Enable SCD & ARDY interrupts

	I2caRegs.I2CMDR.all = 0x0020;	// Take I2C out of reset
									// Stop I2C when suspended

	I2caRegs.I2CFFTX.all = 0x6000;	// Enable FIFO mode and TXFIFO
	I2caRegs.I2CFFRX.all = 0x2040;	// Enable RXFIFO, clear RXFFINT,

	return;
}

Uint16 I2CA_WriteData(struct I2CMSG *msg) {
	Uint16 i;

	// Wait until the STP bit is cleared from any previous master communication.
	// Clearing of this bit by the module is delayed until after the SCD bit is
	// set. If this bit is not checked prior to initiating a new message, the
	// I2C could get confused.
	if (I2caRegs.I2CMDR.bit.STP == 1) {
		return I2C_STP_NOT_READY_ERROR;
	}

	// Setup slave address
	I2caRegs.I2CSAR = msg->SlaveAddress;

	// Check if bus busy
	if (I2caRegs.I2CSTR.bit.BB == 1) {
		return I2C_BUS_BUSY_ERROR;
	}

	// Setup number of bytes to send
	// MsgBuffer + Address
	I2caRegs.I2CCNT = msg->NumOfBytes + 2;

	// Setup data to send
	I2caRegs.I2CDXR = msg->MemoryHighAddr;
	I2caRegs.I2CDXR = msg->MemoryLowAddr;
// for (i=0; i<msg->NumOfBytes-2; i++)
	for (i = 0; i < msg->NumOfBytes; i++)

	{
		I2caRegs.I2CDXR = *(msg->MsgBuffer + i);
	}

	// Send start as master transmitter
	I2caRegs.I2CMDR.all = 0x6E20;

	return I2C_SUCCESS;
}

Uint16 I2CA_ReadData(struct I2CMSG *msg) {
	// Wait until the STP bit is cleared from any previous master communication.
	// Clearing of this bit by the module is delayed until after the SCD bit is
	// set. If this bit is not checked prior to initiating a new message, the
	// I2C could get confused.
	if (I2caRegs.I2CMDR.bit.STP == 1) {
		return I2C_STP_NOT_READY_ERROR;
	}

	I2caRegs.I2CSAR = msg->SlaveAddress;

	if (msg->MsgStatus == I2C_MSGSTAT_SEND_NOSTOP) {
		// Check if bus busy
		if (I2caRegs.I2CSTR.bit.BB == 1) {
			return I2C_BUS_BUSY_ERROR;
		}
		I2caRegs.I2CCNT = 2;
		I2caRegs.I2CDXR = msg->MemoryHighAddr;
		I2caRegs.I2CDXR = msg->MemoryLowAddr;
		I2caRegs.I2CMDR.all = 0x2620;		// Send data to setup EEPROM address
	} else if (msg->MsgStatus == I2C_MSGSTAT_RESTART) {
		I2caRegs.I2CCNT = msg->NumOfBytes;	// Setup how many bytes to expect
		I2caRegs.I2CMDR.all = 0x2C20;		// Send restart as master receiver
	}

	return I2C_SUCCESS;
}
