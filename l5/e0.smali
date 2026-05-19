.class public abstract Ll5/e0;
.super Ll5/n;
.source ""

# interfaces
.implements Li5/n0;


# instance fields
.field public e:Z

.field public final f:Z

.field public final g:Li5/d0;

.field public final h:Li5/o0;

.field public final i:Z

.field public final j:Li5/b$a;

.field public k:Li5/t;

.field public l:Li5/x;


# direct methods
.method public constructor <init>(Li5/d0;Li5/t;Li5/o0;Lj5/h;Lh6/f;ZZZLi5/b$a;Li5/v0;)V
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    if-eqz p2, :cond_2b

    if-eqz p4, :cond_26

    if-eqz p10, :cond_21

    invoke-interface {p3}, Li5/d1;->b()Li5/l;

    move-result-object v1

    invoke-direct {p0, v1, p4, p5, p10}, Ll5/n;-><init>(Li5/l;Lj5/h;Lh6/f;Li5/v0;)V

    iput-object v0, p0, Ll5/e0;->l:Li5/x;

    iput-object p1, p0, Ll5/e0;->g:Li5/d0;

    iput-object p2, p0, Ll5/e0;->k:Li5/t;

    iput-object p3, p0, Ll5/e0;->h:Li5/o0;

    iput-boolean p6, p0, Ll5/e0;->e:Z

    iput-boolean p7, p0, Ll5/e0;->f:Z

    iput-boolean p8, p0, Ll5/e0;->i:Z

    iput-object p9, p0, Ll5/e0;->j:Li5/b$a;

    return-void

    :cond_21
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/e0;->z(I)V

    throw v0

    :cond_26
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/e0;->z(I)V

    throw v0

    :cond_2b
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/e0;->z(I)V

    throw v0

    :cond_30
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/e0;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 7

    packed-switch p0, :pswitch_data_96

    :pswitch_3  #0x7
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6  #0x6, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_ae

    :pswitch_c  #0x7
    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e  #0x6, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_c6

    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_1c  #0x10
    const-string v5, "overriddenDescriptors"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_21  #0x7
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_26  #0x6, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf
    aput-object v3, v2, v4

    goto :goto_41

    :pswitch_29  #0x5
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_2e  #0x4
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_33  #0x3
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_38  #0x2
    const-string v5, "correspondingProperty"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_3d  #0x1
    const-string v5, "visibility"

    aput-object v5, v2, v4

    :goto_41
    const-string v4, "substitute"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_ea

    :pswitch_47  #0x7
    aput-object v3, v2, v5

    goto :goto_74

    :pswitch_4a  #0xf
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v5

    goto :goto_74

    :pswitch_4f  #0xe
    const-string v3, "getContextReceiverParameters"

    aput-object v3, v2, v5

    goto :goto_74

    :pswitch_54  #0xd
    const-string v3, "getCorrespondingProperty"

    aput-object v3, v2, v5

    goto :goto_74

    :pswitch_59  #0xc
    const-string v3, "getCorrespondingVariable"

    aput-object v3, v2, v5

    goto :goto_74

    :pswitch_5e  #0xb
    const-string v3, "getVisibility"

    aput-object v3, v2, v5

    goto :goto_74

    :pswitch_63  #0xa
    const-string v3, "getModality"

    aput-object v3, v2, v5

    goto :goto_74

    :pswitch_68  #0x9
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v5

    goto :goto_74

    :pswitch_6d  #0x8
    aput-object v4, v2, v5

    goto :goto_74

    :pswitch_70  #0x6
    const-string v3, "getKind"

    aput-object v3, v2, v5

    :goto_74
    packed-switch p0, :pswitch_data_102

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_83

    :pswitch_7c  #0x10
    const-string v3, "setOverriddenDescriptors"

    aput-object v3, v2, v1

    goto :goto_83

    :pswitch_81  #0x7
    aput-object v4, v2, v1

    :goto_83
    :pswitch_83  #0x6, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_11c

    :pswitch_8a  #0x7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_95

    :pswitch_90  #0x6, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_95
    throw p0

    :pswitch_data_96
    .packed-switch 0x6
        :pswitch_6  #00000006
        :pswitch_3  #00000007
        :pswitch_6  #00000008
        :pswitch_6  #00000009
        :pswitch_6  #0000000a
        :pswitch_6  #0000000b
        :pswitch_6  #0000000c
        :pswitch_6  #0000000d
        :pswitch_6  #0000000e
        :pswitch_6  #0000000f
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x6
        :pswitch_e  #00000006
        :pswitch_c  #00000007
        :pswitch_e  #00000008
        :pswitch_e  #00000009
        :pswitch_e  #0000000a
        :pswitch_e  #0000000b
        :pswitch_e  #0000000c
        :pswitch_e  #0000000d
        :pswitch_e  #0000000e
        :pswitch_e  #0000000f
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_3d  #00000001
        :pswitch_38  #00000002
        :pswitch_33  #00000003
        :pswitch_2e  #00000004
        :pswitch_29  #00000005
        :pswitch_26  #00000006
        :pswitch_21  #00000007
        :pswitch_26  #00000008
        :pswitch_26  #00000009
        :pswitch_26  #0000000a
        :pswitch_26  #0000000b
        :pswitch_26  #0000000c
        :pswitch_26  #0000000d
        :pswitch_26  #0000000e
        :pswitch_26  #0000000f
        :pswitch_1c  #00000010
    .end packed-switch

    :pswitch_data_ea
    .packed-switch 0x6
        :pswitch_70  #00000006
        :pswitch_47  #00000007
        :pswitch_6d  #00000008
        :pswitch_68  #00000009
        :pswitch_63  #0000000a
        :pswitch_5e  #0000000b
        :pswitch_59  #0000000c
        :pswitch_54  #0000000d
        :pswitch_4f  #0000000e
        :pswitch_4a  #0000000f
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x6
        :pswitch_83  #00000006
        :pswitch_81  #00000007
        :pswitch_83  #00000008
        :pswitch_83  #00000009
        :pswitch_83  #0000000a
        :pswitch_83  #0000000b
        :pswitch_83  #0000000c
        :pswitch_83  #0000000d
        :pswitch_83  #0000000e
        :pswitch_83  #0000000f
        :pswitch_7c  #00000010
    .end packed-switch

    :pswitch_data_11c
    .packed-switch 0x6
        :pswitch_90  #00000006
        :pswitch_8a  #00000007
        :pswitch_90  #00000008
        :pswitch_90  #00000009
        :pswitch_90  #0000000a
        :pswitch_90  #0000000b
        :pswitch_90  #0000000c
        :pswitch_90  #0000000d
        :pswitch_90  #0000000e
        :pswitch_90  #0000000f
    .end packed-switch
.end method


# virtual methods
.method public A0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/b;
    .registers 6

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Accessors must be copied by the corresponding property"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public C()Z
    .registers 1

    iget-boolean p0, p0, Ll5/e0;->e:Z

    return p0
.end method

.method public D0(Z)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Li5/n0;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ll5/e0;->T()Li5/o0;

    move-result-object p0

    invoke-interface {p0}, Li5/o0;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/o0;

    if-eqz p1, :cond_25

    invoke-interface {v1}, Li5/o0;->getGetter()Li5/p0;

    move-result-object v1

    goto :goto_29

    :cond_25
    invoke-interface {v1}, Li5/o0;->getSetter()Li5/q0;

    move-result-object v1

    :goto_29
    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2f
    return-object v0
.end method

.method public I()Li5/r0;
    .registers 1

    invoke-virtual {p0}, Ll5/e0;->T()Li5/o0;

    move-result-object p0

    invoke-interface {p0}, Li5/a;->I()Li5/r0;

    move-result-object p0

    return-object p0
.end method

.method public L()Li5/r0;
    .registers 1

    invoke-virtual {p0}, Ll5/e0;->T()Li5/o0;

    move-result-object p0

    invoke-interface {p0}, Li5/a;->L()Li5/r0;

    move-result-object p0

    return-object p0
.end method

.method public P(Li5/a$a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/a$a<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public T()Li5/o0;
    .registers 1

    iget-object p0, p0, Ll5/e0;->h:Li5/o0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xd

    invoke-static {p0}, Ll5/e0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public V()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic a()Li5/a;
    .registers 1

    invoke-virtual {p0}, Ll5/e0;->z0()Li5/n0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/b;
    .registers 1

    invoke-virtual {p0}, Ll5/e0;->z0()Li5/n0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/e0;->z0()Li5/n0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/x;
    .registers 1

    invoke-virtual {p0}, Ll5/e0;->z0()Li5/n0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/m;
    .registers 2

    invoke-virtual {p0, p1}, Ll5/e0;->c(Ly6/x1;)Li5/x;

    return-object p0
.end method

.method public c(Ly6/x1;)Li5/x;
    .registers 2

    if-eqz p1, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/e0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public c0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public f()Li5/b$a;
    .registers 1

    iget-object p0, p0, Ll5/e0;->j:Li5/b$a;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/e0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public f0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
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
    const/16 p0, 0x9

    invoke-static {p0}, Ll5/e0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getVisibility()Li5/t;
    .registers 1

    iget-object p0, p0, Ll5/e0;->k:Li5/t;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xb

    invoke-static {p0}, Ll5/e0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public isExternal()Z
    .registers 1

    iget-boolean p0, p0, Ll5/e0;->f:Z

    return p0
.end method

.method public isInfix()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInline()Z
    .registers 1

    iget-boolean p0, p0, Ll5/e0;->i:Z

    return p0
.end method

.method public isOperator()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSuspend()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public l0()Li5/x;
    .registers 1

    iget-object p0, p0, Ll5/e0;->l:Li5/x;

    return-object p0
.end method

.method public o()Li5/d0;
    .registers 1

    iget-object p0, p0, Ll5/e0;->g:Li5/d0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xa

    invoke-static {p0}, Ll5/e0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public q0()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/r0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ll5/e0;->T()Li5/o0;

    move-result-object p0

    invoke-interface {p0}, Li5/a;->q0()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/16 p0, 0xe

    invoke-static {p0}, Ll5/e0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public v0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
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
    const/16 p0, 0x10

    invoke-static {p0}, Ll5/e0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic x0()Li5/o;
    .registers 1

    invoke-virtual {p0}, Ll5/e0;->z0()Li5/n0;

    move-result-object p0

    return-object p0
.end method

.method public y()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public y0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract z0()Li5/n0;
.end method
