.class public abstract Ll5/d;
.super Ll5/m;
.source ""

# interfaces
.implements Li5/r0;


# direct methods
.method public constructor <init>(Lj5/h;)V
    .registers 3

    sget-object v0, Lh6/h;->e:Lh6/f;

    invoke-direct {p0, p1, v0}, Ll5/m;-><init>(Lj5/h;Lh6/f;)V

    return-void
.end method

.method public constructor <init>(Lj5/h;Lh6/f;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    if-eqz p2, :cond_9

    invoke-direct {p0, p1, p2}, Ll5/m;-><init>(Lj5/h;Lh6/f;)V

    return-void

    :cond_9
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/d;->z(I)V

    throw v0

    :cond_e
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/d;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 7

    packed-switch p0, :pswitch_data_76

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_8a

    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_9e

    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_28

    :pswitch_1c  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb
    aput-object v3, v2, v4

    goto :goto_28

    :pswitch_1f  #0x3
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    goto :goto_28

    :pswitch_24  #0x2
    const-string v5, "name"

    aput-object v5, v2, v4

    :goto_28
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_b6

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_2f  #0xb
    const-string v3, "getSource"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_34  #0xa
    const-string v3, "getOriginal"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_39  #0x9
    const-string v3, "getVisibility"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_3e  #0x8
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_43  #0x7
    const-string v3, "getValueParameters"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_48  #0x6
    const-string v3, "getType"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_4d  #0x5
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_52  #0x4
    const-string v3, "getContextReceiverParameters"

    aput-object v3, v2, v4

    :goto_56
    packed-switch p0, :pswitch_data_ca

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_62

    :pswitch_5e  #0x3
    const-string v3, "substitute"

    aput-object v3, v2, v1

    :goto_62
    :pswitch_62  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_e0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_74

    :pswitch_6f  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_74
    throw p0

    nop

    :pswitch_data_76
    .packed-switch 0x4
        :pswitch_6  #00000004
        :pswitch_6  #00000005
        :pswitch_6  #00000006
        :pswitch_6  #00000007
        :pswitch_6  #00000008
        :pswitch_6  #00000009
        :pswitch_6  #0000000a
        :pswitch_6  #0000000b
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x4
        :pswitch_e  #00000004
        :pswitch_e  #00000005
        :pswitch_e  #00000006
        :pswitch_e  #00000007
        :pswitch_e  #00000008
        :pswitch_e  #00000009
        :pswitch_e  #0000000a
        :pswitch_e  #0000000b
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x2
        :pswitch_24  #00000002
        :pswitch_1f  #00000003
        :pswitch_1c  #00000004
        :pswitch_1c  #00000005
        :pswitch_1c  #00000006
        :pswitch_1c  #00000007
        :pswitch_1c  #00000008
        :pswitch_1c  #00000009
        :pswitch_1c  #0000000a
        :pswitch_1c  #0000000b
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x4
        :pswitch_52  #00000004
        :pswitch_4d  #00000005
        :pswitch_48  #00000006
        :pswitch_43  #00000007
        :pswitch_3e  #00000008
        :pswitch_39  #00000009
        :pswitch_34  #0000000a
        :pswitch_2f  #0000000b
    .end packed-switch

    :pswitch_data_ca
    .packed-switch 0x3
        :pswitch_5e  #00000003
        :pswitch_62  #00000004
        :pswitch_62  #00000005
        :pswitch_62  #00000006
        :pswitch_62  #00000007
        :pswitch_62  #00000008
        :pswitch_62  #00000009
        :pswitch_62  #0000000a
        :pswitch_62  #0000000b
    .end packed-switch

    :pswitch_data_e0
    .packed-switch 0x4
        :pswitch_6f  #00000004
        :pswitch_6f  #00000005
        :pswitch_6f  #00000006
        :pswitch_6f  #00000007
        :pswitch_6f  #00000008
        :pswitch_6f  #00000009
        :pswitch_6f  #0000000a
        :pswitch_6f  #0000000b
    .end packed-switch
.end method


# virtual methods
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

    invoke-interface {p1, p0, p2}, Li5/n;->f(Li5/r0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public I()Li5/r0;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public L()Li5/r0;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Li5/a;
    .registers 1

    return-object p0
.end method

.method public a()Li5/l;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/m;
    .registers 2

    invoke-virtual {p0, p1}, Ll5/d;->c(Ly6/x1;)Li5/r0;

    move-result-object p0

    return-object p0
.end method

.method public c(Ly6/x1;)Li5/r0;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Ly6/x1;->h()Z

    move-result v1

    if-eqz v1, :cond_a

    return-object p0

    :cond_a
    invoke-interface {p0}, Li5/d1;->b()Li5/l;

    move-result-object v1

    instance-of v1, v1, Li5/e;

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Ll5/d;->getType()Ly6/l0;

    move-result-object v1

    sget-object v2, Ly6/e2;->e:Ly6/e2;

    invoke-virtual {p1, v1, v2}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object p1

    goto :goto_27

    :cond_1d
    invoke-virtual {p0}, Ll5/d;->getType()Ly6/l0;

    move-result-object v1

    sget-object v2, Ly6/e2;->c:Ly6/e2;

    invoke-virtual {p1, v1, v2}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object p1

    :goto_27
    if-nez p1, :cond_2a

    return-object v0

    :cond_2a
    invoke-virtual {p0}, Ll5/d;->getType()Ly6/l0;

    move-result-object v0

    if-ne p1, v0, :cond_31

    return-object p0

    :cond_31
    new-instance v0, Ll5/i0;

    invoke-interface {p0}, Li5/d1;->b()Li5/l;

    move-result-object v1

    new-instance v2, Ls6/j;

    invoke-direct {v2, p1}, Ls6/j;-><init>(Ly6/l0;)V

    invoke-virtual {p0}, Lj5/b;->getAnnotations()Lj5/h;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Ll5/i0;-><init>(Li5/l;Ls6/g;Lj5/h;)V

    return-object v0

    :cond_44
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/d;->z(I)V

    throw v0
.end method

.method public c0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public d()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Li5/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/16 p0, 0x8

    invoke-static {p0}, Ll5/d;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public g()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/d;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getReturnType()Ly6/l0;
    .registers 1

    invoke-virtual {p0}, Ll5/d;->getType()Ly6/l0;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Li5/v0;
    .registers 1

    sget-object p0, Li5/v0;->a:Li5/v0;

    return-object p0
.end method

.method public getType()Ly6/l0;
    .registers 1

    invoke-interface {p0}, Li5/r0;->getValue()Ls6/g;

    move-result-object p0

    invoke-interface {p0}, Ls6/g;->getType()Ly6/l0;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/d;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/d;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getVisibility()Li5/t;
    .registers 1

    sget-object p0, Li5/s;->f:Li5/t;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x9

    invoke-static {p0}, Ll5/d;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method
