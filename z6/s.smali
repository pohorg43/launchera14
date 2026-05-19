.class public Lz6/s;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static synthetic a(I)V
    .registers 10

    const/16 v0, 0xa

    const/4 v1, 0x7

    if-eq p0, v1, :cond_a

    if-eq p0, v0, :cond_a

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_c

    :cond_a
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_c
    const/4 v3, 0x2

    if-eq p0, v1, :cond_13

    if-eq p0, v0, :cond_13

    const/4 v4, 0x3

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_aa

    :pswitch_1c  #0x2, 0x11, 0x13
    const-string v7, "subtype"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_21  #0x16
    const-string v7, "supertypeArgumentProjection"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_26  #0x15
    const-string v7, "subtypeArgumentProjection"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_2b  #0x10
    const-string v7, "typeArgumentVariance"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_30  #0xf
    const-string v7, "typeParameterVariance"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_35  #0xe
    const-string v7, "typeArgument"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_3a  #0xd
    const-string v7, "typeParameter"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_3f  #0xc
    const-string v7, "type2"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_44  #0xb
    const-string v7, "type1"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_49  #0x7, 0xa
    aput-object v5, v4, v6

    goto :goto_5f

    :pswitch_4c  #0x6, 0x9
    const-string v7, "argument"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_51  #0x5, 0x8, 0x17
    const-string v7, "parameter"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_56  #0x4
    const-string v7, "typeCheckingProcedureCallbacks"

    aput-object v7, v4, v6

    goto :goto_5f

    :pswitch_5b  #0x1, 0x3, 0x12, 0x14
    const-string v7, "supertype"

    aput-object v7, v4, v6

    :goto_5f
    const-string v6, "getInType"

    const-string v7, "getOutType"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_6e

    if-eq p0, v0, :cond_6b

    aput-object v5, v4, v8

    goto :goto_70

    :cond_6b
    aput-object v6, v4, v8

    goto :goto_70

    :cond_6e
    aput-object v7, v4, v8

    :goto_70
    packed-switch p0, :pswitch_data_dc

    const-string v5, "findCorrespondingSupertype"

    aput-object v5, v4, v3

    goto :goto_96

    :pswitch_78  #0x15, 0x16, 0x17
    const-string v5, "capture"

    aput-object v5, v4, v3

    goto :goto_96

    :pswitch_7d  #0x13, 0x14
    const-string v5, "checkSubtypeForTheSameConstructor"

    aput-object v5, v4, v3

    goto :goto_96

    :pswitch_82  #0x11, 0x12
    const-string v5, "isSubtypeOf"

    aput-object v5, v4, v3

    goto :goto_96

    :pswitch_87  #0xd, 0xe, 0xf, 0x10
    const-string v5, "getEffectiveProjectionKind"

    aput-object v5, v4, v3

    goto :goto_96

    :pswitch_8c  #0xb, 0xc
    const-string v5, "equalTypes"

    aput-object v5, v4, v3

    goto :goto_96

    :pswitch_91  #0x8, 0x9
    aput-object v6, v4, v3

    goto :goto_96

    :pswitch_94  #0x5, 0x6
    aput-object v7, v4, v3

    :goto_96
    :pswitch_96  #0x7, 0xa
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_a4

    if-eq p0, v0, :cond_a4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a9

    :cond_a4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_a9
    throw p0

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_5b  #00000001
        :pswitch_1c  #00000002
        :pswitch_5b  #00000003
        :pswitch_56  #00000004
        :pswitch_51  #00000005
        :pswitch_4c  #00000006
        :pswitch_49  #00000007
        :pswitch_51  #00000008
        :pswitch_4c  #00000009
        :pswitch_49  #0000000a
        :pswitch_44  #0000000b
        :pswitch_3f  #0000000c
        :pswitch_3a  #0000000d
        :pswitch_35  #0000000e
        :pswitch_30  #0000000f
        :pswitch_2b  #00000010
        :pswitch_1c  #00000011
        :pswitch_5b  #00000012
        :pswitch_1c  #00000013
        :pswitch_5b  #00000014
        :pswitch_26  #00000015
        :pswitch_21  #00000016
        :pswitch_51  #00000017
    .end packed-switch

    :pswitch_data_dc
    .packed-switch 0x5
        :pswitch_94  #00000005
        :pswitch_94  #00000006
        :pswitch_96  #00000007
        :pswitch_91  #00000008
        :pswitch_91  #00000009
        :pswitch_96  #0000000a
        :pswitch_8c  #0000000b
        :pswitch_8c  #0000000c
        :pswitch_87  #0000000d
        :pswitch_87  #0000000e
        :pswitch_87  #0000000f
        :pswitch_87  #00000010
        :pswitch_82  #00000011
        :pswitch_82  #00000012
        :pswitch_7d  #00000013
        :pswitch_7d  #00000014
        :pswitch_78  #00000015
        :pswitch_78  #00000016
        :pswitch_78  #00000017
    .end packed-switch
.end method
