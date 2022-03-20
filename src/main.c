#include <stdio.h>
#include <stdlib.h>

signed char sc_a = 0, sc_b = 0, sc_c = 0, scr = 0;
unsigned char uc_a = 0, uc_b = 0, uc_c = 0, ucr = 0;
int si_a = 0, si_b = 0, si_c = 0, sir = 0;
unsigned int ui_a = 0, ui_b = 0, ui_c = 0, uir = 0;

int type = 0;

extern void asm_calculate_result_signed_char();
extern void asm_calculate_result_unsigned_char();
extern void asm_calculate_result_signed_int();
extern void asm_calculate_result_unsigned_int();

int main(void) {
	puts("Введите требуемый тип данных:\n1) signed char\n2) unsigned char\n3) signed int\n4) unsigned int");
	scanf("%d", &type);

	switch (type) {
		case 1: {
			puts("Ограничение: -128 <= a, b, c <= 127");
			puts("Введите a:");
			scanf("%hhd", &sc_a);
			puts("Введите b:");
			scanf("%hhd", &sc_b);
			puts("Введите c:");
			scanf("%hhd", &sc_c);
			asm_calculate_result_signed_char();
			printf("%hhd", scr);
			break;
		}
		case 2: {
			puts("Ограничение: 0 <= a, b, c <= 255");
			puts("Введите a:");
			scanf("%hhu", &uc_a);
			puts("Введите b:");
			scanf("%hhu", &uc_b);
			puts("Введите c:");
			scanf("%hhu", &uc_c);
			asm_calculate_result_unsigned_char();
			printf("%hhu", ucr);
			break;
		}
		case 3: {
			puts("Ограничение: -2147483648 <= a, b, c <= 2147483467");
			puts("Введите a:");
			scanf("%d", &si_a);
			puts("Введите b:");
			scanf("%d", &si_b);
			puts("Введите c:");
			scanf("%d", &si_c);
			asm_calculate_result_signed_int();
			printf("%d", sir);

			break;
		}
		case 4: {
			puts("Ограничение: 0 <= a, b, c <= 4294967295");
			puts("Введите a:");
			scanf("%u", &ui_a);
			puts("Введите b:");
			scanf("%u", &ui_b);
			puts("Введите c:");
			scanf("%u", &ui_c);
			asm_calculate_result_unsigned_int();
			printf("%d", uir);
			break;
		}
	}

	return 0;
}

