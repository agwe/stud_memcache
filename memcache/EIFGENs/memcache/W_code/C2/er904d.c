/*
 * Class ERL_CONSTANTS
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static EIF_TYPE_INDEX gen_type0_904 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type1_904 [] = {0xFF11,236,0xFF12,903,0xFFFF};
static EIF_TYPE_INDEX gen_type2_904 [] = {0xFF11,903,0xFFFF};
static EIF_TYPE_INDEX gen_type3_904 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type4_904 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type5_904 [] = {0xFF11,903,0xFFFF};
static EIF_TYPE_INDEX gen_type6_904 [] = {0xFF11,903,0xFFFF};
static EIF_TYPE_INDEX gen_type7_904 [] = {0,0xFFFF};
static EIF_TYPE_INDEX gen_type8_904 [] = {0xFF11,15,0xFFFF};
static EIF_TYPE_INDEX gen_type9_904 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type10_904 [] = {0xFF11,219,0xFFFF};
static EIF_TYPE_INDEX gen_type11_904 [] = {0xFF11,25,0xFFFF};
static EIF_TYPE_INDEX gen_type12_904 [] = {0xFF11,903,0xFFFF};
static EIF_TYPE_INDEX gen_type13_904 [] = {0xFF11,219,0xFFFF};


static struct desc_info desc_904[] = {
	{(BODY_INDEX) -1, (BODY_INDEX) -1, INVALID_DTYPE, NULL},
	{0, (BODY_INDEX)-1, 219, gen_type0_904},
	{1, (BODY_INDEX)-1, 236, gen_type1_904},
	{2, (BODY_INDEX)-1, 187, NULL},
	{3, (BODY_INDEX)-1, 187, NULL},
	{4, (BODY_INDEX)-1, 187, NULL},
	{5, (BODY_INDEX)-1, 187, NULL},
	{6, (BODY_INDEX)-1, 187, NULL},
	{7, (BODY_INDEX)-1, 187, NULL},
	{8, (BODY_INDEX)-1, 187, NULL},
	{9, (BODY_INDEX)-1, 187, NULL},
	{10, (BODY_INDEX)-1, 903, gen_type2_904},
	{11, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{12, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{13, (BODY_INDEX)-1, 0, gen_type3_904},
	{14, (BODY_INDEX)-1, 0, gen_type4_904},
	{15, (BODY_INDEX)-1, 903, gen_type5_904},
	{16, (BODY_INDEX)-1, 903, gen_type6_904},
	{17, (BODY_INDEX)-1, 0, gen_type7_904},
	{18, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{19, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{20, (BODY_INDEX)-1, 15, gen_type8_904},
	{21, (BODY_INDEX)-1, 219, gen_type9_904},
	{22, (BODY_INDEX)-1, 219, gen_type10_904},
	{23, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{24, (BODY_INDEX)-1, 25, gen_type11_904},
	{25, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{26, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{27, (BODY_INDEX)-1, (EIF_TYPE_INDEX)-1, NULL},
	{28, (BODY_INDEX)-1, 903, NULL},
	{29, (BODY_INDEX)-1, 214, NULL},
	{30, (BODY_INDEX)-1, 903, gen_type12_904},
	{13030, (BODY_INDEX)-1, 219, gen_type13_904},
};

extern void Init904(void);
void Init904(void)
{
	IDSC(desc_904, 0, 903);
	IDSC(desc_904 + 1, 1, 903);
	IDSC(desc_904 + 32, 356, 903);
}


#ifdef __cplusplus
}
#endif
