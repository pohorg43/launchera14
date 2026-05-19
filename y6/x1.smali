.class public Ly6/x1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly6/x1$a;
    }
.end annotation


# static fields
.field public static final b:Ly6/x1;


# instance fields
.field public final a:Ly6/t1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Ly6/t1;->a:Ly6/t1;

    invoke-static {v0}, Ly6/x1;->e(Ly6/t1;)Ly6/x1;

    move-result-object v0

    sput-object v0, Ly6/x1;->b:Ly6/x1;

    return-void
.end method

.method public constructor <init>(Ly6/t1;)V
    .registers 2

    if-eqz p1, :cond_8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/x1;->a:Ly6/t1;

    return-void

    :cond_8
    const/4 p0, 0x7

    invoke-static {p0}, Ly6/x1;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(I)V
    .registers 14

    const/16 v0, 0x25

    const/16 v1, 0x22

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p0, v3, :cond_21

    if-eq p0, v4, :cond_21

    if-eq p0, v2, :cond_21

    if-eq p0, v1, :cond_21

    if-eq p0, v0, :cond_21

    packed-switch p0, :pswitch_data_11c

    packed-switch p0, :pswitch_data_126

    packed-switch p0, :pswitch_data_138

    packed-switch p0, :pswitch_data_144

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_23

    :cond_21
    :pswitch_21  #0xb, 0xc, 0xd, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1d, 0x1e, 0x1f, 0x20, 0x28, 0x29, 0x2a
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_23
    if-eq p0, v3, :cond_3b

    if-eq p0, v4, :cond_3b

    if-eq p0, v2, :cond_3b

    if-eq p0, v1, :cond_3b

    if-eq p0, v0, :cond_3b

    packed-switch p0, :pswitch_data_14e

    packed-switch p0, :pswitch_data_158

    packed-switch p0, :pswitch_data_16a

    packed-switch p0, :pswitch_data_176

    const/4 v6, 0x3

    goto :goto_3c

    :cond_3b
    :pswitch_3b  #0xb, 0xc, 0xd, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1d, 0x1e, 0x1f, 0x20, 0x28, 0x29, 0x2a
    move v6, v4

    :goto_3c
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_180

    :pswitch_44  #0x7
    const-string v9, "substitution"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_49  #0x27
    const-string v9, "projectionKind"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_4e  #0x23, 0x26
    const-string v9, "typeParameterVariance"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_53  #0x21
    const-string v9, "annotations"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_58  #0x1b
    const-string v9, "substituted"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_5d  #0x1a
    const-string v9, "originalType"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_62  #0x12, 0x1c
    const-string v9, "originalProjection"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_67  #0x10, 0x11, 0x24
    const-string v9, "typeProjection"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_6c  #0xa, 0xf
    const-string v9, "howThisTypeIsUsed"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_71  #0x9, 0xe
    const-string v9, "type"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_76  #0x6
    const-string v9, "context"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_7b  #0x5
    const-string v9, "substitutionContext"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_80  #0x4
    const-string v9, "second"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_85  #0x3
    const-string v9, "first"

    aput-object v9, v6, v8

    goto :goto_8c

    :pswitch_8a  #0x1, 0x2, 0x8, 0xb, 0xc, 0xd, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1d, 0x1e, 0x1f, 0x20, 0x22, 0x25, 0x28, 0x29, 0x2a
    aput-object v7, v6, v8

    :goto_8c
    const-string v8, "combine"

    const-string v9, "filterOutUnsafeVariance"

    const-string v10, "projectedTypeForConflictedTypeWithUnsafeVariance"

    const-string v11, "unsafeSubstitute"

    const-string v12, "safeSubstitute"

    if-eq p0, v3, :cond_c8

    if-eq p0, v4, :cond_c3

    if-eq p0, v2, :cond_be

    if-eq p0, v1, :cond_bb

    if-eq p0, v0, :cond_b8

    packed-switch p0, :pswitch_data_1d8

    packed-switch p0, :pswitch_data_1e2

    packed-switch p0, :pswitch_data_1f4

    packed-switch p0, :pswitch_data_200

    aput-object v7, v6, v3

    goto :goto_cc

    :pswitch_af  #0x1d, 0x1e, 0x1f, 0x20
    aput-object v10, v6, v3

    goto :goto_cc

    :pswitch_b2  #0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19
    aput-object v11, v6, v3

    goto :goto_cc

    :pswitch_b5  #0xb, 0xc, 0xd
    aput-object v12, v6, v3

    goto :goto_cc

    :cond_b8
    :pswitch_b8  #0x28, 0x29, 0x2a
    aput-object v8, v6, v3

    goto :goto_cc

    :cond_bb
    aput-object v9, v6, v3

    goto :goto_cc

    :cond_be
    const-string v7, "getSubstitution"

    aput-object v7, v6, v3

    goto :goto_cc

    :cond_c3
    const-string v7, "replaceWithContravariantApproximatingSubstitution"

    aput-object v7, v6, v3

    goto :goto_cc

    :cond_c8
    const-string v7, "replaceWithNonApproximatingSubstitution"

    aput-object v7, v6, v3

    :goto_cc
    packed-switch p0, :pswitch_data_20a

    :pswitch_cf  #0x5, 0x6
    const-string v7, "create"

    aput-object v7, v6, v4

    goto :goto_f6

    :pswitch_d4  #0x23, 0x24, 0x26, 0x27
    aput-object v8, v6, v4

    goto :goto_f6

    :pswitch_d7  #0x21
    aput-object v9, v6, v4

    goto :goto_f6

    :pswitch_da  #0x1a, 0x1b, 0x1c
    aput-object v10, v6, v4

    goto :goto_f6

    :pswitch_dd  #0x12
    aput-object v11, v6, v4

    goto :goto_f6

    :pswitch_e0  #0x11
    const-string v7, "substituteWithoutApproximation"

    aput-object v7, v6, v4

    goto :goto_f6

    :pswitch_e5  #0xe, 0xf, 0x10
    const-string v7, "substitute"

    aput-object v7, v6, v4

    goto :goto_f6

    :pswitch_ea  #0x9, 0xa
    aput-object v12, v6, v4

    goto :goto_f6

    :pswitch_ed  #0x7
    const-string v7, "<init>"

    aput-object v7, v6, v4

    goto :goto_f6

    :pswitch_f2  #0x3, 0x4
    const-string v7, "createChainedSubstitutor"

    aput-object v7, v6, v4

    :goto_f6
    :pswitch_f6  #0x1, 0x2, 0x8, 0xb, 0xc, 0xd, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1d, 0x1e, 0x1f, 0x20, 0x22, 0x25, 0x28, 0x29, 0x2a
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v3, :cond_116

    if-eq p0, v4, :cond_116

    if-eq p0, v2, :cond_116

    if-eq p0, v1, :cond_116

    if-eq p0, v0, :cond_116

    packed-switch p0, :pswitch_data_262

    packed-switch p0, :pswitch_data_26c

    packed-switch p0, :pswitch_data_27e

    packed-switch p0, :pswitch_data_28a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_11b

    :cond_116
    :pswitch_116  #0xb, 0xc, 0xd, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1d, 0x1e, 0x1f, 0x20, 0x28, 0x29, 0x2a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_11b
    throw p0

    :pswitch_data_11c
    .packed-switch 0xb
        :pswitch_21  #0000000b
        :pswitch_21  #0000000c
        :pswitch_21  #0000000d
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x13
        :pswitch_21  #00000013
        :pswitch_21  #00000014
        :pswitch_21  #00000015
        :pswitch_21  #00000016
        :pswitch_21  #00000017
        :pswitch_21  #00000018
        :pswitch_21  #00000019
    .end packed-switch

    :pswitch_data_138
    .packed-switch 0x1d
        :pswitch_21  #0000001d
        :pswitch_21  #0000001e
        :pswitch_21  #0000001f
        :pswitch_21  #00000020
    .end packed-switch

    :pswitch_data_144
    .packed-switch 0x28
        :pswitch_21  #00000028
        :pswitch_21  #00000029
        :pswitch_21  #0000002a
    .end packed-switch

    :pswitch_data_14e
    .packed-switch 0xb
        :pswitch_3b  #0000000b
        :pswitch_3b  #0000000c
        :pswitch_3b  #0000000d
    .end packed-switch

    :pswitch_data_158
    .packed-switch 0x13
        :pswitch_3b  #00000013
        :pswitch_3b  #00000014
        :pswitch_3b  #00000015
        :pswitch_3b  #00000016
        :pswitch_3b  #00000017
        :pswitch_3b  #00000018
        :pswitch_3b  #00000019
    .end packed-switch

    :pswitch_data_16a
    .packed-switch 0x1d
        :pswitch_3b  #0000001d
        :pswitch_3b  #0000001e
        :pswitch_3b  #0000001f
        :pswitch_3b  #00000020
    .end packed-switch

    :pswitch_data_176
    .packed-switch 0x28
        :pswitch_3b  #00000028
        :pswitch_3b  #00000029
        :pswitch_3b  #0000002a
    .end packed-switch

    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_8a  #00000001
        :pswitch_8a  #00000002
        :pswitch_85  #00000003
        :pswitch_80  #00000004
        :pswitch_7b  #00000005
        :pswitch_76  #00000006
        :pswitch_44  #00000007
        :pswitch_8a  #00000008
        :pswitch_71  #00000009
        :pswitch_6c  #0000000a
        :pswitch_8a  #0000000b
        :pswitch_8a  #0000000c
        :pswitch_8a  #0000000d
        :pswitch_71  #0000000e
        :pswitch_6c  #0000000f
        :pswitch_67  #00000010
        :pswitch_67  #00000011
        :pswitch_62  #00000012
        :pswitch_8a  #00000013
        :pswitch_8a  #00000014
        :pswitch_8a  #00000015
        :pswitch_8a  #00000016
        :pswitch_8a  #00000017
        :pswitch_8a  #00000018
        :pswitch_8a  #00000019
        :pswitch_5d  #0000001a
        :pswitch_58  #0000001b
        :pswitch_62  #0000001c
        :pswitch_8a  #0000001d
        :pswitch_8a  #0000001e
        :pswitch_8a  #0000001f
        :pswitch_8a  #00000020
        :pswitch_53  #00000021
        :pswitch_8a  #00000022
        :pswitch_4e  #00000023
        :pswitch_67  #00000024
        :pswitch_8a  #00000025
        :pswitch_4e  #00000026
        :pswitch_49  #00000027
        :pswitch_8a  #00000028
        :pswitch_8a  #00000029
        :pswitch_8a  #0000002a
    .end packed-switch

    :pswitch_data_1d8
    .packed-switch 0xb
        :pswitch_b5  #0000000b
        :pswitch_b5  #0000000c
        :pswitch_b5  #0000000d
    .end packed-switch

    :pswitch_data_1e2
    .packed-switch 0x13
        :pswitch_b2  #00000013
        :pswitch_b2  #00000014
        :pswitch_b2  #00000015
        :pswitch_b2  #00000016
        :pswitch_b2  #00000017
        :pswitch_b2  #00000018
        :pswitch_b2  #00000019
    .end packed-switch

    :pswitch_data_1f4
    .packed-switch 0x1d
        :pswitch_af  #0000001d
        :pswitch_af  #0000001e
        :pswitch_af  #0000001f
        :pswitch_af  #00000020
    .end packed-switch

    :pswitch_data_200
    .packed-switch 0x28
        :pswitch_b8  #00000028
        :pswitch_b8  #00000029
        :pswitch_b8  #0000002a
    .end packed-switch

    :pswitch_data_20a
    .packed-switch 0x1
        :pswitch_f6  #00000001
        :pswitch_f6  #00000002
        :pswitch_f2  #00000003
        :pswitch_f2  #00000004
        :pswitch_cf  #00000005
        :pswitch_cf  #00000006
        :pswitch_ed  #00000007
        :pswitch_f6  #00000008
        :pswitch_ea  #00000009
        :pswitch_ea  #0000000a
        :pswitch_f6  #0000000b
        :pswitch_f6  #0000000c
        :pswitch_f6  #0000000d
        :pswitch_e5  #0000000e
        :pswitch_e5  #0000000f
        :pswitch_e5  #00000010
        :pswitch_e0  #00000011
        :pswitch_dd  #00000012
        :pswitch_f6  #00000013
        :pswitch_f6  #00000014
        :pswitch_f6  #00000015
        :pswitch_f6  #00000016
        :pswitch_f6  #00000017
        :pswitch_f6  #00000018
        :pswitch_f6  #00000019
        :pswitch_da  #0000001a
        :pswitch_da  #0000001b
        :pswitch_da  #0000001c
        :pswitch_f6  #0000001d
        :pswitch_f6  #0000001e
        :pswitch_f6  #0000001f
        :pswitch_f6  #00000020
        :pswitch_d7  #00000021
        :pswitch_f6  #00000022
        :pswitch_d4  #00000023
        :pswitch_d4  #00000024
        :pswitch_f6  #00000025
        :pswitch_d4  #00000026
        :pswitch_d4  #00000027
        :pswitch_f6  #00000028
        :pswitch_f6  #00000029
        :pswitch_f6  #0000002a
    .end packed-switch

    :pswitch_data_262
    .packed-switch 0xb
        :pswitch_116  #0000000b
        :pswitch_116  #0000000c
        :pswitch_116  #0000000d
    .end packed-switch

    :pswitch_data_26c
    .packed-switch 0x13
        :pswitch_116  #00000013
        :pswitch_116  #00000014
        :pswitch_116  #00000015
        :pswitch_116  #00000016
        :pswitch_116  #00000017
        :pswitch_116  #00000018
        :pswitch_116  #00000019
    .end packed-switch

    :pswitch_data_27e
    .packed-switch 0x1d
        :pswitch_116  #0000001d
        :pswitch_116  #0000001e
        :pswitch_116  #0000001f
        :pswitch_116  #00000020
    .end packed-switch

    :pswitch_data_28a
    .packed-switch 0x28
        :pswitch_116  #00000028
        :pswitch_116  #00000029
        :pswitch_116  #0000002a
    .end packed-switch
.end method

.method public static b(Ly6/e2;Ly6/e2;)Ly6/e2;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_52

    if-eqz p1, :cond_4c

    sget-object v1, Ly6/e2;->c:Ly6/e2;

    if-ne p0, v1, :cond_12

    if-eqz p1, :cond_c

    return-object p1

    :cond_c
    const/16 p0, 0x28

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v0

    :cond_12
    if-ne p1, v1, :cond_1d

    if-eqz p0, :cond_17

    return-object p0

    :cond_17
    const/16 p0, 0x29

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v0

    :cond_1d
    if-ne p0, p1, :cond_28

    if-eqz p1, :cond_22

    return-object p1

    :cond_22
    const/16 p0, 0x2a

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v0

    :cond_28
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Variance conflict: type parameter variance \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' and projection kind \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be combined"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4c
    const/16 p0, 0x27

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v0

    :cond_52
    const/16 p0, 0x26

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v0
.end method

.method public static c(Ly6/e2;Ly6/e2;)I
    .registers 4

    sget-object v0, Ly6/e2;->e:Ly6/e2;

    sget-object v1, Ly6/e2;->d:Ly6/e2;

    if-ne p0, v1, :cond_a

    if-ne p1, v0, :cond_a

    const/4 p0, 0x3

    return p0

    :cond_a
    if-ne p0, v0, :cond_10

    if-ne p1, v1, :cond_10

    const/4 p0, 0x2

    return p0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Ly6/l0;)Ly6/x1;
    .registers 3

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-virtual {p0}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object p0

    sget-object v1, Ly6/l1;->b:Ly6/l1$a;

    invoke-virtual {v1, v0, p0}, Ly6/l1$a;->b(Ly6/j1;Ljava/util/List;)Ly6/t1;

    move-result-object p0

    invoke-static {p0}, Ly6/x1;->e(Ly6/t1;)Ly6/x1;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x6

    invoke-static {p0}, Ly6/x1;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static e(Ly6/t1;)Ly6/x1;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Ly6/x1;

    invoke-direct {v0, p0}, Ly6/x1;-><init>(Ly6/t1;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    invoke-static {p0}, Ly6/x1;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static f(Ly6/t1;Ly6/t1;)Ly6/x1;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    if-eqz p1, :cond_29

    const-string v1, "first"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "second"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/t1;->f()Z

    move-result v1

    if-eqz v1, :cond_17

    move-object p0, p1

    goto :goto_24

    :cond_17
    invoke-virtual {p1}, Ly6/t1;->f()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_24

    :cond_1e
    new-instance v1, Ly6/y;

    invoke-direct {v1, p0, p1, v0}, Ly6/y;-><init>(Ly6/t1;Ly6/t1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p0, v1

    :goto_24
    invoke-static {p0}, Ly6/x1;->e(Ly6/t1;)Ly6/x1;

    move-result-object p0

    return-object p0

    :cond_29
    const/4 p0, 0x4

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v0

    :cond_2e
    const/4 p0, 0x3

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v0
.end method

.method public static j(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    invoke-static {p0}, Ln4/f;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Exception while computing toString(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method


# virtual methods
.method public g()Ly6/t1;
    .registers 1

    iget-object p0, p0, Ly6/x1;->a:Ly6/t1;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x8

    invoke-static {p0}, Ly6/x1;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public h()Z
    .registers 1

    iget-object p0, p0, Ly6/x1;->a:Ly6/t1;

    invoke-virtual {p0}, Ly6/t1;->f()Z

    move-result p0

    return p0
.end method

.method public i(Ly6/l0;Ly6/e2;)Ly6/l0;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ly6/x1;->h()Z

    move-result v1

    if-eqz v1, :cond_a

    return-object p1

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    new-instance v2, Ly6/s1;

    invoke-direct {v2, p2, p1}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    invoke-virtual {p0, v2, v0, v1}, Ly6/x1;->m(Ly6/q1;Li5/a1;I)Ly6/q1;

    move-result-object p0

    invoke-interface {p0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p0
    :try_end_18
    .catch Ly6/x1$a; {:try_start_b .. :try_end_18} :catch_21

    if-eqz p0, :cond_1b

    return-object p0

    :cond_1b
    const/16 p0, 0xc

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v0

    :catch_21
    move-exception p0

    sget-object p1, La7/i;->D:La7/i;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    invoke-static {p1, p2}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object p0

    return-object p0

    :cond_32
    const/16 p0, 0x9

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v0
.end method

.method public k(Ly6/l0;Ly6/e2;)Ly6/l0;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_96

    if-eqz p2, :cond_90

    new-instance v1, Ly6/s1;

    invoke-virtual {p0}, Ly6/x1;->g()Ly6/t1;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ly6/t1;->g(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    invoke-virtual {p0, v1}, Ly6/x1;->l(Ly6/q1;)Ly6/q1;

    move-result-object p1

    iget-object p2, p0, Ly6/x1;->a:Ly6/t1;

    invoke-virtual {p2}, Ly6/t1;->a()Z

    move-result p2

    if-nez p2, :cond_27

    iget-object p2, p0, Ly6/x1;->a:Ly6/t1;

    invoke-virtual {p2}, Ly6/t1;->b()Z

    move-result p2

    if-nez p2, :cond_27

    goto :goto_88

    :cond_27
    iget-object p0, p0, Ly6/x1;->a:Ly6/t1;

    invoke-virtual {p0}, Ly6/t1;->b()Z

    move-result p0

    if-nez p1, :cond_31

    move-object p1, v0

    goto :goto_88

    :cond_31
    invoke-interface {p1}, Ly6/q1;->b()Z

    move-result p2

    if-eqz p2, :cond_38

    goto :goto_88

    :cond_38
    invoke-interface {p1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object p2

    const-string v1, "typeProjection.type"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/b;->a:Le7/b;

    invoke-static {p2, v1}, Ly6/a2;->c(Ly6/l0;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_88

    :cond_4a
    invoke-interface {p1}, Ly6/q1;->c()Ly6/e2;

    move-result-object v1

    const-string v2, "typeProjection.projectionKind"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ly6/e2;->e:Ly6/e2;

    if-ne v1, v2, :cond_65

    invoke-static {p2}, Le7/d;->a(Ly6/l0;)Le7/a;

    move-result-object p0

    new-instance p1, Ly6/s1;

    iget-object p0, p0, Le7/a;->b:Ljava/lang/Object;

    check-cast p0, Ly6/l0;

    invoke-direct {p1, v1, p0}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto :goto_88

    :cond_65
    if-eqz p0, :cond_75

    invoke-static {p2}, Le7/d;->a(Ly6/l0;)Le7/a;

    move-result-object p0

    iget-object p0, p0, Le7/a;->a:Ljava/lang/Object;

    check-cast p0, Ly6/l0;

    new-instance p1, Ly6/s1;

    invoke-direct {p1, v1, p0}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    goto :goto_88

    :cond_75
    new-instance p0, Le7/c;

    invoke-direct {p0}, Le7/c;-><init>()V

    invoke-static {p0}, Ly6/x1;->e(Ly6/t1;)Ly6/x1;

    move-result-object p0

    const-string p2, "create(object : TypeCons…ojection\n        }\n    })"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ly6/x1;->l(Ly6/q1;)Ly6/q1;

    move-result-object p0

    move-object p1, p0

    :goto_88
    if-nez p1, :cond_8b

    goto :goto_8f

    :cond_8b
    invoke-interface {p1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v0

    :goto_8f
    return-object v0

    :cond_90
    const/16 p0, 0xf

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v0

    :cond_96
    const/16 p0, 0xe

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v0
.end method

.method public l(Ly6/q1;)Ly6/q1;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ly6/x1;->h()Z

    move-result v1

    if-eqz v1, :cond_a

    return-object p1

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p0, p1, v0, v1}, Ly6/x1;->m(Ly6/q1;Li5/a1;I)Ly6/q1;

    move-result-object p0
    :try_end_f
    .catch Ly6/x1$a; {:try_start_b .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    return-object v0

    :cond_11
    const/16 p0, 0x11

    invoke-static {p0}, Ly6/x1;->a(I)V

    throw v0
.end method

.method public final m(Ly6/q1;Li5/a1;I)Ly6/q1;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ly6/x1$a;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    if-eqz p1, :cond_326

    iget-object v4, v0, Ly6/x1;->a:Ly6/t1;

    const/16 v5, 0x64

    if-gt v2, v5, :cond_303

    invoke-interface/range {p1 .. p1}, Ly6/q1;->b()Z

    move-result v4

    if-eqz v4, :cond_16

    return-object p1

    :cond_16
    invoke-interface/range {p1 .. p1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v4

    instance-of v5, v4, Ly6/b2;

    const/4 v6, 0x1

    if-eqz v5, :cond_5c

    check-cast v4, Ly6/b2;

    invoke-interface {v4}, Ly6/b2;->z0()Ly6/d2;

    move-result-object v3

    invoke-interface {v4}, Ly6/b2;->d0()Ly6/l0;

    move-result-object v4

    new-instance v5, Ly6/s1;

    invoke-interface/range {p1 .. p1}, Ly6/q1;->c()Ly6/e2;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    add-int/2addr v2, v6

    invoke-virtual {v0, v5, v1, v2}, Ly6/x1;->m(Ly6/q1;Li5/a1;I)Ly6/q1;

    move-result-object v1

    invoke-interface {v1}, Ly6/q1;->b()Z

    move-result v2

    if-eqz v2, :cond_3e

    return-object v1

    :cond_3e
    invoke-interface/range {p1 .. p1}, Ly6/q1;->c()Ly6/e2;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v0

    invoke-interface {v1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v2

    invoke-virtual {v2}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v2

    invoke-static {v2, v0}, Ly6/c2;->f(Ly6/d2;Ly6/l0;)Ly6/d2;

    move-result-object v0

    new-instance v2, Ly6/s1;

    invoke-interface {v1}, Ly6/q1;->c()Ly6/e2;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    return-object v2

    :cond_5c
    invoke-static {v4}, Ly6/a0;->a(Ly6/l0;)Z

    move-result v5

    if-nez v5, :cond_302

    invoke-virtual {v4}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v5

    instance-of v5, v5, Ly6/r0;

    if-eqz v5, :cond_6c

    goto/16 :goto_302

    :cond_6c
    iget-object v5, v0, Ly6/x1;->a:Ly6/t1;

    invoke-virtual {v5, v4}, Ly6/t1;->e(Ly6/l0;)Ly6/q1;

    move-result-object v5

    if-eqz v5, :cond_c2

    invoke-virtual {v4}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v7

    sget-object v8, Lf5/j$a;->z:Lh6/c;

    invoke-interface {v7, v8}, Lj5/h;->g(Lh6/c;)Z

    move-result v7

    if-nez v7, :cond_81

    goto :goto_c3

    :cond_81
    invoke-interface {v5}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v7

    invoke-virtual {v7}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v7

    instance-of v8, v7, Lz6/j;

    if-nez v8, :cond_8e

    goto :goto_c3

    :cond_8e
    check-cast v7, Lz6/j;

    iget-object v7, v7, Lz6/j;->a:Ly6/q1;

    invoke-interface {v7}, Ly6/q1;->c()Ly6/e2;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Ly6/q1;->c()Ly6/e2;

    move-result-object v9

    invoke-static {v9, v8}, Ly6/x1;->c(Ly6/e2;Ly6/e2;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_ab

    new-instance v5, Ly6/s1;

    invoke-interface {v7}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v7

    invoke-direct {v5, v7}, Ly6/s1;-><init>(Ly6/l0;)V

    goto :goto_c3

    :cond_ab
    if-nez v1, :cond_ae

    goto :goto_c3

    :cond_ae
    invoke-interface/range {p2 .. p2}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v9

    invoke-static {v9, v8}, Ly6/x1;->c(Ly6/e2;Ly6/e2;)I

    move-result v8

    if-ne v8, v10, :cond_c3

    new-instance v5, Ly6/s1;

    invoke-interface {v7}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v7

    invoke-direct {v5, v7}, Ly6/s1;-><init>(Ly6/l0;)V

    goto :goto_c3

    :cond_c2
    move-object v5, v3

    :cond_c3
    :goto_c3
    invoke-interface/range {p1 .. p1}, Ly6/q1;->c()Ly6/e2;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "<this>"

    if-nez v5, :cond_135

    invoke-static {v4}, Ly6/h0;->b(Ly6/l0;)Z

    move-result v10

    if-eqz v10, :cond_135

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v10

    instance-of v11, v10, Ly6/s;

    if-eqz v11, :cond_e0

    check-cast v10, Ly6/s;

    goto :goto_e1

    :cond_e0
    move-object v10, v3

    :goto_e1
    if-eqz v10, :cond_e8

    invoke-interface {v10}, Ly6/s;->x0()Z

    move-result v10

    goto :goto_e9

    :cond_e8
    move v10, v8

    :goto_e9
    if-nez v10, :cond_135

    invoke-static {v4}, Ly6/h0;->a(Ly6/l0;)Ly6/e0;

    move-result-object v3

    new-instance v4, Ly6/s1;

    iget-object v5, v3, Ly6/e0;->b:Ly6/s0;

    invoke-direct {v4, v7, v5}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    add-int/2addr v2, v6

    invoke-virtual {v0, v4, v1, v2}, Ly6/x1;->m(Ly6/q1;Li5/a1;I)Ly6/q1;

    move-result-object v4

    new-instance v5, Ly6/s1;

    iget-object v6, v3, Ly6/e0;->c:Ly6/s0;

    invoke-direct {v5, v7, v6}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    invoke-virtual {v0, v5, v1, v2}, Ly6/x1;->m(Ly6/q1;Li5/a1;I)Ly6/q1;

    move-result-object v0

    invoke-interface {v4}, Ly6/q1;->c()Ly6/e2;

    move-result-object v1

    invoke-interface {v4}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v2

    iget-object v5, v3, Ly6/e0;->b:Ly6/s0;

    if-ne v2, v5, :cond_11b

    invoke-interface {v0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v2

    iget-object v3, v3, Ly6/e0;->c:Ly6/s0;

    if-ne v2, v3, :cond_11b

    return-object p1

    :cond_11b
    invoke-interface {v4}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v2

    invoke-static {v2}, Ly6/v1;->a(Ly6/l0;)Ly6/s0;

    move-result-object v2

    invoke-interface {v0}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v0

    invoke-static {v0}, Ly6/v1;->a(Ly6/l0;)Ly6/s0;

    move-result-object v0

    invoke-static {v2, v0}, Ly6/m0;->c(Ly6/s0;Ly6/s0;)Ly6/d2;

    move-result-object v0

    new-instance v2, Ly6/s1;

    invoke-direct {v2, v1, v0}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    return-object v2

    :cond_135
    invoke-static {v4}, Lf5/g;->H(Ly6/l0;)Z

    move-result v1

    if-nez v1, :cond_302

    invoke-static {v4}, Ly0/b;->c(Ly6/l0;)Z

    move-result v1

    if-eqz v1, :cond_143

    goto/16 :goto_302

    :cond_143
    const/4 v1, 0x2

    if-eqz v5, :cond_204

    invoke-interface {v5}, Ly6/q1;->c()Ly6/e2;

    move-result-object v2

    invoke-static {v7, v2}, Ly6/x1;->c(Ly6/e2;Ly6/e2;)I

    move-result v2

    invoke-static {v4}, Ll6/d;->b(Ly6/l0;)Z

    move-result v10

    if-nez v10, :cond_179

    invoke-static {v2}, Lk/b;->g(I)I

    move-result v10

    if-eq v10, v6, :cond_165

    if-eq v10, v1, :cond_15d

    goto :goto_179

    :cond_15d
    new-instance v0, Ly6/x1$a;

    const-string v1, "Out-projection in in-position"

    invoke-direct {v0, v1}, Ly6/x1$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_165
    new-instance v0, Ly6/s1;

    sget-object v1, Ly6/e2;->e:Ly6/e2;

    invoke-virtual {v4}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v2

    invoke-interface {v2}, Ly6/j1;->k()Lf5/g;

    move-result-object v2

    invoke-virtual {v2}, Lf5/g;->q()Ly6/s0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    return-object v0

    :cond_179
    :goto_179
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v9

    instance-of v10, v9, Ly6/s;

    if-eqz v10, :cond_187

    check-cast v9, Ly6/s;

    goto :goto_188

    :cond_187
    move-object v9, v3

    :goto_188
    if-eqz v9, :cond_191

    invoke-interface {v9}, Ly6/s;->x0()Z

    move-result v10

    if-eqz v10, :cond_191

    goto :goto_192

    :cond_191
    move-object v9, v3

    :goto_192
    invoke-interface {v5}, Ly6/q1;->b()Z

    move-result v10

    if-eqz v10, :cond_199

    return-object v5

    :cond_199
    if-eqz v9, :cond_1a4

    invoke-interface {v5}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v10

    invoke-interface {v9, v10}, Ly6/s;->z(Ly6/l0;)Ly6/l0;

    move-result-object v9

    goto :goto_1b0

    :cond_1a4
    invoke-interface {v5}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v9

    invoke-virtual {v4}, Ly6/l0;->G0()Z

    move-result v10

    invoke-static {v9, v10}, Ly6/a2;->k(Ly6/l0;Z)Ly6/l0;

    move-result-object v9

    :goto_1b0
    invoke-virtual {v4}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v10

    invoke-interface {v10}, Lj5/h;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1f4

    iget-object v0, v0, Ly6/x1;->a:Ly6/t1;

    invoke-virtual {v4}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v4

    invoke-virtual {v0, v4}, Ly6/t1;->d(Lj5/h;)Lj5/h;

    move-result-object v0

    if-eqz v0, :cond_1ee

    sget-object v3, Lf5/j$a;->z:Lh6/c;

    invoke-interface {v0, v3}, Lj5/h;->g(Lh6/c;)Z

    move-result v3

    if-nez v3, :cond_1cf

    goto :goto_1da

    :cond_1cf
    new-instance v3, Lj5/l;

    new-instance v4, Ly6/w1;

    invoke-direct {v4}, Ly6/w1;-><init>()V

    invoke-direct {v3, v0, v4}, Lj5/l;-><init>(Lj5/h;Lkotlin/jvm/functions/Function1;)V

    move-object v0, v3

    :goto_1da
    new-instance v3, Lj5/k;

    new-array v1, v1, [Lj5/h;

    invoke-virtual {v9}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v4

    aput-object v4, v1, v8

    aput-object v0, v1, v6

    invoke-direct {v3, v1}, Lj5/k;-><init>([Lj5/h;)V

    invoke-static {v9, v3}, Ld7/c;->m(Ly6/l0;Lj5/h;)Ly6/l0;

    move-result-object v9

    goto :goto_1f4

    :cond_1ee
    const/16 v0, 0x21

    invoke-static {v0}, Ly6/x1;->a(I)V

    throw v3

    :cond_1f4
    :goto_1f4
    if-ne v2, v6, :cond_1fe

    invoke-interface {v5}, Ly6/q1;->c()Ly6/e2;

    move-result-object v0

    invoke-static {v7, v0}, Ly6/x1;->b(Ly6/e2;Ly6/e2;)Ly6/e2;

    move-result-object v7

    :cond_1fe
    new-instance v0, Ly6/s1;

    invoke-direct {v0, v7, v9}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    return-object v0

    :cond_204
    sget-object v1, Ly6/e2;->c:Ly6/e2;

    invoke-interface/range {p1 .. p1}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ly6/q1;->c()Ly6/e2;

    move-result-object v5

    invoke-virtual {v4}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v6

    invoke-interface {v6}, Ly6/j1;->e()Li5/h;

    move-result-object v6

    instance-of v6, v6, Li5/a1;

    if-eqz v6, :cond_21e

    move-object/from16 v1, p1

    goto/16 :goto_301

    :cond_21e
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ly6/l0;->I0()Ly6/d2;

    move-result-object v6

    instance-of v7, v6, Ly6/a;

    if-eqz v7, :cond_22f

    check-cast v6, Ly6/a;

    goto :goto_230

    :cond_22f
    move-object v6, v3

    :goto_230
    if-eqz v6, :cond_235

    iget-object v6, v6, Ly6/a;->c:Ly6/s0;

    goto :goto_236

    :cond_235
    move-object v6, v3

    :goto_236
    if-eqz v6, :cond_25d

    iget-object v3, v0, Ly6/x1;->a:Ly6/t1;

    instance-of v7, v3, Ly6/i0;

    if-eqz v7, :cond_258

    invoke-virtual {v3}, Ly6/t1;->b()Z

    move-result v3

    if-nez v3, :cond_245

    goto :goto_258

    :cond_245
    new-instance v3, Ly6/x1;

    new-instance v7, Ly6/i0;

    iget-object v10, v0, Ly6/x1;->a:Ly6/t1;

    check-cast v10, Ly6/i0;

    iget-object v11, v10, Ly6/i0;->b:[Li5/a1;

    iget-object v10, v10, Ly6/i0;->c:[Ly6/q1;

    invoke-direct {v7, v11, v10, v8}, Ly6/i0;-><init>([Li5/a1;[Ly6/q1;Z)V

    invoke-direct {v3, v7}, Ly6/x1;-><init>(Ly6/t1;)V

    goto :goto_259

    :cond_258
    :goto_258
    move-object v3, v0

    :goto_259
    invoke-virtual {v3, v6, v1}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v3

    :cond_25d
    invoke-virtual {v4}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v6

    invoke-interface {v6}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4}, Ly6/l0;->D0()Ljava/util/List;

    move-result-object v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move v11, v8

    :goto_273
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_2cb

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Li5/a1;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ly6/q1;

    add-int/lit8 v14, v2, 0x1

    invoke-virtual {v0, v13, v12, v14}, Ly6/x1;->m(Ly6/q1;Li5/a1;I)Ly6/q1;

    move-result-object v14

    invoke-interface {v12}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v15

    invoke-interface {v14}, Ly6/q1;->c()Ly6/e2;

    move-result-object v2

    invoke-static {v15, v2}, Ly6/x1;->c(Ly6/e2;Ly6/e2;)I

    move-result v2

    invoke-static {v2}, Lk/b;->g(I)I

    move-result v2

    if-eqz v2, :cond_2a9

    const/4 v15, 0x1

    if-eq v2, v15, :cond_2a4

    const/4 v15, 0x2

    if-eq v2, v15, :cond_2a4

    goto :goto_2bf

    :cond_2a4
    invoke-static {v12}, Ly6/a2;->m(Li5/a1;)Ly6/q1;

    move-result-object v14

    goto :goto_2bf

    :cond_2a9
    invoke-interface {v12}, Li5/a1;->getVariance()Ly6/e2;

    move-result-object v2

    if-eq v2, v1, :cond_2bf

    invoke-interface {v14}, Ly6/q1;->b()Z

    move-result v2

    if-nez v2, :cond_2bf

    new-instance v2, Ly6/s1;

    invoke-interface {v14}, Ly6/q1;->getType()Ly6/l0;

    move-result-object v12

    invoke-direct {v2, v1, v12}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    move-object v14, v2

    :cond_2bf
    :goto_2bf
    if-eq v14, v13, :cond_2c3

    const/4 v2, 0x1

    move v11, v2

    :cond_2c3
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p3

    goto :goto_273

    :cond_2cb
    if-nez v11, :cond_2ce

    goto :goto_2cf

    :cond_2ce
    move-object v7, v10

    :goto_2cf
    iget-object v0, v0, Ly6/x1;->a:Ly6/t1;

    invoke-virtual {v4}, Ly6/l0;->getAnnotations()Lj5/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly6/t1;->d(Lj5/h;)Lj5/h;

    move-result-object v0

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newArguments"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newAnnotations"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v4, v7, v0, v2, v1}, Ly6/v1;->c(Ly6/l0;Ljava/util/List;Lj5/h;Ljava/util/List;I)Ly6/l0;

    move-result-object v0

    instance-of v1, v0, Ly6/s0;

    if-eqz v1, :cond_2fc

    instance-of v1, v3, Ly6/s0;

    if-eqz v1, :cond_2fc

    check-cast v0, Ly6/s0;

    check-cast v3, Ly6/s0;

    invoke-static {v0, v3}, Ly6/w0;->e(Ly6/s0;Ly6/s0;)Ly6/s0;

    move-result-object v0

    :cond_2fc
    new-instance v1, Ly6/s1;

    invoke-direct {v1, v5, v0}, Ly6/s1;-><init>(Ly6/e2;Ly6/l0;)V

    :goto_301
    return-object v1

    :cond_302
    :goto_302
    return-object p1

    :cond_303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursion too deep. Most likely infinite loop while substituting "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ly6/x1;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; substitution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ly6/x1;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_326
    const/16 v0, 0x12

    invoke-static {v0}, Ly6/x1;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method
