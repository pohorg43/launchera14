.class public Ll5/u;
.super Ll5/v;
.source ""


# instance fields
.field public final a:Ll5/v;

.field public final b:Ly6/x1;

.field public c:Ly6/x1;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ly6/j1;


# direct methods
.method public constructor <init>(Ll5/v;Ly6/x1;)V
    .registers 3

    invoke-direct {p0}, Ll5/v;-><init>()V

    iput-object p1, p0, Ll5/u;->a:Ll5/v;

    iput-object p2, p0, Ll5/u;->b:Ly6/x1;

    return-void
.end method

.method public static synthetic x0(I)V
    .registers 16

    const/16 v0, 0x17

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p0, v7, :cond_1f

    if-eq p0, v6, :cond_1f

    if-eq p0, v5, :cond_1f

    if-eq p0, v4, :cond_1f

    if-eq p0, v3, :cond_1f

    if-eq p0, v2, :cond_1f

    if-eq p0, v1, :cond_1f

    if-eq p0, v0, :cond_1f

    const-string v8, "@NotNull method %s.%s must not return null"

    goto :goto_21

    :cond_1f
    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_21
    if-eq p0, v7, :cond_33

    if-eq p0, v6, :cond_33

    if-eq p0, v5, :cond_33

    if-eq p0, v4, :cond_33

    if-eq p0, v3, :cond_33

    if-eq p0, v2, :cond_33

    if-eq p0, v1, :cond_33

    if-eq p0, v0, :cond_33

    move v9, v7

    goto :goto_34

    :cond_33
    move v9, v6

    :goto_34
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor"

    const/4 v11, 0x0

    if-eq p0, v7, :cond_5b

    if-eq p0, v6, :cond_56

    if-eq p0, v5, :cond_51

    if-eq p0, v4, :cond_56

    if-eq p0, v3, :cond_5b

    if-eq p0, v2, :cond_51

    if-eq p0, v1, :cond_56

    if-eq p0, v0, :cond_4c

    aput-object v10, v9, v11

    goto :goto_5f

    :cond_4c
    const-string v12, "substitutor"

    aput-object v12, v9, v11

    goto :goto_5f

    :cond_51
    const-string v12, "typeSubstitution"

    aput-object v12, v9, v11

    goto :goto_5f

    :cond_56
    const-string v12, "kotlinTypeRefiner"

    aput-object v12, v9, v11

    goto :goto_5f

    :cond_5b
    const-string v12, "typeArguments"

    aput-object v12, v9, v11

    :goto_5f
    const-string v11, "substitute"

    const-string v12, "getUnsubstitutedMemberScope"

    const-string v13, "getMemberScope"

    const/4 v14, 0x1

    packed-switch p0, :pswitch_data_fe

    const-string v10, "getTypeConstructor"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_6e  #0x1f
    const-string v10, "getSealedSubclasses"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_73  #0x1e
    const-string v10, "getDeclaredTypeParameters"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_78  #0x1d
    const-string v10, "getSource"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_7d  #0x1c
    const-string v10, "getUnsubstitutedInnerClassesScope"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_82  #0x1b
    const-string v10, "getVisibility"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_87  #0x1a
    const-string v10, "getModality"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_8c  #0x19
    const-string v10, "getKind"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_91  #0x18
    aput-object v11, v9, v14

    goto :goto_c4

    :pswitch_94  #0x16
    const-string v10, "getContainingDeclaration"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_99  #0x15
    const-string v10, "getOriginal"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_9e  #0x14
    const-string v10, "getName"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_a3  #0x13
    const-string v10, "getAnnotations"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_a8  #0x12
    const-string v10, "getConstructors"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_ad  #0x11
    const-string v10, "getContextReceivers"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_b2  #0x10
    const-string v10, "getDefaultType"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_b7  #0xf
    const-string v10, "getStaticScope"

    aput-object v10, v9, v14

    goto :goto_c4

    :pswitch_bc  #0xc, 0xe
    aput-object v12, v9, v14

    goto :goto_c4

    :pswitch_bf  #0x4, 0x7, 0x9, 0xb
    aput-object v13, v9, v14

    goto :goto_c4

    :pswitch_c2  #0x2, 0x3, 0x5, 0x6, 0x8, 0xa, 0xd, 0x17
    aput-object v10, v9, v14

    :goto_c4
    if-eq p0, v7, :cond_db

    if-eq p0, v6, :cond_db

    if-eq p0, v5, :cond_db

    if-eq p0, v4, :cond_db

    if-eq p0, v3, :cond_db

    if-eq p0, v2, :cond_db

    if-eq p0, v1, :cond_d8

    if-eq p0, v0, :cond_d5

    goto :goto_dd

    :cond_d5
    aput-object v11, v9, v7

    goto :goto_dd

    :cond_d8
    aput-object v12, v9, v7

    goto :goto_dd

    :cond_db
    aput-object v13, v9, v7

    :goto_dd
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq p0, v7, :cond_f7

    if-eq p0, v6, :cond_f7

    if-eq p0, v5, :cond_f7

    if-eq p0, v4, :cond_f7

    if-eq p0, v3, :cond_f7

    if-eq p0, v2, :cond_f7

    if-eq p0, v1, :cond_f7

    if-eq p0, v0, :cond_f7

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_fc

    :cond_f7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_fc
    throw p0

    nop

    :pswitch_data_fe
    .packed-switch 0x2
        :pswitch_c2  #00000002
        :pswitch_c2  #00000003
        :pswitch_bf  #00000004
        :pswitch_c2  #00000005
        :pswitch_c2  #00000006
        :pswitch_bf  #00000007
        :pswitch_c2  #00000008
        :pswitch_bf  #00000009
        :pswitch_c2  #0000000a
        :pswitch_bf  #0000000b
        :pswitch_bc  #0000000c
        :pswitch_c2  #0000000d
        :pswitch_bc  #0000000e
        :pswitch_b7  #0000000f
        :pswitch_b2  #00000010
        :pswitch_ad  #00000011
        :pswitch_a8  #00000012
        :pswitch_a3  #00000013
        :pswitch_9e  #00000014
        :pswitch_99  #00000015
        :pswitch_94  #00000016
        :pswitch_c2  #00000017
        :pswitch_91  #00000018
        :pswitch_8c  #00000019
        :pswitch_87  #0000001a
        :pswitch_82  #0000001b
        :pswitch_7d  #0000001c
        :pswitch_78  #0000001d
        :pswitch_73  #0000001e
        :pswitch_6e  #0000001f
    .end packed-switch
.end method


# virtual methods
.method public A()Li5/d;
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->A()Li5/d;

    move-result-object p0

    return-object p0
.end method

.method public B0()Z
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->B0()Z

    move-result p0

    return p0
.end method

.method public C0()Li5/r0;
    .registers 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

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

    invoke-virtual {p0, p1, v1}, Ll5/u;->z(Ly6/t1;Lz6/f;)Lr6/i;

    move-result-object p0

    if-eqz p0, :cond_13

    return-object p0

    :cond_13
    const/16 p0, 0xb

    invoke-static {p0}, Ll5/u;->x0(I)V

    throw v0

    :cond_19
    const/16 p0, 0xa

    invoke-static {p0}, Ll5/u;->x0(I)V

    throw v0
.end method

.method public R()Lr6/i;
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->R()Lr6/i;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x1c

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public S()Li5/c1;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/c1<",
            "Ly6/s0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {v0}, Li5/e;->S()Li5/c1;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    new-instance v1, Ll5/u$b;

    invoke-direct {v1, p0}, Ll5/u$b;-><init>(Ll5/u;)V

    const-string p0, "transform"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, v0, Li5/y;

    if-eqz p0, :cond_2a

    new-instance p0, Li5/y;

    check-cast v0, Li5/y;

    iget-object v2, v0, Li5/y;->a:Lh6/f;

    iget-object v0, v0, Li5/y;->b:Lc7/k;

    invoke-virtual {v1, v0}, Ll5/u$b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc7/k;

    invoke-direct {p0, v2, v0}, Li5/y;-><init>(Lh6/f;Lc7/k;)V

    goto :goto_67

    :cond_2a
    instance-of p0, v0, Li5/f0;

    if-eqz p0, :cond_68

    invoke-virtual {v0}, Li5/c1;->a()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/j;

    iget-object v3, v2, Lh4/j;->a:Ljava/lang/Object;

    check-cast v3, Lh6/f;

    iget-object v2, v2, Lh4/j;->b:Ljava/lang/Object;

    check-cast v2, Lc7/k;

    invoke-virtual {v1, v2}, Ll5/u$b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v4, Lh4/j;

    invoke-direct {v4, v3, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_62
    new-instance p0, Li5/f0;

    invoke-direct {p0, v0}, Li5/f0;-><init>(Ljava/util/List;)V

    :goto_67
    return-object p0

    :cond_68
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method

.method public U()Lr6/i;
    .registers 2

    iget-object v0, p0, Ll5/u;->a:Ll5/v;

    invoke-static {v0}, Lk6/i;->d(Li5/l;)Li5/e0;

    move-result-object v0

    invoke-static {v0}, Lo6/c;->j(Li5/e0;)Lz6/f;

    sget-object v0, Lz6/f$a;->a:Lz6/f$a;

    invoke-virtual {p0, v0}, Ll5/u;->d0(Lz6/f;)Lr6/i;

    move-result-object p0

    if-eqz p0, :cond_12

    return-object p0

    :cond_12
    const/16 p0, 0xc

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public V()Z
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/c0;->V()Z

    move-result p0

    return p0
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
    const/16 p0, 0x11

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public X()Z
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->X()Z

    move-result p0

    return p0
.end method

.method public a()Li5/e;
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->a()Li5/e;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x15

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic a()Li5/h;
    .registers 1

    invoke-virtual {p0}, Ll5/u;->a()Li5/e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/u;->a()Li5/e;

    move-result-object p0

    return-object p0
.end method

.method public a0()Z
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->a0()Z

    move-result p0

    return p0
.end method

.method public b()Li5/l;
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->b()Li5/l;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x16

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Ly6/x1;)Li5/m;
    .registers 4

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ly6/x1;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1f

    :cond_9
    new-instance v0, Ll5/u;

    invoke-virtual {p1}, Ly6/x1;->g()Ly6/t1;

    move-result-object p1

    invoke-virtual {p0}, Ll5/u;->z0()Ly6/x1;

    move-result-object v1

    invoke-virtual {v1}, Ly6/x1;->g()Ly6/t1;

    move-result-object v1

    invoke-static {p1, v1}, Ly6/x1;->f(Ly6/t1;Ly6/t1;)Ly6/x1;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ll5/u;-><init>(Ll5/v;Ly6/x1;)V

    move-object p0, v0

    :goto_1f
    return-object p0

    :cond_20
    const/16 p0, 0x17

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public d0(Lz6/f;)Lr6/i;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    iget-object v1, p0, Ll5/u;->a:Ll5/v;

    invoke-virtual {v1, p1}, Ll5/v;->d0(Lz6/f;)Lr6/i;

    move-result-object p1

    iget-object v1, p0, Ll5/u;->b:Ly6/x1;

    invoke-virtual {v1}, Ly6/x1;->h()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz p1, :cond_14

    return-object p1

    :cond_14
    const/16 p0, 0xe

    invoke-static {p0}, Ll5/u;->x0(I)V

    throw v0

    :cond_1a
    new-instance v0, Lr6/n;

    invoke-virtual {p0}, Ll5/u;->z0()Ly6/x1;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lr6/n;-><init>(Lr6/i;Ly6/x1;)V

    return-object v0

    :cond_24
    const/16 p0, 0xd

    invoke-static {p0}, Ll5/u;->x0(I)V

    throw v0
.end method

.method public f()Li5/f;
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->f()Li5/f;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x19

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public f0()Z
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/c0;->f0()Z

    move-result p0

    return p0
.end method

.method public g0()Lr6/i;
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->g0()Lr6/i;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0xf

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getAnnotations()Lj5/h;
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x13

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getName()Lh6/f;
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x14

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getSource()Li5/v0;
    .registers 1

    sget-object p0, Li5/v0;->a:Li5/v0;

    return-object p0
.end method

.method public getVisibility()Li5/t;
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->getVisibility()Li5/t;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x1b

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public h()Ly6/j1;
    .registers 7

    iget-object v0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {v0}, Li5/h;->h()Ly6/j1;

    move-result-object v0

    iget-object v1, p0, Ll5/u;->b:Ly6/x1;

    invoke-virtual {v1}, Ly6/x1;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/u;->x0(I)V

    throw v2

    :cond_17
    iget-object v1, p0, Ll5/u;->f:Ly6/j1;

    if-nez v1, :cond_51

    invoke-virtual {p0}, Ll5/u;->z0()Ly6/x1;

    move-result-object v1

    invoke-interface {v0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly6/l0;

    sget-object v5, Ly6/e2;->c:Ly6/e2;

    invoke-virtual {v1, v4, v5}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_46
    new-instance v0, Ly6/q;

    iget-object v1, p0, Ll5/u;->d:Ljava/util/List;

    sget-object v4, Lx6/e;->e:Lx6/m;

    invoke-direct {v0, p0, v1, v3, v4}, Ly6/q;-><init>(Li5/e;Ljava/util/List;Ljava/util/Collection;Lx6/m;)V

    iput-object v0, p0, Ll5/u;->f:Ly6/j1;

    :cond_51
    iget-object p0, p0, Ll5/u;->f:Ly6/j1;

    if-eqz p0, :cond_56

    return-object p0

    :cond_56
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/u;->x0(I)V

    throw v2
.end method

.method public h0()Li5/e;
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->h0()Li5/e;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {v0}, Li5/e;->i()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/d;

    invoke-interface {v2}, Li5/x;->q()Li5/x$a;

    move-result-object v3

    invoke-interface {v2}, Li5/d;->a()Li5/d;

    move-result-object v4

    invoke-interface {v3, v4}, Li5/x$a;->b(Li5/b;)Li5/x$a;

    move-result-object v3

    invoke-interface {v2}, Li5/c0;->o()Li5/d0;

    move-result-object v4

    invoke-interface {v3, v4}, Li5/x$a;->l(Li5/d0;)Li5/x$a;

    move-result-object v3

    invoke-interface {v2}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v4

    invoke-interface {v3, v4}, Li5/x$a;->q(Li5/t;)Li5/x$a;

    move-result-object v3

    invoke-interface {v2}, Li5/b;->f()Li5/b$a;

    move-result-object v2

    invoke-interface {v3, v2}, Li5/x$a;->i(Li5/b$a;)Li5/x$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Li5/x$a;->m(Z)Li5/x$a;

    move-result-object v2

    invoke-interface {v2}, Li5/x$a;->build()Li5/x;

    move-result-object v2

    check-cast v2, Li5/d;

    invoke-virtual {p0}, Ll5/u;->z0()Ly6/x1;

    move-result-object v3

    invoke-interface {v2, v3}, Li5/d;->c(Ly6/x1;)Li5/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_5a
    return-object v1
.end method

.method public isExternal()Z
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/c0;->isExternal()Z

    move-result p0

    return p0
.end method

.method public isInline()Z
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->isInline()Z

    move-result p0

    return p0
.end method

.method public isInner()Z
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/i;->isInner()Z

    move-result p0

    return p0
.end method

.method public isValue()Z
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->isValue()Z

    move-result p0

    return p0
.end method

.method public m()Ly6/s0;
    .registers 5

    invoke-virtual {p0}, Ll5/u;->h()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ly6/a2;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ll5/u;->getAnnotations()Lj5/h;

    move-result-object v1

    const-string v2, "annotations"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lj5/h;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object v1, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ly6/g1;->c:Ly6/g1;

    goto :goto_32

    :cond_23
    sget-object v2, Ly6/g1;->b:Ly6/g1$a;

    new-instance v3, Ly6/o;

    invoke-direct {v3, v1}, Ly6/o;-><init>(Lj5/h;)V

    invoke-static {v3}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ly6/g1$a;->c(Ljava/util/List;)Ly6/g1;

    move-result-object v1

    :goto_32
    invoke-virtual {p0}, Ll5/u;->h()Ly6/j1;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ll5/u;->U()Lr6/i;

    move-result-object p0

    invoke-static {v1, v2, v0, v3, p0}, Ly6/m0;->i(Ly6/g1;Ly6/j1;Ljava/util/List;ZLr6/i;)Ly6/s0;

    move-result-object p0

    return-object p0
.end method

.method public n()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ll5/u;->z0()Ly6/x1;

    iget-object p0, p0, Ll5/u;->e:Ljava/util/List;

    if-eqz p0, :cond_8

    return-object p0

    :cond_8
    const/16 p0, 0x1e

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public o()Li5/d0;
    .registers 1

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->o()Li5/d0;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x1a

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public v()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/e;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {p0}, Li5/e;->v()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x1f

    invoke-static {p0}, Ll5/u;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public z(Ly6/t1;Lz6/f;)Lr6/i;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_25

    iget-object v1, p0, Ll5/u;->a:Ll5/v;

    invoke-virtual {v1, p1, p2}, Ll5/v;->z(Ly6/t1;Lz6/f;)Lr6/i;

    move-result-object p1

    iget-object p2, p0, Ll5/u;->b:Ly6/x1;

    invoke-virtual {p2}, Ly6/x1;->h()Z

    move-result p2

    if-eqz p2, :cond_1b

    if-eqz p1, :cond_16

    return-object p1

    :cond_16
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/u;->x0(I)V

    throw v0

    :cond_1b
    new-instance p2, Lr6/n;

    invoke-virtual {p0}, Ll5/u;->z0()Ly6/x1;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lr6/n;-><init>(Lr6/i;Ly6/x1;)V

    return-object p2

    :cond_25
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/u;->x0(I)V

    throw v0

    :cond_2a
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/u;->x0(I)V

    throw v0
.end method

.method public final z0()Ly6/x1;
    .registers 4

    iget-object v0, p0, Ll5/u;->c:Ly6/x1;

    if-nez v0, :cond_41

    iget-object v0, p0, Ll5/u;->b:Ly6/x1;

    invoke-virtual {v0}, Ly6/x1;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Ll5/u;->b:Ly6/x1;

    iput-object v0, p0, Ll5/u;->c:Ly6/x1;

    goto :goto_41

    :cond_11
    iget-object v0, p0, Ll5/u;->a:Ll5/v;

    invoke-interface {v0}, Li5/h;->h()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ll5/u;->d:Ljava/util/List;

    iget-object v1, p0, Ll5/u;->b:Ly6/x1;

    invoke-virtual {v1}, Ly6/x1;->g()Ly6/t1;

    move-result-object v1

    iget-object v2, p0, Ll5/u;->d:Ljava/util/List;

    invoke-static {v0, v1, p0, v2}, Ly6/c2;->d(Ljava/util/List;Ly6/t1;Li5/l;Ljava/util/List;)Ly6/x1;

    move-result-object v0

    iput-object v0, p0, Ll5/u;->c:Ly6/x1;

    iget-object v0, p0, Ll5/u;->d:Ljava/util/List;

    new-instance v1, Ll5/u$a;

    invoke-direct {v1, p0}, Ll5/u$a;-><init>(Ll5/u;)V

    invoke-static {v0, v1}, Li4/v;->C(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ll5/u;->e:Ljava/util/List;

    :cond_41
    :goto_41
    iget-object p0, p0, Ll5/u;->c:Ly6/x1;

    return-object p0
.end method
