.class public Ll5/i;
.super Ll5/r;
.source ""

# interfaces
.implements Li5/d;


# instance fields
.field public final E:Z


# direct methods
.method public constructor <init>(Li5/e;Li5/k;Lj5/h;ZLi5/b$a;Li5/v0;)V
    .registers 15

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    if-eqz p3, :cond_21

    if-eqz p5, :cond_1c

    if-eqz p6, :cond_17

    sget-object v5, Lh6/h;->f:Lh6/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Ll5/r;-><init>(Li5/l;Li5/x;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)V

    iput-boolean p4, p0, Ll5/i;->E:Z

    return-void

    :cond_17
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/i;->z(I)V

    throw v0

    :cond_1c
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/i;->z(I)V

    throw v0

    :cond_21
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/i;->z(I)V

    throw v0

    :cond_26
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/i;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 9

    const/16 v0, 0x1b

    const/16 v1, 0x15

    if-eq p0, v1, :cond_e

    if-eq p0, v0, :cond_e

    packed-switch p0, :pswitch_data_bc

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_10

    :cond_e
    :pswitch_e  #0xf, 0x10, 0x11, 0x12, 0x13
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_10
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1a

    if-eq p0, v0, :cond_1a

    packed-switch p0, :pswitch_data_ca

    const/4 v4, 0x3

    goto :goto_1b

    :cond_1a
    :pswitch_1a  #0xf, 0x10, 0x11, 0x12, 0x13
    move v4, v3

    :goto_1b
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_d8

    :pswitch_23  #0x4, 0x7
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_28  #0x17
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_2d  #0x16
    const-string v7, "overriddenDescriptors"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_32  #0x14
    const-string v7, "originalSubstitutor"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_37  #0xf, 0x10, 0x11, 0x12, 0x13, 0x15, 0x1b
    aput-object v5, v4, v6

    goto :goto_57

    :pswitch_3a  #0xc
    const-string v7, "typeParameterDescriptors"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_3f  #0xb, 0xe
    const-string v7, "visibility"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_44  #0xa, 0xd
    const-string v7, "unsubstitutedValueParameters"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_49  #0x3, 0x6, 0x9, 0x1a
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_4e  #0x2, 0x18
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_57

    :pswitch_53  #0x1, 0x5, 0x8, 0x19
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_57
    const/4 v6, 0x1

    if-eq p0, v1, :cond_7b

    if-eq p0, v0, :cond_76

    packed-switch p0, :pswitch_data_112

    aput-object v5, v4, v6

    goto :goto_7f

    :pswitch_62  #0x13
    const-string v5, "getOriginal"

    aput-object v5, v4, v6

    goto :goto_7f

    :pswitch_67  #0x12
    const-string v5, "getConstructedClass"

    aput-object v5, v4, v6

    goto :goto_7f

    :pswitch_6c  #0x11
    const-string v5, "getContainingDeclaration"

    aput-object v5, v4, v6

    goto :goto_7f

    :pswitch_71  #0xf, 0x10
    const-string v5, "calculateContextReceiverParameters"

    aput-object v5, v4, v6

    goto :goto_7f

    :cond_76
    const-string v5, "copy"

    aput-object v5, v4, v6

    goto :goto_7f

    :cond_7b
    const-string v5, "getOverriddenDescriptors"

    aput-object v5, v4, v6

    :goto_7f
    packed-switch p0, :pswitch_data_120

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_a4

    :pswitch_87  #0x17, 0x18, 0x19, 0x1a
    const-string v5, "createSubstitutedCopy"

    aput-object v5, v4, v3

    goto :goto_a4

    :pswitch_8c  #0x16
    const-string v5, "setOverriddenDescriptors"

    aput-object v5, v4, v3

    goto :goto_a4

    :pswitch_91  #0x14
    const-string v5, "substitute"

    aput-object v5, v4, v3

    goto :goto_a4

    :pswitch_96  #0xa, 0xb, 0xc, 0xd, 0xe
    const-string v5, "initialize"

    aput-object v5, v4, v3

    goto :goto_a4

    :pswitch_9b  #0x7, 0x8, 0x9
    const-string v5, "createSynthesized"

    aput-object v5, v4, v3

    goto :goto_a4

    :pswitch_a0  #0x4, 0x5, 0x6
    const-string v5, "create"

    aput-object v5, v4, v3

    :goto_a4
    :pswitch_a4  #0xf, 0x10, 0x11, 0x12, 0x13, 0x15, 0x1b
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_b5

    if-eq p0, v0, :cond_b5

    packed-switch p0, :pswitch_data_154

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_ba

    :cond_b5
    :pswitch_b5  #0xf, 0x10, 0x11, 0x12, 0x13
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_ba
    throw p0

    nop

    :pswitch_data_bc
    .packed-switch 0xf
        :pswitch_e  #0000000f
        :pswitch_e  #00000010
        :pswitch_e  #00000011
        :pswitch_e  #00000012
        :pswitch_e  #00000013
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0xf
        :pswitch_1a  #0000000f
        :pswitch_1a  #00000010
        :pswitch_1a  #00000011
        :pswitch_1a  #00000012
        :pswitch_1a  #00000013
    .end packed-switch

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_53  #00000001
        :pswitch_4e  #00000002
        :pswitch_49  #00000003
        :pswitch_23  #00000004
        :pswitch_53  #00000005
        :pswitch_49  #00000006
        :pswitch_23  #00000007
        :pswitch_53  #00000008
        :pswitch_49  #00000009
        :pswitch_44  #0000000a
        :pswitch_3f  #0000000b
        :pswitch_3a  #0000000c
        :pswitch_44  #0000000d
        :pswitch_3f  #0000000e
        :pswitch_37  #0000000f
        :pswitch_37  #00000010
        :pswitch_37  #00000011
        :pswitch_37  #00000012
        :pswitch_37  #00000013
        :pswitch_32  #00000014
        :pswitch_37  #00000015
        :pswitch_2d  #00000016
        :pswitch_28  #00000017
        :pswitch_4e  #00000018
        :pswitch_53  #00000019
        :pswitch_49  #0000001a
        :pswitch_37  #0000001b
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0xf
        :pswitch_71  #0000000f
        :pswitch_71  #00000010
        :pswitch_6c  #00000011
        :pswitch_67  #00000012
        :pswitch_62  #00000013
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x4
        :pswitch_a0  #00000004
        :pswitch_a0  #00000005
        :pswitch_a0  #00000006
        :pswitch_9b  #00000007
        :pswitch_9b  #00000008
        :pswitch_9b  #00000009
        :pswitch_96  #0000000a
        :pswitch_96  #0000000b
        :pswitch_96  #0000000c
        :pswitch_96  #0000000d
        :pswitch_96  #0000000e
        :pswitch_a4  #0000000f
        :pswitch_a4  #00000010
        :pswitch_a4  #00000011
        :pswitch_a4  #00000012
        :pswitch_a4  #00000013
        :pswitch_91  #00000014
        :pswitch_a4  #00000015
        :pswitch_8c  #00000016
        :pswitch_87  #00000017
        :pswitch_87  #00000018
        :pswitch_87  #00000019
        :pswitch_87  #0000001a
        :pswitch_a4  #0000001b
    .end packed-switch

    :pswitch_data_154
    .packed-switch 0xf
        :pswitch_b5  #0000000f
        :pswitch_b5  #00000010
        :pswitch_b5  #00000011
        :pswitch_b5  #00000012
        :pswitch_b5  #00000013
    .end packed-switch
.end method


# virtual methods
.method public A0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/b;
    .registers 6

    invoke-super/range {p0 .. p5}, Ll5/r;->z0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/x;

    move-result-object p0

    check-cast p0, Li5/d;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x1b

    invoke-static {p0}, Ll5/i;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic D0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/r;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Ll5/i;->M0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/i;

    move-result-object p0

    return-object p0
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

    invoke-interface {p1, p0, p2}, Li5/n;->e(Li5/k;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public M0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/i;
    .registers 14

    const/4 p2, 0x0

    if-eqz p1, :cond_5a

    if-eqz p3, :cond_54

    if-eqz p5, :cond_4e

    if-eqz p6, :cond_48

    sget-object v5, Li5/b$a;->a:Li5/b$a;

    if-eq p3, v5, :cond_39

    sget-object p2, Li5/b$a;->d:Li5/b$a;

    if-ne p3, p2, :cond_12

    goto :goto_39

    :cond_12
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Attempt at creating a constructor that is not a declaration: \ncopy from: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nnewOwner: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nkind: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_39
    :goto_39
    new-instance p2, Ll5/i;

    move-object v1, p1

    check-cast v1, Li5/e;

    iget-boolean v4, p0, Ll5/i;->E:Z

    move-object v0, p2

    move-object v2, p0

    move-object v3, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ll5/i;-><init>(Li5/e;Li5/k;Lj5/h;ZLi5/b$a;Li5/v0;)V

    return-object p2

    :cond_48
    const/16 p0, 0x1a

    invoke-static {p0}, Ll5/i;->z(I)V

    throw p2

    :cond_4e
    const/16 p0, 0x19

    invoke-static {p0}, Ll5/i;->z(I)V

    throw p2

    :cond_54
    const/16 p0, 0x18

    invoke-static {p0}, Ll5/i;->z(I)V

    throw p2

    :cond_5a
    const/16 p0, 0x17

    invoke-static {p0}, Ll5/i;->z(I)V

    throw p2
.end method

.method public N0()Li5/e;
    .registers 1

    invoke-super {p0}, Ll5/n;->b()Li5/l;

    move-result-object p0

    check-cast p0, Li5/e;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x11

    invoke-static {p0}, Ll5/i;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public O0(Ljava/util/List;Li5/t;)Ll5/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;",
            "Li5/t;",
            ")",
            "Ll5/i;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    if-eqz p2, :cond_11

    invoke-virtual {p0}, Ll5/i;->N0()Li5/e;

    move-result-object v0

    invoke-interface {v0}, Li5/e;->n()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ll5/i;->P0(Ljava/util/List;Li5/t;Ljava/util/List;)Ll5/i;

    return-object p0

    :cond_11
    const/16 p0, 0xe

    invoke-static {p0}, Ll5/i;->z(I)V

    throw v0

    :cond_17
    const/16 p0, 0xd

    invoke-static {p0}, Ll5/i;->z(I)V

    throw v0
.end method

.method public P0(Ljava/util/List;Li5/t;Ljava/util/List;)Ll5/i;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;",
            "Li5/t;",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;)",
            "Ll5/i;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_62

    if-eqz p2, :cond_5c

    if-eqz p3, :cond_56

    const/4 v2, 0x0

    invoke-virtual {p0}, Ll5/i;->N0()Li5/e;

    move-result-object v1

    invoke-interface {v1}, Li5/i;->isInner()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Li5/e;->b()Li5/l;

    move-result-object v1

    instance-of v3, v1, Li5/e;

    if-eqz v3, :cond_22

    check-cast v1, Li5/e;

    invoke-interface {v1}, Li5/e;->C0()Li5/r0;

    move-result-object v1

    move-object v3, v1

    goto :goto_23

    :cond_22
    move-object v3, v0

    :goto_23
    invoke-virtual {p0}, Ll5/i;->N0()Li5/e;

    move-result-object v1

    invoke-interface {v1}, Li5/e;->W()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-interface {v1}, Li5/e;->W()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_38

    goto :goto_44

    :cond_38
    const/16 p0, 0xf

    invoke-static {p0}, Ll5/i;->z(I)V

    throw v0

    :cond_3e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_50

    :goto_44
    move-object v4, v1

    const/4 v7, 0x0

    sget-object v8, Li5/d0;->a:Li5/d0;

    move-object v1, p0

    move-object v5, p3

    move-object v6, p1

    move-object v9, p2

    invoke-virtual/range {v1 .. v9}, Ll5/r;->G0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/r;

    return-object p0

    :cond_50
    const/16 p0, 0x10

    invoke-static {p0}, Ll5/i;->z(I)V

    throw v0

    :cond_56
    const/16 p0, 0xc

    invoke-static {p0}, Ll5/i;->z(I)V

    throw v0

    :cond_5c
    const/16 p0, 0xb

    invoke-static {p0}, Ll5/i;->z(I)V

    throw v0

    :cond_62
    const/16 p0, 0xa

    invoke-static {p0}, Ll5/i;->z(I)V

    throw v0
.end method

.method public Y()Z
    .registers 1

    iget-boolean p0, p0, Ll5/i;->E:Z

    return p0
.end method

.method public Z()Li5/e;
    .registers 1

    invoke-virtual {p0}, Ll5/i;->N0()Li5/e;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/16 p0, 0x12

    invoke-static {p0}, Ll5/i;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic a()Li5/a;
    .registers 1

    invoke-virtual {p0}, Ll5/i;->a()Li5/d;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/b;
    .registers 1

    invoke-virtual {p0}, Ll5/i;->a()Li5/d;

    move-result-object p0

    return-object p0
.end method

.method public a()Li5/d;
    .registers 1

    invoke-super {p0}, Ll5/r;->a()Li5/x;

    move-result-object p0

    check-cast p0, Li5/d;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x13

    invoke-static {p0}, Ll5/i;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/i;->a()Li5/d;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/x;
    .registers 1

    invoke-virtual {p0}, Ll5/i;->a()Li5/d;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b()Li5/i;
    .registers 1

    invoke-virtual {p0}, Ll5/i;->N0()Li5/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/i;->N0()Li5/e;

    move-result-object p0

    return-object p0
.end method

.method public c(Ly6/x1;)Li5/d;
    .registers 2

    if-eqz p1, :cond_9

    invoke-super {p0, p1}, Ll5/r;->c(Ly6/x1;)Li5/x;

    move-result-object p0

    check-cast p0, Li5/d;

    return-object p0

    :cond_9
    const/16 p0, 0x14

    invoke-static {p0}, Ll5/i;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/k;
    .registers 2

    invoke-virtual {p0, p1}, Ll5/i;->c(Ly6/x1;)Li5/d;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/m;
    .registers 2

    invoke-virtual {p0, p1}, Ll5/i;->c(Ly6/x1;)Li5/d;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/x;
    .registers 2

    invoke-virtual {p0, p1}, Ll5/i;->c(Ly6/x1;)Li5/d;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Li5/x;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/16 p0, 0x15

    invoke-static {p0}, Ll5/i;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public w0(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Li5/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/16 p0, 0x16

    invoke-static {p0}, Ll5/i;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic x0()Li5/o;
    .registers 1

    invoke-virtual {p0}, Ll5/i;->a()Li5/d;

    move-result-object p0

    return-object p0
.end method

.method public z0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/x;
    .registers 6

    invoke-super/range {p0 .. p5}, Ll5/r;->z0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/x;

    move-result-object p0

    check-cast p0, Li5/d;

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x1b

    invoke-static {p0}, Ll5/i;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method
