/*
 * Class ITP_VARIABLE
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_961 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_961 [] = {0xFF11,236,0xFF12,960,0xFFFF};
static EIF_TYPE_INDEX gen_type2_961 [] = {0xFF11,960,0xFFFF};
static EIF_TYPE_INDEX gen_type3_961 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_961 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_961 [] = {0xFF11,960,0xFFFF};
static EIF_TYPE_INDEX gen_type6_961 [] = {0xFF11,960,0xFFFF};
static EIF_TYPE_INDEX gen_type7_961 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_961 [] = {0xFF11,15,0xFFFF};
static EIF_TYPE_INDEX gen_type9_961 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_961 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_961 [] = {0xFF11,25,0xFFFF};
static EIF_TYPE_INDEX gen_type12_961 [] = {0xFF11,960,0xFFFF};
static EIF_TYPE_INDEX gen_type13_961 [] = {0xFF11,219,0xFFFF};


static struct desc_info desc_961[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_961},
	{1, (BODY_INDEX)-1, 236, gen_type1_961},
	{2, (BODY_INDEX)-1, 187, NULL},
	{3, (BODY_INDEX)-1, 187, NULL},
	{14033, (BODY_INDEX)-1, 187, NULL},
	{5, (BODY_INDEX)-1, 187, NULL},
	{6, (BODY_INDEX)-1, 187, NULL},
	{7, (BODY_INDEX)-1, 187, NULL},
	{8, (BODY_INDEX)-1, 187, NULL},
	{9, (BODY_INDEX)-1, 187, NULL},
	{10, (BODY_INDEX)-1, 960, gen_type2_961},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_961},
	{14, (BODY_INDEX)-1, 0, gen_type4_961},
	{15, (BODY_INDEX)-1, 960, gen_type5_961},
	{16, (BODY_INDEX)-1, 960, gen_type6_961},
	{17, (BODY_INDEX)-1, 0, gen_type7_961},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 15, gen_type8_961},
	{21, (BODY_INDEX)-1, 219, gen_type9_961},
	{22, (BODY_INDEX)-1, 219, gen_type10_961},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 25, gen_type11_961},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 960, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 960, gen_type12_961},
	{14032, (BODY_INDEX)-1, 205, NULL},
	{8388, (BODY_INDEX)-1, 187, NULL},
	{14030, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{14031, (BODY_INDEX)-1, 219, gen_type13_961},
	{14034, 0, 205, NULL},
	{14035, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
};

extern void Init961(void);
void Init961(void)
{
	IDSC(desc_961, 0, 960);
	IDSC(desc_961 + 1, 1, 960);
	IDSC(desc_961 + 32, 250, 960);
	IDSC(desc_961 + 34, 380, 960);
	IDSC(desc_961 + 37, 382, 960);
}


#ifdef __cplusplus
}
#endif
