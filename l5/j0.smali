.class public Ll5/j0;
.super Ll5/r;
.source ""

# interfaces
.implements Li5/u0;


# direct methods
.method public constructor <init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    if-eqz p3, :cond_1e

    if-eqz p4, :cond_19

    if-eqz p5, :cond_14

    if-eqz p6, :cond_f

    invoke-direct/range {p0 .. p6}, Ll5/r;-><init>(Li5/l;Li5/x;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)V

    return-void

    :cond_f
    const/4 p0, 0x4

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0

    :cond_14
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0

    :cond_19
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0

    :cond_1e
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0

    :cond_23
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0
.end method

.method public static N0(Li5/l;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)Ll5/j0;
    .registers 13

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    if-eqz p2, :cond_1a

    if-eqz p4, :cond_14

    new-instance v0, Ll5/j0;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Ll5/j0;-><init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)V

    return-object v0

    :cond_14
    const/16 p0, 0x9

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0

    :cond_1a
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0

    :cond_1f
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 13

    const/16 v0, 0x1e

    const/16 v1, 0x1d

    const/16 v2, 0x18

    const/16 v3, 0x17

    const/16 v4, 0x12

    const/16 v5, 0xd

    if-eq p0, v5, :cond_1b

    if-eq p0, v4, :cond_1b

    if-eq p0, v3, :cond_1b

    if-eq p0, v2, :cond_1b

    if-eq p0, v1, :cond_1b

    if-eq p0, v0, :cond_1b

    const-string v6, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_1d

    :cond_1b
    const-string v6, "@NotNull method %s.%s must not return null"

    :goto_1d
    const/4 v7, 0x2

    if-eq p0, v5, :cond_2c

    if-eq p0, v4, :cond_2c

    if-eq p0, v3, :cond_2c

    if-eq p0, v2, :cond_2c

    if-eq p0, v1, :cond_2c

    if-eq p0, v0, :cond_2c

    const/4 v8, 0x3

    goto :goto_2d

    :cond_2c
    move v8, v7

    :goto_2d
    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl"

    const/4 v10, 0x0

    packed-switch p0, :pswitch_data_bc

    :pswitch_35  #0x5
    const-string v11, "containingDeclaration"

    aput-object v11, v8, v10

    goto :goto_69

    :pswitch_3a  #0x19
    const-string v11, "newOwner"

    aput-object v11, v8, v10

    goto :goto_69

    :pswitch_3f  #0xe, 0x13
    const-string v11, "contextReceiverParameters"

    aput-object v11, v8, v10

    goto :goto_69

    :pswitch_44  #0xd, 0x12, 0x17, 0x18, 0x1d, 0x1e
    aput-object v9, v8, v10

    goto :goto_69

    :pswitch_47  #0xc, 0x11, 0x16
    const-string v11, "visibility"

    aput-object v11, v8, v10

    goto :goto_69

    :pswitch_4c  #0xb, 0x10, 0x15
    const-string v11, "unsubstitutedValueParameters"

    aput-object v11, v8, v10

    goto :goto_69

    :pswitch_51  #0xa, 0xf, 0x14
    const-string v11, "typeParameters"

    aput-object v11, v8, v10

    goto :goto_69

    :pswitch_56  #0x4, 0x9, 0x1c
    const-string v11, "source"

    aput-object v11, v8, v10

    goto :goto_69

    :pswitch_5b  #0x3, 0x8, 0x1a
    const-string v11, "kind"

    aput-object v11, v8, v10

    goto :goto_69

    :pswitch_60  #0x2, 0x7
    const-string v11, "name"

    aput-object v11, v8, v10

    goto :goto_69

    :pswitch_65  #0x1, 0x6, 0x1b
    const-string v11, "annotations"

    aput-object v11, v8, v10

    :goto_69
    const-string v10, "initialize"

    const/4 v11, 0x1

    if-eq p0, v5, :cond_8a

    if-eq p0, v4, :cond_8a

    if-eq p0, v3, :cond_8a

    if-eq p0, v2, :cond_85

    if-eq p0, v1, :cond_80

    if-eq p0, v0, :cond_7b

    aput-object v9, v8, v11

    goto :goto_8c

    :cond_7b
    const-string v9, "newCopyBuilder"

    aput-object v9, v8, v11

    goto :goto_8c

    :cond_80
    const-string v9, "copy"

    aput-object v9, v8, v11

    goto :goto_8c

    :cond_85
    const-string v9, "getOriginal"

    aput-object v9, v8, v11

    goto :goto_8c

    :cond_8a
    aput-object v10, v8, v11

    :goto_8c
    packed-switch p0, :pswitch_data_fc

    const-string v9, "<init>"

    aput-object v9, v8, v7

    goto :goto_a0

    :pswitch_94  #0x19, 0x1a, 0x1b, 0x1c
    const-string v9, "createSubstitutedCopy"

    aput-object v9, v8, v7

    goto :goto_a0

    :pswitch_99  #0xa, 0xb, 0xc, 0xe, 0xf, 0x10, 0x11, 0x13, 0x14, 0x15, 0x16
    aput-object v10, v8, v7

    goto :goto_a0

    :pswitch_9c  #0x5, 0x6, 0x7, 0x8, 0x9
    const-string v9, "create"

    aput-object v9, v8, v7

    :goto_a0
    :pswitch_a0  #0xd, 0x12, 0x17, 0x18, 0x1d, 0x1e
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eq p0, v5, :cond_b6

    if-eq p0, v4, :cond_b6

    if-eq p0, v3, :cond_b6

    if-eq p0, v2, :cond_b6

    if-eq p0, v1, :cond_b6

    if-eq p0, v0, :cond_b6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_bb

    :cond_b6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_bb
    throw p0

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_65  #00000001
        :pswitch_60  #00000002
        :pswitch_5b  #00000003
        :pswitch_56  #00000004
        :pswitch_35  #00000005
        :pswitch_65  #00000006
        :pswitch_60  #00000007
        :pswitch_5b  #00000008
        :pswitch_56  #00000009
        :pswitch_51  #0000000a
        :pswitch_4c  #0000000b
        :pswitch_47  #0000000c
        :pswitch_44  #0000000d
        :pswitch_3f  #0000000e
        :pswitch_51  #0000000f
        :pswitch_4c  #00000010
        :pswitch_47  #00000011
        :pswitch_44  #00000012
        :pswitch_3f  #00000013
        :pswitch_51  #00000014
        :pswitch_4c  #00000015
        :pswitch_47  #00000016
        :pswitch_44  #00000017
        :pswitch_44  #00000018
        :pswitch_3a  #00000019
        :pswitch_5b  #0000001a
        :pswitch_65  #0000001b
        :pswitch_56  #0000001c
        :pswitch_44  #0000001d
        :pswitch_44  #0000001e
    .end packed-switch

    :pswitch_data_fc
    .packed-switch 0x5
        :pswitch_9c  #00000005
        :pswitch_9c  #00000006
        :pswitch_9c  #00000007
        :pswitch_9c  #00000008
        :pswitch_9c  #00000009
        :pswitch_99  #0000000a
        :pswitch_99  #0000000b
        :pswitch_99  #0000000c
        :pswitch_a0  #0000000d
        :pswitch_99  #0000000e
        :pswitch_99  #0000000f
        :pswitch_99  #00000010
        :pswitch_99  #00000011
        :pswitch_a0  #00000012
        :pswitch_99  #00000013
        :pswitch_99  #00000014
        :pswitch_99  #00000015
        :pswitch_99  #00000016
        :pswitch_a0  #00000017
        :pswitch_a0  #00000018
        :pswitch_94  #00000019
        :pswitch_94  #0000001a
        :pswitch_94  #0000001b
        :pswitch_94  #0000001c
        :pswitch_a0  #0000001d
        :pswitch_a0  #0000001e
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic A0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/b;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Ll5/j0;->M0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/u0;

    move-result-object p0

    return-object p0
.end method

.method public D0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/r;
    .registers 15

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-eqz p3, :cond_23

    if-eqz p5, :cond_1d

    new-instance v0, Ll5/j0;

    move-object v3, p2

    check-cast v3, Li5/u0;

    if-eqz p4, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object p4

    :goto_13
    move-object v5, p4

    move-object v1, v0

    move-object v2, p1

    move-object v4, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Ll5/j0;-><init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)V

    return-object v0

    :cond_1d
    const/16 p0, 0x1b

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0

    :cond_23
    const/16 p0, 0x1a

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0

    :cond_29
    const/16 p0, 0x19

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0
.end method

.method public bridge synthetic G0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/r;
    .registers 9

    invoke-virtual/range {p0 .. p8}, Ll5/j0;->P0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/j0;

    move-result-object p0

    return-object p0
.end method

.method public M0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/u0;
    .registers 6

    invoke-super/range {p0 .. p5}, Ll5/r;->z0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/x;

    move-result-object p0

    check-cast p0, Li5/u0;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x1d

    invoke-static {p0}, Ll5/j0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public O0()Li5/u0;
    .registers 1

    invoke-super {p0}, Ll5/r;->a()Li5/x;

    move-result-object p0

    check-cast p0, Li5/u0;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x18

    invoke-static {p0}, Ll5/j0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public P0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/j0;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/r0;",
            "Li5/r0;",
            "Ljava/util/List<",
            "Li5/r0;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;",
            "Ly6/l0;",
            "Li5/d0;",
            "Li5/t;",
            ")",
            "Ll5/j0;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_36

    if-eqz p4, :cond_30

    if-eqz p5, :cond_2a

    if-eqz p8, :cond_24

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Ll5/j0;->Q0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;Ljava/util/Map;)Ll5/j0;

    move-result-object v1

    if-eqz v1, :cond_1e

    return-object v1

    :cond_1e
    const/16 v1, 0x12

    invoke-static {v1}, Ll5/j0;->z(I)V

    throw v0

    :cond_24
    const/16 v1, 0x11

    invoke-static {v1}, Ll5/j0;->z(I)V

    throw v0

    :cond_2a
    const/16 v1, 0x10

    invoke-static {v1}, Ll5/j0;->z(I)V

    throw v0

    :cond_30
    const/16 v1, 0xf

    invoke-static {v1}, Ll5/j0;->z(I)V

    throw v0

    :cond_36
    const/16 v1, 0xe

    invoke-static {v1}, Ll5/j0;->z(I)V

    throw v0
.end method

.method public Q0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;Ljava/util/Map;)Ll5/j0;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/r0;",
            "Li5/r0;",
            "Ljava/util/List<",
            "Li5/r0;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;",
            "Ly6/l0;",
            "Li5/d0;",
            "Li5/t;",
            "Ljava/util/Map<",
            "+",
            "Li5/a$a<",
            "*>;*>;)",
            "Ll5/j0;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2e

    if-eqz p4, :cond_28

    if-eqz p5, :cond_22

    if-eqz p8, :cond_1c

    invoke-super/range {p0 .. p8}, Ll5/r;->G0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/r;

    if-eqz p9, :cond_1b

    invoke-interface {p9}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1b

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Ll5/r;->D:Ljava/util/Map;

    :cond_1b
    return-object p0

    :cond_1c
    const/16 p0, 0x16

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0

    :cond_22
    const/16 p0, 0x15

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0

    :cond_28
    const/16 p0, 0x14

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0

    :cond_2e
    const/16 p0, 0x13

    invoke-static {p0}, Ll5/j0;->z(I)V

    throw v0
.end method

.method public bridge synthetic a()Li5/a;
    .registers 1

    invoke-virtual {p0}, Ll5/j0;->O0()Li5/u0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/b;
    .registers 1

    invoke-virtual {p0}, Ll5/j0;->O0()Li5/u0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/j0;->O0()Li5/u0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/x;
    .registers 1

    invoke-virtual {p0}, Ll5/j0;->O0()Li5/u0;

    move-result-object p0

    return-object p0
.end method

.method public q()Li5/x$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/x$a<",
            "+",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Ll5/r;->q()Li5/x$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic x0()Li5/o;
    .registers 1

    invoke-virtual {p0}, Ll5/j0;->O0()Li5/u0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic z0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/x;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Ll5/j0;->M0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/u0;

    move-result-object p0

    return-object p0
.end method
