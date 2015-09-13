/*
 * Code for class FACTORYSEARCHSTRATEGY
 */

#include "eif_eiffel.h"
#include "../E1/estructure.h"


#ifdef __cplusplus
extern "C" {
#endif

extern EIF_TYPED_VALUE F873_7077(EIF_REFERENCE, EIF_TYPED_VALUE);
extern void EIF_Minit873(void);

#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif


#ifdef __cplusplus
}
#endif


#ifdef __cplusplus
extern "C" {
#endif

/* {FACTORYSEARCHSTRATEGY}.create_search_strategy */
EIF_TYPED_VALUE F873_7077 (EIF_REFERENCE Current, EIF_TYPED_VALUE arg1x)
{
	GTCX
	char *l_feature_name = "create_search_strategy";
	RTEX;
	EIF_REFERENCE loc1 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc2 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc3 = (EIF_REFERENCE) 0;
	EIF_REFERENCE loc4 = (EIF_REFERENCE) 0;
#define arg1 arg1x.it_r
	EIF_TYPED_VALUE ur1x = {{0}, SK_REF};
#define ur1 ur1x.it_r
	EIF_REFERENCE tr1 = NULL;
	EIF_REFERENCE Result = ((EIF_REFERENCE) 0);
	
	RTSN;
	RTDA;
	RTLD;
	
	
	RTLI(9);
	RTLR(0,arg1);
	RTLR(1,loc1);
	RTLR(2,tr1);
	RTLR(3,Result);
	RTLR(4,loc2);
	RTLR(5,loc4);
	RTLR(6,loc3);
	RTLR(7,ur1);
	RTLR(8,Current);
	RTLU (SK_REF, &Result);
	RTLU(SK_REF,&arg1);
	RTLU (SK_REF, &Current);
	RTLU(SK_REF, &loc1);
	RTLU(SK_REF, &loc2);
	RTLU(SK_REF, &loc3);
	RTLU(SK_REF, &loc4);
	
	RTEAA(l_feature_name, 872, Current, 4, 1, 12713);
	RTSA(Dtype(Current));
	RTSC;
	RTME(Dtype(Current), 0);
	RTGC;
	RTDBGEAA(872, Current, 12713);
	RTCC(arg1, 872, l_feature_name, 1, eif_attached_type(219));
	RTIV(Current, RTAL);
	RTHOOK(1);
	if (RTEQ(arg1, RTMS_EX_H("fifo",4,1718183535))) {
		RTHOOK(2);
		RTDBGAL(Current, 1, 0xF8000395, 0, 0); /* loc1 */
		
		tr1 = RTLN(917);
		(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(32, Dtype(tr1)))(tr1);
		
		RTNHOOK(2,1);
		loc1 = (EIF_REFERENCE) RTCCL(tr1);
		RTHOOK(3);
		RTDBGAL(Current, 0, 0xF8000393, 0,0); /* Result */
		
		Result = (EIF_REFERENCE) RTCCL(loc1);
	} else {
		RTHOOK(4);
		if (RTEQ(arg1, RTMS_EX_H("lifo",4,1818846831))) {
			RTHOOK(5);
			RTDBGAL(Current, 2, 0xF8000394, 0, 0); /* loc2 */
			
			tr1 = RTLN(916);
			(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(32, Dtype(tr1)))(tr1);
			
			RTNHOOK(5,1);
			loc2 = (EIF_REFERENCE) RTCCL(tr1);
			RTHOOK(6);
			RTDBGAL(Current, 0, 0xF8000393, 0,0); /* Result */
			
			Result = (EIF_REFERENCE) RTCCL(loc2);
		} else {
			RTHOOK(7);
			if (RTEQ(arg1, RTMS_EX_H("less_used",9,2047696228))) {
				RTHOOK(8);
				RTDBGAL(Current, 4, 0xF8000366, 0, 0); /* loc4 */
				
				tr1 = RTLN(870);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(4996, Dtype(tr1)))(tr1);
				
				RTNHOOK(8,1);
				loc4 = (EIF_REFERENCE) RTCCL(tr1);
				RTHOOK(9);
				RTDBGAL(Current, 3, 0xF8000396, 0, 0); /* loc3 */
				
				tr1 = RTLN(918);
				ur1 = RTCCL(loc4);
				(FUNCTION_CAST(void, (EIF_REFERENCE, EIF_TYPED_VALUE)) RTWC(5561, Dtype(tr1)))(tr1, ur1x);
				
				RTNHOOK(9,1);
				loc3 = (EIF_REFERENCE) RTCCL(tr1);
				RTHOOK(10);
				RTDBGAL(Current, 0, 0xF8000393, 0,0); /* Result */
				
				Result = (EIF_REFERENCE) RTCCL(loc3);
			} else {
				RTHOOK(11);
				RTDBGAL(Current, 1, 0xF8000395, 0, 0); /* loc1 */
				
				tr1 = RTLN(917);
				(FUNCTION_CAST(void, (EIF_REFERENCE)) RTWC(32, Dtype(tr1)))(tr1);
				
				RTNHOOK(11,1);
				loc1 = (EIF_REFERENCE) RTCCL(tr1);
				RTHOOK(12);
				RTDBGAL(Current, 0, 0xF8000393, 0,0); /* Result */
				
				Result = (EIF_REFERENCE) RTCCL(loc1);
			}
		}
	}
	RTVI(Current, RTAL);
	RTRS;
	RTHOOK(13);
	RTDBGLE;
	RTMD(0);
	RTLE;
	RTLO(7);
	RTEE;
	{ EIF_TYPED_VALUE r; r.type = SK_REF; r.it_r = Result; return r; }
#undef ur1
#undef arg1
}

void EIF_Minit873 (void)
{
	GTCX
}


#ifdef __cplusplus
}
#endif
