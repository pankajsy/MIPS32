#include<iostream>
#include<curses.h>
#include<stdio.h>
using namespace std;
void encryption_fn(void);
void decryption_fn(void);
void right_r(void);
void left_r(void);
void sgn_unsgn(void);
void key_exp(void);

void main(void)
{
	unsigned int ch = 0, choice=1;
	while (choice == 1)
	{
		cout << "\nEnter 1 for Encrytion";
		cout << "\n2 for Decryption";
		cout << "\n3 for right rotate";
		cout << "\n4 for left rotate";
		cout <<	"\n5 for signed_unsigned testing : ";
		cout <<	"\n6 for key exp ";
		cin >> ch;

		if (ch == 1)
		{
			encryption_fn();
		}
		else if (ch == 2)
		{
			decryption_fn();
			getchar();
		}
		else if (ch == 3)
		{
			right_r();
			getchar();
		}
		else if (ch == 4)
		{
			left_r();
			getchar();
		}
		else if (ch == 5)
		{
			sgn_unsgn();
			getchar();
		}
		else if (ch == 6)
		{
			key_exp();
			getchar();
		}
		else
			cout << "\nEnter Correct choice !";
			cout << "\nWant to continue ?";
			cin >> choice;
	}
	
	getchar();
}

void encryption_fn(void)
{
	unsigned int ROM[26] = { 2612779208, 439875579, 1190717637, 1175216261,
							 1895316362, 676037379, 1363022932, 4129418530,
							 824510045, 296237661, 3559352427, 1899681837,
							 1266233241, 664380637, 2811239497, 3739125530,
							 918565270, 2817507913, 1638370232, 990518571,
							 1304414838, 2920685927, 819424010, 1125720836,
							 4140569649, 1694786432 };

	unsigned int count = 0, A_start = 0, B_start = 0, A[13], B[13];
	cout << "\nEnter Value of A : ";
	cin >> A_start;

	cout << "\nEnter Value of B : ";
	cin >> B_start;

	for (count = 0; count < 13; count++)
	{
		if (count == 0)
		{
			A[count] = A_start + ROM[2 * count];
			B[count] = B_start + ROM[2 * count + 1];


			cout << "\nA" << dec << count << "= 0x" << hex << A[count];
			cout << "\nB" << dec << count << "= 0x" << hex << B[count];
		}
		else
		{

			//A[count] = (((A[count-1] ^ B[count - 1]) << (B[count - 1] % 32)) | ((A[count - 1] ^ B[count - 1]) >> (32 - (B[count - 1] % 32)))) + ROM[2 * count];

			//val << shift) | (val >> (32 - shift)

			//B[count] = (((B[count - 1] ^ A[count]) << (A[count] % 32)) | ((B[count - 1] ^ A[count]) >> (32 - (A[count] % 32)))) + ROM[2 * count + 1];

			unsigned int val = 0, shift = 0;

			val = (A[count - 1] ^ B[count - 1]);
			shift = (B[count - 1] % 32);

			A[count] = ((val << shift) | (val >> (32 - shift))) + ROM[2 * count];

			val = 0;
			shift = 0;

			val = (B[count - 1] ^ A[count]);
			shift = (A[count] % 32);

			B[count] = ((val << shift) | (val >> (32 - shift))) + ROM[2 * count + 1];

			cout << "\nA" << dec << count << "= 0x" << hex << A[count];
			cout << "\nB" << dec << count << "= 0x" << hex << B[count];
		}
	}

	getchar();

	cout << "\nA" << dec << (count - 1) << "= 0x" << hex << A[count - 1];
	cout << "\nB" << dec << (count - 1) << "= 0x" << hex << B[count - 1];
}

void decryption_fn(void)
{
	unsigned int ROM[26] = { 2612779208, 439875579, 1190717637, 1175216261,
							 1895316362, 676037379, 1363022932, 4129418530,
							 824510045, 296237661, 3559352427, 1899681837,
							 1266233241, 664380637, 2811239497, 3739125530,
							 918565270, 2817507913, 1638370232, 990518571,
							 1304414838, 2920685927, 819424010, 1125720836,
							 4140569649, 1694786432 };

	unsigned int A_start = 0, B_start = 0, A[13], B[13];
	int count = 0;
	cout << "\nEnter Value of A12 : ";
	cin >> A[12];

	cout << "\nEnter Value of B12 : ";
	cin >> B[12];

	for (count = 12; (count >= 0); count --)
	{
		if (count == 0)
		{
			A_start = A[count] - ROM[2 * count];
			B_start = B[count] - ROM[2 * count + 1];

			cout << "\nA" << dec << count << "= 0x" << hex << A[count];
			cout << "\nB" << dec << count << "= 0x" << hex << B[count];
		}
		else
		{
			//A[count] = (((A[count-1] ^ B[count - 1]) << (B[count - 1] % 32)) | ((A[count - 1] ^ B[count - 1]) >> (32 - (B[count - 1] % 32)))) + ROM[2 * count];

			//val << shift) | (val >> (32 - shift)

			//B[count] = (((B[count - 1] ^ A[count]) << (A[count] % 32)) | ((B[count - 1] ^ A[count]) >> (32 - (A[count] % 32)))) + ROM[2 * count + 1];

			unsigned int val = 0, shift = 0;

			val = (B[count] - ROM[2 * count + 1]);

			cout << "Bcount " << hex << B[count];
			cout << "ROM value" << hex << ROM[2 * count + 1];
			cout << "value " << hex << val;

			shift = (A[count] % 32);
			B[count-1] = ((val >> shift) | (val << (32 - shift))) ^ shift;
			 
			val = 0;
			shift = 0;

			val = (A[count] - ROM[2 * count]);
			shift = (B[count - 1] % 32);

			A[count-1] = ((val >> shift) | (val << (32 - shift))) ^ shift;

			cout << "\nA" << dec << count << "= 0x" << hex << A[count];
			cout << "\nB" << dec << count << "= 0x" << hex << B[count];

		}
	}

	cout << "\nA" << "= 0x" << hex << A_start;
	cout << "\nB" << "= 0x" << hex << B_start;

	getchar();

}



void key_exp(void)
{
	unsigned int S[26] = { 3084996963, 1444465436,  4098901205, 2458369678,817838151, 3472273920, 1831742393, 191210866,
	2845646635, 1205115108,  3859550877, 2219019350,578487823, 3232923592,  1592392065, 4246827834,
	2606296307, 965764780, 3620200549, 1979669022,339137495, 2993573264,  1353041737, 4007477506,
	 2366945979, 726414452 };

	unsigned int L[4] = {0, 0, 0, 0};

	unsigned int A = 0;
	unsigned int B = 0;
	unsigned int ukey = 0;
	int count = 0;
    int i = 0;
    int j = 0;
    int i_mod = 26;
    int j_mod = 4;
    int sab = 0;
    int shift3 = 3;
    int ab = 0, lab = 0;
	for (count = 78; (count >= 0); count --)
	{
	        sab = S[i] + A + B;
	        cout << "\n(S[i] + A + B)="<<" 0x"<<hex<<sab;

			A = S[i] = ((sab >> shift3) | (sab << (32 - shift3)));
			cout << "\nA = S[i] = (S[i] + A + B) <<< 3="<<" 0x"<<hex<<A;

			ab = A + B;
			cout << "\nA + B ="<<" 0x"<<hex<<ab;

            lab = L[j] + ab;
            cout << "\n(L[j] + A + B)="<<" 0x"<<hex<<lab;

			B = L [j] = ((lab >> ab) | (lab << (32 - ab)));
			cout << "\n(B = L[j] = (L[j] + A + B) <<< (A + B)="<<" 0x"<<hex<<B;

			i = (i + 1) % i_mod;
			i = (j + 1) % j_mod;
			cout << "\ni = "<<" 0x"<<hex<<i;
			cout << "\n(j ="<<" 0x"<<hex<<j;
    }

    cout<<"-----------------------------------------------end";
	getchar();

}


void right_r(void)
{
	unsigned int x = 0, val, shift;
	cout << "\nEnetr Value = ";
	cin >> val;
	cout << "\nEnetr rotate amount = ";
	cin >> shift;
	x = ((val >> shift) | (val << (32 - shift)));
	cout << "\n Rotated value" << "= 0x" << hex << x;
}

void left_r(void)
{
	unsigned int x = 0, val, shift;
	cout << "\nEnetr Value = ";
	cin >> val;
	cout << "\nEnetr rotate amount = ";
	cin >> shift;
	x = ((val << shift) | (val >> (32 - shift)));
	cout << "\n Rotated value" << "= 0x" << hex << x;
}

void sgn_unsgn(void)
{
	unsigned int x = 0;
	unsigned int y = 0;
	signed int sum = 0;
	signed int diff_x_y = 0;
	signed int diff_y_x = 0;

	cout << "\nEnetr Value of x = ";
	cin >> x;
	cout << "\nEnetr Value of y = ";
	cin >> y;
	
	sum = (signed(x) + signed(y));

	diff_x_y = (signed(x) - signed(y));
	diff_y_x = (signed(y) - signed(x));

	cout << "\n signed value" << "= 0x" << hex << signed(x);
	cout << "\n signed value" << "= 0x" << hex << signed(y);
	cout << "\n signed SUM" << "= 0x" << hex << sum;
	cout << "\n signed X-Y" << "= 0x" << hex << diff_x_y;
	cout << "\n signed Y-X" << "= 0x" << hex << diff_y_x;
}