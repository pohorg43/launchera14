.class public abstract Ll5/b;
.super Ll5/v;
.source ""


# instance fields
.field public final a:Lh6/f;

.field public final b:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ly6/s0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Lr6/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Li5/r0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx6/m;Lh6/f;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_31

    if-eqz p2, :cond_2c

    invoke-direct {p0}, Ll5/v;-><init>()V

    iput-object p2, p0, Ll5/b;->a:Lh6/f;

    new-instance p2, Ll5/b$a;

    invoke-direct {p2, p0}, Ll5/b$a;-><init>(Ll5/b;)V

    invoke-interface {p1, p2}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Ll5/b;->b:Lx6/i;

    new-instance p2, Ll5/b$b;

    invoke-direct {p2, p0}, Ll5/b$b;-><init>(Ll5/b;)V

    invoke-interface {p1, p2}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Ll5/b;->c:Lx6/i;

    new-instance p2, Ll5/b$c;

    invoke-direct {p2, p0}, Ll5/b$c;-><init>(Ll5/b;)V

    invoke-interface {p1, p2}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Ll5/b;->d:Lx6/i;

    return-void

    :cond_2c
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/b;->x0(I)V

    throw v0

    :cond_31
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/b;->x0(I)V

    throw v0
.end method

.method public static synthetic x0(I)V
    .registers 20

    move/from16 v0, p0

    const/16 v1, 0x14

    const/16 v2, 0x13

    const/16 v3, 0x11

    const/16 v4, 0x10

    const/16 v5, 0xe

    const/16 v6, 0xc

    const/16 v7, 0x9

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v0, v12, :cond_30

    if-eq v0, v11, :cond_30

    if-eq v0, v10, :cond_30

    if-eq v0, v9, :cond_30

    if-eq v0, v8, :cond_30

    if-eq v0, v7, :cond_30

    if-eq v0, v6, :cond_30

    if-eq v0, v5, :cond_30

    if-eq v0, v4, :cond_30

    if-eq v0, v3, :cond_30

    if-eq v0, v2, :cond_30

    if-eq v0, v1, :cond_30

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_32

    :cond_30
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_32
    if-eq v0, v12, :cond_4c

    if-eq v0, v11, :cond_4c

    if-eq v0, v10, :cond_4c

    if-eq v0, v9, :cond_4c

    if-eq v0, v8, :cond_4c

    if-eq v0, v7, :cond_4c

    if-eq v0, v6, :cond_4c

    if-eq v0, v5, :cond_4c

    if-eq v0, v4, :cond_4c

    if-eq v0, v3, :cond_4c

    if-eq v0, v2, :cond_4c

    if-eq v0, v1, :cond_4c

    move v14, v11

    goto :goto_4d

    :cond_4c
    move v14, v12

    :goto_4d
    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor"

    const/16 v16, 0x0

    packed-switch v0, :pswitch_data_f4

    const-string v17, "storageManager"

    aput-object v17, v14, v16

    goto :goto_76

    :pswitch_5b  #0x12
    const-string v17, "substitutor"

    aput-object v17, v14, v16

    goto :goto_76

    :pswitch_60  #0xa, 0xf
    const-string v17, "typeSubstitution"

    aput-object v17, v14, v16

    goto :goto_76

    :pswitch_65  #0x8, 0xb
    const-string v17, "kotlinTypeRefiner"

    aput-object v17, v14, v16

    goto :goto_76

    :pswitch_6a  #0x7, 0xd
    const-string v17, "typeArguments"

    aput-object v17, v14, v16

    goto :goto_76

    :pswitch_6f  #0x2, 0x3, 0x4, 0x5, 0x6, 0x9, 0xc, 0xe, 0x10, 0x11, 0x13, 0x14
    aput-object v15, v14, v16

    goto :goto_76

    :pswitch_72  #0x1
    const-string v17, "name"

    aput-object v17, v14, v16

    :goto_76
    const-string v16, "substitute"

    const-string v17, "getMemberScope"

    const/16 v18, 0x1

    if-eq v0, v12, :cond_bb

    if-eq v0, v11, :cond_b6

    if-eq v0, v10, :cond_b1

    if-eq v0, v9, :cond_ac

    if-eq v0, v8, :cond_a7

    if-eq v0, v7, :cond_a4

    if-eq v0, v6, :cond_a4

    if-eq v0, v5, :cond_a4

    if-eq v0, v4, :cond_a4

    if-eq v0, v3, :cond_9f

    if-eq v0, v2, :cond_9c

    if-eq v0, v1, :cond_97

    aput-object v15, v14, v18

    goto :goto_bf

    :cond_97
    const-string v15, "getDefaultType"

    aput-object v15, v14, v18

    goto :goto_bf

    :cond_9c
    aput-object v16, v14, v18

    goto :goto_bf

    :cond_9f
    const-string v15, "getUnsubstitutedMemberScope"

    aput-object v15, v14, v18

    goto :goto_bf

    :cond_a4
    aput-object v17, v14, v18

    goto :goto_bf

    :cond_a7
    const-string v15, "getContextReceivers"

    aput-object v15, v14, v18

    goto :goto_bf

    :cond_ac
    const-string v15, "getThisAsReceiverParameter"

    aput-object v15, v14, v18

    goto :goto_bf

    :cond_b1
    const-string v15, "getUnsubstitutedInnerClassesScope"

    aput-object v15, v14, v18

    goto :goto_bf

    :cond_b6
    const-string v15, "getOriginal"

    aput-object v15, v14, v18

    goto :goto_bf

    :cond_bb
    const-string v15, "getName"

    aput-object v15, v14, v18

    :goto_bf
    packed-switch v0, :pswitch_data_120

    const-string v15, "<init>"

    aput-object v15, v14, v12

    goto :goto_cc

    :pswitch_c7  #0x12
    aput-object v16, v14, v12

    goto :goto_cc

    :pswitch_ca  #0x7, 0x8, 0xa, 0xb, 0xd, 0xf
    aput-object v17, v14, v12

    :goto_cc
    :pswitch_cc  #0x2, 0x3, 0x4, 0x5, 0x6, 0x9, 0xc, 0xe, 0x10, 0x11, 0x13, 0x14
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_ee

    if-eq v0, v11, :cond_ee

    if-eq v0, v10, :cond_ee

    if-eq v0, v9, :cond_ee

    if-eq v0, v8, :cond_ee

    if-eq v0, v7, :cond_ee

    if-eq v0, v6, :cond_ee

    if-eq v0, v5, :cond_ee

    if-eq v0, v4, :cond_ee

    if-eq v0, v3, :cond_ee

    if-eq v0, v2, :cond_ee

    if-eq v0, v1, :cond_ee

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_f3

    :cond_ee
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_f3
    throw v0

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_72  #00000001
        :pswitch_6f  #00000002
        :pswitch_6f  #00000003
        :pswitch_6f  #00000004
        :pswitch_6f  #00000005
        :pswitch_6f  #00000006
        :pswitch_6a  #00000007
        :pswitch_65  #00000008
        :pswitch_6f  #00000009
        :pswitch_60  #0000000a
        :pswitch_65  #0000000b
        :pswitch_6f  #0000000c
        :pswitch_6a  #0000000d
        :pswitch_6f  #0000000e
        :pswitch_60  #0000000f
        :pswitch_6f  #00000010
        :pswitch_6f  #00000011
        :pswitch_5b  #00000012
        :pswitch_6f  #00000013
        :pswitch_6f  #00000014
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x2
        :pswitch_cc  #00000002
        :pswitch_cc  #00000003
        :pswitch_cc  #00000004
        :pswitch_cc  #00000005
        :pswitch_cc  #00000006
        :pswitch_ca  #00000007
        :pswitch_ca  #00000008
        :pswitch_cc  #00000009
        :pswitch_ca  #0000000a
        :pswitch_ca  #0000000b
        :pswitch_cc  #0000000c
        :pswitch_ca  #0000000d
        :pswitch_cc  #0000000e
        :pswitch_ca  #0000000f
        :pswitch_cc  #00000010
        :pswitch_cc  #00000011
        :pswitch_c7  #00000012
        :pswitch_cc  #00000013
        :pswitch_cc  #00000014
    .end packed-switch
.end method


# virtual methods
.method public C0()Li5/r0;
    .registers 1

    iget-object p0, p0, Ll5/b;->d:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/r0;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/b;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public F(Li5/n;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/n<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Li5/n;->j(Li5/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public Q(Ly6/t1;)Lr6/i;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    invoke-static {p0}, Lk6/i;->d(Li5/l;)Li5/e0;

    move-result-object v1

    invoke-static {v1}, Lo6/c;->j(Li5/e0;)Lz6/f;

    sget-object v1, Lz6/f$a;->a:Lz6/f$a;

    invoke-virtual {p0, p1, v1}, Ll5/b;->z(Ly6/t1;Lz6/f;)Lr6/i;

    move-result-object p0

    if-eqz p0, :cond_13

    return-object p0

    :cond_13
    const/16 p0, 0x10

    invoke-static {p0}, Ll5/b;->x0(I)V

    throw v0

    :cond_19
    const/16 p0, 0xf

    invoke-static {p0}, Ll5/b;->x0(I)V

    throw v0
.end method

.method public R()Lr6/i;
    .registers 1

    iget-object p0, p0, Ll5/b;->c:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr6/i;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/4 p0, 0x4

    invoke-static {p0}, Ll5/b;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public U()Lr6/i;
    .registers 2

    invoke-static {p0}, Lk6/i;->d(Li5/l;)Li5/e0;

    move-result-object v0

    invoke-static {v0}, Lo6/c;->j(Li5/e0;)Lz6/f;

    sget-object v0, Lz6/f$a;->a:Lz6/f$a;

    invoke-virtual {p0, v0}, Ll5/v;->d0(Lz6/f;)Lr6/i;

    move-result-object p0

    if-eqz p0, :cond_10

    return-object p0

    :cond_10
    const/16 p0, 0x11

    invoke-static {p0}, Ll5/b;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public W()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/r0;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/b;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public a()Li5/e;
    .registers 1

    return-object p0
.end method

.method public a()Li5/h;
    .registers 1

    return-object p0
.end method

.method public a()Li5/l;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/m;
    .registers 2

    invoke-virtual {p0, p1}, Ll5/b;->z0(Ly6/x1;)Li5/e;

    move-result-object p0

    return-object p0
.end method

.method public getName()Lh6/f;
    .registers 1

    iget-object p0, p0, Ll5/b;->a:Lh6/f;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/b;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public m()Ly6/s0;
    .registers 1

    iget-object p0, p0, Ll5/b;->b:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/s0;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/16 p0, 0x14

    invoke-static {p0}, Ll5/b;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public z(Ly6/t1;Lz6/f;)Lr6/i;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    if-eqz p2, :cond_26

    invoke-virtual {p1}, Ly6/t1;->f()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0, p2}, Ll5/v;->d0(Lz6/f;)Lr6/i;

    move-result-object p0

    if-eqz p0, :cond_12

    return-object p0

    :cond_12
    const/16 p0, 0xc

    invoke-static {p0}, Ll5/b;->x0(I)V

    throw v0

    :cond_18
    invoke-static {p1}, Ly6/x1;->e(Ly6/t1;)Ly6/x1;

    move-result-object p1

    new-instance v0, Lr6/n;

    invoke-virtual {p0, p2}, Ll5/v;->d0(Lz6/f;)Lr6/i;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lr6/n;-><init>(Lr6/i;Ly6/x1;)V

    return-object v0

    :cond_26
    const/16 p0, 0xb

    invoke-static {p0}, Ll5/b;->x0(I)V

    throw v0

    :cond_2c
    const/16 p0, 0xa

    invoke-static {p0}, Ll5/b;->x0(I)V

    throw v0
.end method

.method public z0(Ly6/x1;)Li5/e;
    .registers 3

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ly6/x1;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Ll5/u;

    invoke-direct {v0, p0, p1}, Ll5/u;-><init>(Ll5/v;Ly6/x1;)V

    return-object v0

    :cond_f
    const/16 p0, 0x12

    invoke-static {p0}, Ll5/b;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method
