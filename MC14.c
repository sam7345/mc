#include <LPC21XX.h>

unsigned int delay;
unsigned int Switchcount=0; 
unsigned int Disp[16]={0x003F0000, 0x00060000, 0x005B0000, 0x004F0000, 0x00660000,0x006D0000,
					   0x007D0000, 0x00070000, 0x007F0000, 0x006F0000, 0x00770000,0x007C0000,
					   0x00390000, 0x005E0000, 0x00790000, 0x00710000 };

#define SELDISP1 0x10000000     
#define SELDISP2 0x20000000		
#define SELDISP3 0x40000000		
#define SELDISP4 0x80000000		
#define ALLDISP  0xF0000000		
#define DATAPORT 0x00FF0000		

int main (void)
{
	PINSEL0 = 0x00000000;   
	PINSEL1 = 0x00000000;
	IO0DIR  = 0xF0FF0000;
	IO1DIR  = 0x00000000;
	
	while(1)
	{
		IO0SET |= ALLDISP;			 
		IO0CLR = 0x00FF0000;		 	
		IO0SET = Disp[Switchcount];	   	
				
		if(!(IO1PIN & 0x00800000))	  	
		{	
			for(delay=0;delay<100000;delay++)	 
			  {}                                     
			
		    if((IO1PIN & 0x00800000))   
			{
				Switchcount++;
				if(Switchcount == 0x10)	
			    {
				   Switchcount = 0;
				   IO0CLR  =	0xF0FF0000;				
			    }
			}
		}	
	}
}


