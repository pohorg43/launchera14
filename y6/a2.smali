.class public Ly6/a2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/a2$a;
    }
.end annotation


# static fields
.field public static final a:Ly6/s0;

.field public static final b:Ly6/s0;

.field public static final c:Ly6/s0;

.field public static final d:Ly6/s0;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    sget-object v0, La7/i;->E:La7/i;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object v0

    sput-object v0, Ly6/a2;->a:Ly6/s0;

    sget-object v0, La7/i;->x:La7/i;

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object v0

    sput-object v0, Ly6/a2;->b:Ly6/s0;

    new-instance v0, Ly6/a2$a;

    const-string v1, "NO_EXPECTED_TYPE"

    invoke-direct {v0, v1}, Ly6/a2$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ly6/a2;->c:Ly6/s0;

    new-instance v0, Ly6/a2$a;

    const-string v1, "UNIT_EXPECTED_TYPE"

    invoke-direct {v0, v1}, Ly6/a2$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ly6/a2;->d:Ly6/s0;

    return-void
.end method

.method public static synthetic a(I)V
    .registers 25

    move/from16 v0, p0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/16 v3, 0x35

    const/16 v4, 0x30

    const/16 v5, 0x23

    const/16 v6, 0x1a

    const/16 v7, 0x13

    const/16 v8, 0x11

    const/16 v9, 0xf

    const/16 v10, 0xb

    const/16 v11, 0x9

    const/4 v12, 0x4

    if-eq v0, v12, :cond_35

    if-eq v0, v11, :cond_35

    if-eq v0, v10, :cond_35

    if-eq v0, v9, :cond_35

    if-eq v0, v8, :cond_35

    if-eq v0, v7, :cond_35

    if-eq v0, v6, :cond_35

    if-eq v0, v5, :cond_35

    if-eq v0, v4, :cond_35

    if-eq v0, v3, :cond_35

    if-eq v0, v2, :cond_35

    if-eq v0, v1, :cond_35

    packed-switch v0, :pswitch_data_1e6

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_37

    :cond_35
    :pswitch_35  #0x38, 0x39, 0x3a, 0x3b
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_37
    const/4 v14, 0x2

    if-eq v0, v12, :cond_55

    if-eq v0, v11, :cond_55

    if-eq v0, v10, :cond_55

    if-eq v0, v9, :cond_55

    if-eq v0, v8, :cond_55

    if-eq v0, v7, :cond_55

    if-eq v0, v6, :cond_55

    if-eq v0, v5, :cond_55

    if-eq v0, v4, :cond_55

    if-eq v0, v3, :cond_55

    if-eq v0, v2, :cond_55

    if-eq v0, v1, :cond_55

    packed-switch v0, :pswitch_data_1f2

    const/4 v15, 0x3

    goto :goto_56

    :cond_55
    :pswitch_55  #0x38, 0x39, 0x3a, 0x3b
    move v15, v14

    :goto_56
    new-array v15, v15, [Ljava/lang/Object;

    const-string v16, "kotlin/reflect/jvm/internal/impl/types/TypeUtils"

    const/16 v17, 0x0

    packed-switch v0, :pswitch_data_1fe

    :pswitch_5f  #0x5, 0x8, 0xa, 0x12, 0x17, 0x19, 0x1b, 0x1c, 0x1d, 0x1e, 0x26, 0x28
    const-string v18, "type"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_65  #0x36
    const-string v18, "literalTypeConstructor"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_6b  #0x34, 0x37
    const-string v18, "expectedType"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_71  #0x31, 0x32
    const-string v18, "supertypes"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_77  #0x2f, 0x33
    const-string v18, "numberValueTypeConstructor"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_7d  #0x2d, 0x2e
    const-string v18, "parameterDescriptor"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_82  #0x2b, 0x2c
    const-string v18, "isSpecialType"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_87  #0x2a
    const-string v18, "specialType"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_8c  #0x29
    const-string v18, "typeParameterConstructors"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_91  #0x27
    const-string v18, "typeParameters"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_96  #0x25
    const-string v18, "b"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_9b  #0x24
    const-string v18, "a"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_a0  #0x22
    const-string v18, "projections"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_a5  #0x20
    const-string v18, "typeArguments"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_aa  #0x1f, 0x21
    const-string v18, "clazz"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_af  #0x18
    const-string v18, "result"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_b4  #0x16
    const-string v18, "substitutor"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_b9  #0x15
    const-string v18, "superType"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_be  #0x14
    const-string v18, "subType"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_c3  #0x10
    const-string v18, "parameters"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_c8  #0xe
    const-string v18, "refinedTypeFactory"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_cd  #0xd
    const-string v18, "unsubstitutedMemberScope"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_d2  #0xc
    const-string v18, "typeConstructor"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_d7  #0x4, 0x6, 0x7, 0x9, 0xb, 0xf, 0x11, 0x13, 0x1a, 0x23, 0x30, 0x35, 0x38, 0x39, 0x3a, 0x3b
    aput-object v16, v15, v17

    :goto_d9
    const-string v17, "getAllSupertypes"

    const-string v18, "getImmediateSupertypes"

    const-string v19, "getDefaultTypeProjections"

    const-string v20, "makeUnsubstitutedType"

    const-string v21, "makeNullableIfNeeded"

    const-string v22, "makeNullableAsSpecified"

    const/16 v23, 0x1

    if-eq v0, v12, :cond_123

    if-eq v0, v11, :cond_120

    if-eq v0, v10, :cond_11d

    if-eq v0, v9, :cond_11d

    if-eq v0, v8, :cond_11a

    if-eq v0, v7, :cond_117

    if-eq v0, v6, :cond_114

    if-eq v0, v5, :cond_10f

    if-eq v0, v4, :cond_10a

    if-eq v0, v3, :cond_105

    if-eq v0, v2, :cond_120

    if-eq v0, v1, :cond_120

    packed-switch v0, :pswitch_data_272

    aput-object v16, v15, v23

    goto :goto_125

    :cond_105
    :pswitch_105  #0x38, 0x39, 0x3a, 0x3b
    const-string v16, "getPrimitiveNumberType"

    aput-object v16, v15, v23

    goto :goto_125

    :cond_10a
    const-string v16, "getDefaultPrimitiveNumberType"

    aput-object v16, v15, v23

    goto :goto_125

    :cond_10f
    const-string v16, "substituteProjectionsForParameters"

    aput-object v16, v15, v23

    goto :goto_125

    :cond_114
    aput-object v17, v15, v23

    goto :goto_125

    :cond_117
    aput-object v18, v15, v23

    goto :goto_125

    :cond_11a
    aput-object v19, v15, v23

    goto :goto_125

    :cond_11d
    aput-object v20, v15, v23

    goto :goto_125

    :cond_120
    aput-object v21, v15, v23

    goto :goto_125

    :cond_123
    aput-object v22, v15, v23

    :goto_125
    packed-switch v0, :pswitch_data_27e

    const-string v16, "noExpectedType"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_12e  #0x3f
    const-string v16, "getTypeParameterDescriptorOrNull"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_134  #0x3e
    const-string v16, "isNonReifiedTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_13a  #0x3d
    const-string v16, "isReifiedTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_140  #0x3c
    const-string v16, "isTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_146  #0x33, 0x34, 0x36, 0x37
    const-string v16, "getPrimitiveNumberType"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_14c  #0x32
    const-string v16, "findByFqName"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_152  #0x2f, 0x31
    const-string v16, "getDefaultPrimitiveNumberType"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_158  #0x2d, 0x2e
    const-string v16, "makeStarProjection"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_15e  #0x2a, 0x2b, 0x2c
    const-string v16, "contains"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_164  #0x28, 0x29
    const-string v16, "dependsOnTypeConstructors"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_169  #0x26, 0x27
    const-string v16, "dependsOnTypeParameters"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_16e  #0x24, 0x25
    const-string v16, "equalTypes"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_173  #0x21, 0x22
    const-string v16, "substituteProjectionsForParameters"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_178  #0x1f, 0x20
    const-string v16, "substituteParameters"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_17d  #0x1e
    const-string v16, "getClassDescriptor"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_182  #0x1d
    const-string v16, "hasNullableSuperType"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_187  #0x1c
    const-string v16, "acceptsNullable"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_18c  #0x1b
    const-string v16, "isNullableType"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_191  #0x19
    aput-object v17, v15, v14

    goto :goto_1bb

    :pswitch_194  #0x17, 0x18
    const-string v16, "collectAllSupertypes"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_199  #0x14, 0x15, 0x16
    const-string v16, "createSubstitutedSupertype"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_19e  #0x12
    aput-object v18, v15, v14

    goto :goto_1bb

    :pswitch_1a1  #0x10
    aput-object v19, v15, v14

    goto :goto_1bb

    :pswitch_1a4  #0xc, 0xd, 0xe
    aput-object v20, v15, v14

    goto :goto_1bb

    :pswitch_1a7  #0xa
    const-string v16, "canHaveSubtypes"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_1ac  #0x5, 0x8
    aput-object v21, v15, v14

    goto :goto_1bb

    :pswitch_1af  #0x3
    aput-object v22, v15, v14

    goto :goto_1bb

    :pswitch_1b2  #0x2
    const-string v16, "makeNotNullable"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_1b7  #0x1
    const-string v16, "makeNullable"

    aput-object v16, v15, v14

    :goto_1bb
    :pswitch_1bb  #0x4, 0x6, 0x7, 0x9, 0xb, 0xf, 0x11, 0x13, 0x1a, 0x23, 0x30, 0x35, 0x38, 0x39, 0x3a, 0x3b
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_1e0

    if-eq v0, v11, :cond_1e0

    if-eq v0, v10, :cond_1e0

    if-eq v0, v9, :cond_1e0

    if-eq v0, v8, :cond_1e0

    if-eq v0, v7, :cond_1e0

    if-eq v0, v6, :cond_1e0

    if-eq v0, v5, :cond_1e0

    if-eq v0, v4, :cond_1e0

    if-eq v0, v3, :cond_1e0

    if-eq v0, v2, :cond_1e0

    if-eq v0, v1, :cond_1e0

    packed-switch v0, :pswitch_data_300

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1e5

    :cond_1e0
    :pswitch_1e0  #0x38, 0x39, 0x3a, 0x3b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_1e5
    throw v0

    :pswitch_data_1e6
    .packed-switch 0x38
        :pswitch_35  #00000038
        :pswitch_35  #00000039
        :pswitch_35  #0000003a
        :pswitch_35  #0000003b
    .end packed-switch

    :pswitch_data_1f2
    .packed-switch 0x38
        :pswitch_55  #00000038
        :pswitch_55  #00000039
        :pswitch_55  #0000003a
        :pswitch_55  #0000003b
    .end packed-switch

    :pswitch_data_1fe
    .packed-switch 0x4
        :pswitch_d7  #00000004
        :pswitch_5f  #00000005
        :pswitch_d7  #00000006
        :pswitch_d7  #00000007
        :pswitch_5f  #00000008
        :pswitch_d7  #00000009
        :pswitch_5f  #0000000a
        :pswitch_d7  #0000000b
        :pswitch_d2  #0000000c
        :pswitch_cd  #0000000d
        :pswitch_c8  #0000000e
        :pswitch_d7  #0000000f
        :pswitch_c3  #00000010
        :pswitch_d7  #00000011
        :pswitch_5f  #00000012
        :pswitch_d7  #00000013
        :pswitch_be  #00000014
        :pswitch_b9  #00000015
        :pswitch_b4  #00000016
        :pswitch_5f  #00000017
        :pswitch_af  #00000018
        :pswitch_5f  #00000019
        :pswitch_d7  #0000001a
        :pswitch_5f  #0000001b
        :pswitch_5f  #0000001c
        :pswitch_5f  #0000001d
        :pswitch_5f  #0000001e
        :pswitch_aa  #0000001f
        :pswitch_a5  #00000020
        :pswitch_aa  #00000021
        :pswitch_a0  #00000022
        :pswitch_d7  #00000023
        :pswitch_9b  #00000024
        :pswitch_96  #00000025
        :pswitch_5f  #00000026
        :pswitch_91  #00000027
        :pswitch_5f  #00000028
        :pswitch_8c  #00000029
        :pswitch_87  #0000002a
        :pswitch_82  #0000002b
        :pswitch_82  #0000002c
        :pswitch_7d  #0000002d
        :pswitch_7d  #0000002e
        :pswitch_77  #0000002f
        :pswitch_d7  #00000030
        :pswitch_71  #00000031
        :pswitch_71  #00000032
        :pswitch_77  #00000033
        :pswitch_6b  #00000034
        :pswitch_d7  #00000035
        :pswitch_65  #00000036
        :pswitch_6b  #00000037
        :pswitch_d7  #00000038
        :pswitch_d7  #00000039
        :pswitch_d7  #0000003a
        :pswitch_d7  #0000003b
    .end packed-switch

    :pswitch_data_272
    .packed-switch 0x38
        :pswitch_105  #00000038
        :pswitch_105  #00000039
        :pswitch_105  #0000003a
        :pswitch_105  #0000003b
    .end packed-switch

    :pswitch_data_27e
    .packed-switch 0x1
        :pswitch_1b7  #00000001
        :pswitch_1b2  #00000002
        :pswitch_1af  #00000003
        :pswitch_1bb  #00000004
        :pswitch_1ac  #00000005
        :pswitch_1bb  #00000006
        :pswitch_1bb  #00000007
        :pswitch_1ac  #00000008
        :pswitch_1bb  #00000009
        :pswitch_1a7  #0000000a
        :pswitch_1bb  #0000000b
        :pswitch_1a4  #0000000c
        :pswitch_1a4  #0000000d
        :pswitch_1a4  #0000000e
        :pswitch_1bb  #0000000f
        :pswitch_1a1  #00000010
        :pswitch_1bb  #00000011
        :pswitch_19e  #00000012
        :pswitch_1bb  #00000013
        :pswitch_199  #00000014
        :pswitch_199  #00000015
        :pswitch_199  #00000016
        :pswitch_194  #00000017
        :pswitch_194  #00000018
        :pswitch_191  #00000019
        :pswitch_1bb  #0000001a
        :pswitch_18c  #0000001b
        :pswitch_187  #0000001c
        :pswitch_182  #0000001d
        :pswitch_17d  #0000001e
        :pswitch_178  #0000001f
        :pswitch_178  #00000020
        :pswitch_173  #00000021
        :pswitch_173  #00000022
        :pswitch_1bb  #00000023
        :pswitch_16e  #00000024
        :pswitch_16e  #00000025
        :pswitch_169  #00000026
        :pswitch_169  #00000027
        :pswitch_164  #00000028
        :pswitch_164  #00000029
        :pswitch_15e  #0000002a
        :pswitch_15e  #0000002b
        :pswitch_15e  #0000002c
        :pswitch_158  #0000002d
        :pswitch_158  #0000002e
        :pswitch_152  #0000002f
        :pswitch_1bb  #00000030
        :pswitch_152  #00000031
        :pswitch_14c  #00000032
        :pswitch_146  #00000033
        :pswitch_146  #00000034
        :pswitch_1bb  #00000035
        :pswitch_146  #00000036
        :pswitch_146  #00000037
        :pswitch_1bb  #00000038
        :pswitch_1bb  #00000039
        :pswitch_1bb  #0000003a
        :pswitch_1bb  #0000003b
        :pswitch_140  #0000003c
        :pswitch_13a  #0000003d
        :pswitch_134  #0000003e
        :pswitch_12e  #0000003f
    .end packed-switch

    :pswitch_data_300
    .packed-switch 0x38
        :pswitch_1e0  #00000038
        :pswitch_1e0  #00000039
        :pswitch_1e0  #0000003a
        :pswitch_1e0  #0000003b
    .end packed-switch
.end method

.method public static b(Ly6/l0;)Z
    .registers 3

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-static {p0}, Ly6/h0;->b(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Ly6/h0;->a(Ly6/l0;)Ly6/e0;

    move-result-object p0

    iget-object p0, p0, Ly6/e0;->c:Ly6/s0;

    invoke-static {p0}, Ly6/a2;->b(Ly6/l0;)Z

    move-result p0

    if-eqz p0, :cond_1d

    return v1

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    const/16 p0, 0x1c

    invoke-static {p0}, Ly6/a2;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Ly6/l0;Lkotlin/jvm/functions/Function1;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            "Lkotlin/jvm/functions/Function1<",
            "Ly6/d2;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-static {p0, p1, v0}, Ly6/a2;->d(Ly6/l0;Lkotlin/jvm/functions/Function1;Li7/e;)Z

    move-result p0

    return p0

    :cond_8
    const/16 p0, 0x2b

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0
.end method

.method public static d(Ly6/l0;Lkotlin/jvm/functions/Function1;Li7/e;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            "Lkotlin/jvm/functions/Function1<",
            "Ly6/d2;",
            "Ljava/lang/Boolean;",
            ">;",
            "Li7/e<",
            "Ly6/l0;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_b0

    const/4 v1, 0x0

    if-nez p0, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v2

    invoke-static {p0}, Ly6/a2;->q(Ly6/l0;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1c
    if-eqz p2, :cond_25

    invoke-virtual {p2, p0}, Li7/e;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    return v1

    :cond_25
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_33

    return v4

    :cond_33
    if-nez p2, :cond_39

    invoke-static {}, Li7/e;->a()Li7/e;

    move-result-object p2

    :cond_39
    invoke-virtual {p2, p0}, Li7/e;->add(Ljava/lang/Object;)Z

    instance-of v3, v2, Ly6/e0;

    if-eqz v3, :cond_43

    move-object v0, v2

    check-cast v0, Ly6/e0;

    :cond_43
    if-eqz v0, :cond_56

    iget-object v3, v0, Ly6/e0;->b:Ly6/s0;

    invoke-static {v3, p1, p2}, Ly6/a2;->d(Ly6/l0;Lkotlin/jvm/functions/Function1;Li7/e;)Z

    move-result v3

    if-nez v3, :cond_55

    iget-object v0, v0, Ly6/e0;->c:Ly6/s0;

    invoke-static {v0, p1, p2}, Ly6/a2;->d(Ly6/l0;Lkotlin/jvm/functions/Function1;Li7/e;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_55
    return v4

    :cond_56
    instance-of v0, v2, Ly6/u;

    if-eqz v0, :cond_65

    check-cast v2, Ly6/u;

    iget-object v0, v2, Ly6/u;->b:Ly6/s0;

    invoke-static {v0, p1, p2}, Ly6/a2;->d(Ly6/l0;Lkotlin/jvm/functions/Function1;Li7/e;)Z

    move-result v0

    if-eqz v0, :cond_65

    return v4

    :cond_65
    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    instance-of v2, v0, Ly6/j0;

    if-eqz v2, :cond_89

    check-cast v0, Ly6/j0;

    iget-object p0, v0, Ly6/j0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_75
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/l0;

    invoke-static {v0, p1, p2}, Ly6/a2;->d(Ly6/l0;Lkotlin/jvm/functions/Function1;Li7/e;)Z

    move-result v0

    if-eqz v0, :cond_75

    return v4

    :cond_88
    return v1

    :cond_89
    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_91
    :goto_91
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/q1;

    invoke-interface {v0}, Ly6/q1;->b()Z

    move-result v2

    if-eqz v2, :cond_a4

    goto :goto_91

    :cond_a4
    invoke-interface {v0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ly6/a2;->d(Ly6/l0;Lkotlin/jvm/functions/Function1;Li7/e;)Z

    move-result v0

    if-eqz v0, :cond_91

    return v4

    :cond_af
    return v1

    :cond_b0
    const/16 p0, 0x2c

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0
.end method

.method public static e(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;)",
            "Ljava/util/List<",
            "Ly6/q1;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_36

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/a1;

    new-instance v3, Ly6/s1;

    invoke-interface {v2}, Li5/h;->m()Ly6/s0;

    move-result-object v2

    invoke-direct {v3, v2}, Ly6/s1;-><init>(Ly6/l0;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_29
    invoke-static {v1}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_30

    return-object p0

    :cond_30
    const/16 p0, 0x11

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0

    :cond_36
    const/16 p0, 0x10

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0
.end method

.method public static f(Ly6/l0;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_6f

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v1

    invoke-interface {v1}, Ly6/j1;->e()Li5/h;

    move-result-object v1

    instance-of v1, v1, Li5/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    return v2

    :cond_11
    invoke-static {p0}, Ly6/x1;->d(Ly6/l0;)Ly6/x1;

    move-result-object v1

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v3

    invoke-interface {v3}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly6/l0;

    if-eqz v5, :cond_50

    sget-object v6, Ly6/e2;->c:Ly6/e2;

    invoke-virtual {v1, v5, v6}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v5

    if-eqz v5, :cond_49

    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result v6

    invoke-static {v5, v6}, Ly6/a2;->k(Ly6/l0;Z)Ly6/l0;

    move-result-object v5

    goto :goto_4a

    :cond_49
    move-object v5, v0

    :goto_4a
    if-eqz v5, :cond_2a

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_50
    const/16 p0, 0x15

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0

    :cond_56
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/l0;

    invoke-static {v0}, Ly6/a2;->g(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 p0, 0x1

    return p0

    :cond_6e
    return v2

    :cond_6f
    const/16 p0, 0x1d

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0
.end method

.method public static g(Ly6/l0;)Z
    .registers 4

    if-eqz p0, :cond_76

    invoke-virtual {p0}, Ly6/l0;->G0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-static {p0}, Ly6/h0;->b(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Ly6/h0;->a(Ly6/l0;)Ly6/e0;

    move-result-object v0

    iget-object v0, v0, Ly6/e0;->c:Ly6/s0;

    invoke-static {v0}, Ly6/a2;->g(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v0

    instance-of v0, v0, Ly6/u;

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    return v2

    :cond_2c
    invoke-static {p0}, Ly6/a2;->h(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p0}, Ly6/a2;->f(Ly6/l0;)Z

    move-result p0

    return p0

    :cond_37
    instance-of v0, p0, Ly6/f;

    if-eqz v0, :cond_52

    check-cast p0, Ly6/f;

    iget-object p0, p0, Ly6/f;->b:Lz6/n;

    invoke-interface {p0}, Lz6/n;->c()Li5/a1;

    move-result-object p0

    if-eqz p0, :cond_51

    invoke-interface {p0}, Li5/h;->m()Ly6/s0;

    move-result-object p0

    invoke-static {p0}, Ly6/a2;->f(Ly6/l0;)Z

    move-result p0

    if-eqz p0, :cond_50

    goto :goto_51

    :cond_50
    move v1, v2

    :cond_51
    :goto_51
    return v1

    :cond_52
    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    instance-of v0, p0, Ly6/j0;

    if-eqz v0, :cond_75

    invoke-interface {p0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_62
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/l0;

    invoke-static {v0}, Ly6/a2;->g(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_62

    return v1

    :cond_75
    return v2

    :cond_76
    const/16 p0, 0x1b

    invoke-static {p0}, Ly6/a2;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static h(Ly6/l0;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_30

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v1

    invoke-interface {v1}, Ly6/j1;->e()Li5/h;

    move-result-object v1

    instance-of v1, v1, Li5/a1;

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    check-cast v0, Li5/a1;

    :cond_1b
    if-nez v0, :cond_28

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    instance-of p0, p0, Lz6/n;

    if-eqz p0, :cond_26

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p0, 0x1

    :goto_29
    return p0

    :cond_2a
    const/16 p0, 0x3f

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0

    :cond_30
    const/16 p0, 0x3c

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0
.end method

.method public static i(Ly6/l0;)Ly6/l0;
    .registers 2

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ly6/a2;->j(Ly6/l0;Z)Ly6/l0;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x2

    invoke-static {p0}, Ly6/a2;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static j(Ly6/l0;Z)Ly6/l0;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ly6/l0;->I0()Ly6/d2;

    move-result-object p0

    invoke-virtual {p0, p1}, Ly6/d2;->J0(Z)Ly6/d2;

    move-result-object p0

    if-eqz p0, :cond_e

    return-object p0

    :cond_e
    const/4 p0, 0x4

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0

    :cond_13
    const/4 p0, 0x3

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0
.end method

.method public static k(Ly6/l0;Z)Ly6/l0;
    .registers 2

    if-eqz p0, :cond_a

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ly6/a2;->j(Ly6/l0;Z)Ly6/l0;

    move-result-object p0

    :cond_9
    return-object p0

    :cond_a
    const/16 p0, 0x8

    invoke-static {p0}, Ly6/a2;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static l(Ly6/s0;Z)Ly6/s0;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ly6/s0;->M0(Z)Ly6/s0;

    move-result-object p0

    if-eqz p0, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x6

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0

    :cond_12
    if-eqz p0, :cond_15

    return-object p0

    :cond_15
    const/4 p0, 0x7

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0

    :cond_1a
    const/4 p0, 0x5

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0
.end method

.method public static m(Li5/a1;)Ly6/q1;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Ly6/y0;

    invoke-direct {v0, p0}, Ly6/y0;-><init>(Li5/a1;)V

    return-object v0

    :cond_8
    const/16 p0, 0x2d

    invoke-static {p0}, Ly6/a2;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static n(Li5/a1;Ly6/c0;)Ly6/q1;
    .registers 3

    if-eqz p0, :cond_1a

    invoke-virtual {p1}, Ly6/c0;->b()Ly6/z1;

    move-result-object p1

    sget-object v0, Ly6/z1;->a:Ly6/z1;

    if-ne p1, v0, :cond_14

    new-instance p1, Ly6/s1;

    invoke-static {p0}, Ly6/z0;->b(Li5/a1;)Ly6/l0;

    move-result-object p0

    invoke-direct {p1, p0}, Ly6/s1;-><init>(Ly6/l0;)V

    return-object p1

    :cond_14
    new-instance p1, Ly6/y0;

    invoke-direct {p1, p0}, Ly6/y0;-><init>(Li5/a1;)V

    return-object p1

    :cond_1a
    const/16 p0, 0x2e

    invoke-static {p0}, Ly6/a2;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static o(Li5/h;Lr6/i;Lkotlin/jvm/functions/Function1;)Ly6/s0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/h;",
            "Lr6/i;",
            "Lkotlin/jvm/functions/Function1<",
            "Lz6/f;",
            "Ly6/s0;",
            ">;)",
            "Ly6/s0;"
        }
    .end annotation

    invoke-static {p0}, La7/j;->f(Li5/l;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object p1, La7/i;->D:La7/i;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    invoke-static {p1, p2}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-interface {p0}, Li5/h;->h()Ly6/j1;

    move-result-object p0

    invoke-static {p0, p1, p2}, Ly6/a2;->p(Ly6/j1;Lr6/i;Lkotlin/jvm/functions/Function1;)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ly6/j1;Lr6/i;Lkotlin/jvm/functions/Function1;)Ly6/s0;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/j1;",
            "Lr6/i;",
            "Lkotlin/jvm/functions/Function1<",
            "Lz6/f;",
            "Ly6/s0;",
            ">;)",
            "Ly6/s0;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    if-eqz p1, :cond_25

    if-eqz p2, :cond_1f

    invoke-interface {p0}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ly6/a2;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sget-object v0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ly6/g1;->c:Ly6/g1;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Ly6/m0;->j(Ly6/g1;Ly6/j1;Ljava/util/List;ZLr6/i;Lkotlin/jvm/functions/Function1;)Ly6/s0;

    move-result-object p0

    return-object p0

    :cond_1f
    const/16 p0, 0xe

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0

    :cond_25
    const/16 p0, 0xd

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0

    :cond_2b
    const/16 p0, 0xc

    invoke-static {p0}, Ly6/a2;->a(I)V

    throw v0
.end method

.method public static q(Ly6/l0;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    sget-object v1, Ly6/a2;->c:Ly6/s0;

    if-eq p0, v1, :cond_b

    sget-object v1, Ly6/a2;->d:Ly6/s0;

    if-ne p0, v1, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    return v0

    :cond_d
    invoke-static {v0}, Ly6/a2;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
