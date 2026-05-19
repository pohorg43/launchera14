.class public abstract Ll5/p0;
.super Ll5/n;
.source ""

# interfaces
.implements Li5/f1;


# instance fields
.field public e:Ly6/l0;


# direct methods
.method public constructor <init>(Li5/l;Lj5/h;Lh6/f;Ly6/l0;Li5/v0;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_19

    if-eqz p3, :cond_14

    if-eqz p5, :cond_f

    invoke-direct {p0, p1, p2, p3, p5}, Ll5/n;-><init>(Li5/l;Lj5/h;Lh6/f;Li5/v0;)V

    iput-object p4, p0, Ll5/p0;->e:Ly6/l0;

    return-void

    :cond_f
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/p0;->z(I)V

    throw v0

    :cond_14
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/p0;->z(I)V

    throw v0

    :cond_19
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/p0;->z(I)V

    throw v0

    :cond_1e
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/p0;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 7

    packed-switch p0, :pswitch_data_70

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_82

    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_94

    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    goto :goto_2d

    :pswitch_1c  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa
    aput-object v3, v2, v4

    goto :goto_2d

    :pswitch_1f  #0x3
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2d

    :pswitch_24  #0x2
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2d

    :pswitch_29  #0x1
    const-string v5, "annotations"

    aput-object v5, v2, v4

    :goto_2d
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_ac

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_34  #0xa
    const-string v3, "getReturnType"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_39  #0x9
    const-string v3, "getContextReceiverParameters"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_3e  #0x8
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_43  #0x7
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_48  #0x6
    const-string v3, "getValueParameters"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_4d  #0x5
    const-string v3, "getOriginal"

    aput-object v3, v2, v4

    goto :goto_56

    :pswitch_52  #0x4
    const-string v3, "getType"

    aput-object v3, v2, v4

    :goto_56
    packed-switch p0, :pswitch_data_be

    const-string v3, "<init>"

    aput-object v3, v2, v1

    :pswitch_5d  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_d0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6f

    :pswitch_6a  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_6f
    throw p0

    :pswitch_data_70
    .packed-switch 0x4
        :pswitch_6  #00000004
        :pswitch_6  #00000005
        :pswitch_6  #00000006
        :pswitch_6  #00000007
        :pswitch_6  #00000008
        :pswitch_6  #00000009
        :pswitch_6  #0000000a
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x4
        :pswitch_e  #00000004
        :pswitch_e  #00000005
        :pswitch_e  #00000006
        :pswitch_e  #00000007
        :pswitch_e  #00000008
        :pswitch_e  #00000009
        :pswitch_e  #0000000a
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_24  #00000002
        :pswitch_1f  #00000003
        :pswitch_1c  #00000004
        :pswitch_1c  #00000005
        :pswitch_1c  #00000006
        :pswitch_1c  #00000007
        :pswitch_1c  #00000008
        :pswitch_1c  #00000009
        :pswitch_1c  #0000000a
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x4
        :pswitch_52  #00000004
        :pswitch_4d  #00000005
        :pswitch_48  #00000006
        :pswitch_43  #00000007
        :pswitch_3e  #00000008
        :pswitch_39  #00000009
        :pswitch_34  #0000000a
    .end packed-switch

    :pswitch_data_be
    .packed-switch 0x4
        :pswitch_5d  #00000004
        :pswitch_5d  #00000005
        :pswitch_5d  #00000006
        :pswitch_5d  #00000007
        :pswitch_5d  #00000008
        :pswitch_5d  #00000009
        :pswitch_5d  #0000000a
    .end packed-switch

    :pswitch_data_d0
    .packed-switch 0x4
        :pswitch_6a  #00000004
        :pswitch_6a  #00000005
        :pswitch_6a  #00000006
        :pswitch_6a  #00000007
        :pswitch_6a  #00000008
        :pswitch_6a  #00000009
        :pswitch_6a  #0000000a
    .end packed-switch
.end method


# virtual methods
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

.method public bridge synthetic a()Li5/a;
    .registers 1

    invoke-virtual {p0}, Ll5/p0;->z0()Li5/f1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/p0;->z0()Li5/f1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/m;
    .registers 2

    invoke-interface {p0, p1}, Li5/f1;->c(Ly6/x1;)Li5/f1;

    move-result-object p0

    return-object p0
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
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/p0;->z(I)V

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
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/p0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getReturnType()Ly6/l0;
    .registers 1

    invoke-virtual {p0}, Ll5/p0;->getType()Ly6/l0;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/16 p0, 0xa

    invoke-static {p0}, Ll5/p0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getType()Ly6/l0;
    .registers 1

    iget-object p0, p0, Ll5/p0;->e:Ly6/l0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x4

    invoke-static {p0}, Ll5/p0;->z(I)V

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
    const/16 p0, 0x8

    invoke-static {p0}, Ll5/p0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic x0()Li5/o;
    .registers 1

    invoke-virtual {p0}, Ll5/p0;->z0()Li5/f1;

    move-result-object p0

    return-object p0
.end method

.method public z0()Li5/f1;
    .registers 1

    return-object p0
.end method
