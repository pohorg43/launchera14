.class public Ll5/n0;
.super Ll5/g;
.source ""


# instance fields
.field public final k:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ly6/l0;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation
.end field

.field public m:Z


# direct methods
.method public constructor <init>(Li5/l;Lj5/h;ZLy6/e2;Lh6/f;ILi5/v0;Lkotlin/jvm/functions/Function1;Li5/y0;Lx6/m;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/l;",
            "Lj5/h;",
            "Z",
            "Ly6/e2;",
            "Lh6/f;",
            "I",
            "Li5/v0;",
            "Lkotlin/jvm/functions/Function1<",
            "Ly6/l0;",
            "Ljava/lang/Void;",
            ">;",
            "Li5/y0;",
            "Lx6/m;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    const/4 v0, 0x0

    if-eqz p1, :cond_56

    if-eqz p2, :cond_50

    if-eqz p4, :cond_4a

    if-eqz p5, :cond_44

    if-eqz p7, :cond_3e

    if-eqz p9, :cond_38

    if-eqz p10, :cond_32

    move-object v0, p0

    move-object/from16 v1, p10

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p5

    move-object v5, p4

    move v6, p3

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Ll5/g;-><init>(Lx6/m;Li5/l;Lj5/h;Lh6/f;Ly6/e2;ZILi5/v0;Li5/y0;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v10, Ll5/n0;->l:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, v10, Ll5/n0;->m:Z

    move-object/from16 v0, p8

    iput-object v0, v10, Ll5/n0;->k:Lkotlin/jvm/functions/Function1;

    return-void

    :cond_32
    const/16 v1, 0x19

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0

    :cond_38
    const/16 v1, 0x18

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0

    :cond_3e
    const/16 v1, 0x17

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0

    :cond_44
    const/16 v1, 0x16

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0

    :cond_4a
    const/16 v1, 0x15

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0

    :cond_50
    const/16 v1, 0x14

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0

    :cond_56
    const/16 v1, 0x13

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0
.end method

.method public static H0(Li5/l;Lj5/h;ZLy6/e2;Lh6/f;ILi5/v0;Lx6/m;)Ll5/n0;
    .registers 20

    const/4 v0, 0x0

    if-eqz p0, :cond_38

    if-eqz p1, :cond_33

    if-eqz p3, :cond_2d

    if-eqz p4, :cond_27

    if-eqz p7, :cond_21

    const/4 v9, 0x0

    sget-object v10, Li5/y0$a;->a:Li5/y0$a;

    new-instance v0, Ll5/n0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Ll5/n0;-><init>(Li5/l;Lj5/h;ZLy6/e2;Lh6/f;ILi5/v0;Lkotlin/jvm/functions/Function1;Li5/y0;Lx6/m;)V

    return-object v0

    :cond_21
    const/16 v1, 0xb

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0

    :cond_27
    const/16 v1, 0x9

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0

    :cond_2d
    const/16 v1, 0x8

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0

    :cond_33
    const/4 v1, 0x7

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0

    :cond_38
    const/4 v1, 0x6

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0
.end method

.method public static I0(Li5/l;Lj5/h;ZLy6/e2;Lh6/f;ILx6/m;)Li5/a1;
    .registers 17

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    const/4 v9, 0x1

    if-eqz p3, :cond_2c

    if-eqz p6, :cond_27

    sget-object v7, Li5/v0;->a:Li5/v0;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v8, p6

    invoke-static/range {v1 .. v8}, Ll5/n0;->H0(Li5/l;Lj5/h;ZLy6/e2;Lh6/f;ILi5/v0;Lx6/m;)Ll5/n0;

    move-result-object v0

    invoke-static {p0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object v1

    invoke-virtual {v1}, Lf5/g;->n()Ly6/s0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll5/n0;->F0(Ly6/l0;)V

    invoke-virtual {v0}, Ll5/n0;->G0()V

    iput-boolean v9, v0, Ll5/n0;->m:Z

    return-object v0

    :cond_27
    const/4 v1, 0x4

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0

    :cond_2c
    const/4 v1, 0x2

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0

    :cond_31
    const/4 v1, 0x0

    invoke-static {v1}, Ll5/n0;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 9

    const/16 v0, 0x1c

    const/4 v1, 0x5

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

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_8e

    :pswitch_1c  #0x6, 0xc, 0x13
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_21  #0x1b
    const-string v7, "type"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_26  #0x1a
    const-string v7, "bound"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_2b  #0x18
    const-string v7, "supertypeLoopsChecker"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_30  #0x11
    const-string v7, "supertypeLoopsResolver"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_35  #0xa, 0x10, 0x17
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_3a  #0x5, 0x1c
    aput-object v5, v4, v6

    goto :goto_50

    :pswitch_3d  #0x4, 0xb, 0x12, 0x19
    const-string v7, "storageManager"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_42  #0x3, 0x9, 0xf, 0x16
    const-string v7, "name"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_47  #0x2, 0x8, 0xe, 0x15
    const-string v7, "variance"

    aput-object v7, v4, v6

    goto :goto_50

    :pswitch_4c  #0x1, 0x7, 0xd, 0x14
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_50
    const-string v6, "createWithDefaultBound"

    const/4 v7, 0x1

    if-eq p0, v1, :cond_5f

    if-eq p0, v0, :cond_5a

    aput-object v5, v4, v7

    goto :goto_61

    :cond_5a
    const-string v5, "resolveUpperBounds"

    aput-object v5, v4, v7

    goto :goto_61

    :cond_5f
    aput-object v6, v4, v7

    :goto_61
    packed-switch p0, :pswitch_data_ca

    aput-object v6, v4, v3

    goto :goto_7a

    :pswitch_67  #0x1b
    const-string v5, "reportSupertypeLoopError"

    aput-object v5, v4, v3

    goto :goto_7a

    :pswitch_6c  #0x1a
    const-string v5, "addUpperBound"

    aput-object v5, v4, v3

    goto :goto_7a

    :pswitch_71  #0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19
    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_7a

    :pswitch_76  #0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12
    const-string v5, "createForFurtherModification"

    aput-object v5, v4, v3

    :goto_7a
    :pswitch_7a  #0x5, 0x1c
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_88

    if-eq p0, v0, :cond_88

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8d

    :cond_88
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_8d
    throw p0

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_4c  #00000001
        :pswitch_47  #00000002
        :pswitch_42  #00000003
        :pswitch_3d  #00000004
        :pswitch_3a  #00000005
        :pswitch_1c  #00000006
        :pswitch_4c  #00000007
        :pswitch_47  #00000008
        :pswitch_42  #00000009
        :pswitch_35  #0000000a
        :pswitch_3d  #0000000b
        :pswitch_1c  #0000000c
        :pswitch_4c  #0000000d
        :pswitch_47  #0000000e
        :pswitch_42  #0000000f
        :pswitch_35  #00000010
        :pswitch_30  #00000011
        :pswitch_3d  #00000012
        :pswitch_1c  #00000013
        :pswitch_4c  #00000014
        :pswitch_47  #00000015
        :pswitch_42  #00000016
        :pswitch_35  #00000017
        :pswitch_2b  #00000018
        :pswitch_3d  #00000019
        :pswitch_26  #0000001a
        :pswitch_21  #0000001b
        :pswitch_3a  #0000001c
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x5
        :pswitch_7a  #00000005
        :pswitch_76  #00000006
        :pswitch_76  #00000007
        :pswitch_76  #00000008
        :pswitch_76  #00000009
        :pswitch_76  #0000000a
        :pswitch_76  #0000000b
        :pswitch_76  #0000000c
        :pswitch_76  #0000000d
        :pswitch_76  #0000000e
        :pswitch_76  #0000000f
        :pswitch_76  #00000010
        :pswitch_76  #00000011
        :pswitch_76  #00000012
        :pswitch_71  #00000013
        :pswitch_71  #00000014
        :pswitch_71  #00000015
        :pswitch_71  #00000016
        :pswitch_71  #00000017
        :pswitch_71  #00000018
        :pswitch_71  #00000019
        :pswitch_6c  #0000001a
        :pswitch_67  #0000001b
        :pswitch_7a  #0000001c
    .end packed-switch
.end method


# virtual methods
.method public D0(Ly6/l0;)V
    .registers 2

    if-eqz p1, :cond_b

    iget-object p0, p0, Ll5/n0;->k:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_b
    const/16 p0, 0x1b

    invoke-static {p0}, Ll5/n0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public E0()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Ll5/n0;->m:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Ll5/n0;->l:Ljava/util/List;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x1c

    invoke-static {p0}, Ll5/n0;->z(I)V

    const/4 p0, 0x0

    throw p0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Type parameter descriptor is not initialized: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ll5/n0;->J0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public F0(Ly6/l0;)V
    .registers 3

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ll5/n0;->G0()V

    invoke-static {p1}, Ly0/b;->c(Ly6/l0;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_11

    :cond_c
    iget-object p0, p0, Ll5/n0;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    return-void

    :cond_12
    const/16 p0, 0x1a

    invoke-static {p0}, Ll5/n0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final G0()V
    .registers 3

    iget-boolean v0, p0, Ll5/n0;->m:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Type parameter descriptor is already initialized: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ll5/n0;->J0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final J0()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " declared in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ll5/n;->b()Li5/l;

    move-result-object p0

    invoke-static {p0}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
