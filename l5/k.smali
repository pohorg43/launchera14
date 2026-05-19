.class public Ll5/k;
.super Ll5/j;
.source ""


# instance fields
.field public final h:Li5/d0;

.field public final i:Li5/f;

.field public final j:Ly6/j1;

.field public k:Lr6/i;

.field public l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Li5/d;",
            ">;"
        }
    .end annotation
.end field

.field public m:Li5/d;


# direct methods
.method public constructor <init>(Li5/l;Lh6/f;Li5/d0;Li5/f;Ljava/util/Collection;Li5/v0;ZLx6/m;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/l;",
            "Lh6/f;",
            "Li5/d0;",
            "Li5/f;",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;",
            "Li5/v0;",
            "Z",
            "Lx6/m;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_31

    if-eqz p2, :cond_2c

    if-eqz p5, :cond_27

    if-eqz p8, :cond_22

    move-object v0, p0

    move-object v1, p8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Ll5/j;-><init>(Lx6/m;Li5/l;Lh6/f;Li5/v0;Z)V

    iput-object p3, p0, Ll5/k;->h:Li5/d0;

    iput-object p4, p0, Ll5/k;->i:Li5/f;

    new-instance p1, Ly6/q;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p0, p2, p5, p8}, Ly6/q;-><init>(Li5/e;Ljava/util/List;Ljava/util/Collection;Lx6/m;)V

    iput-object p1, p0, Ll5/k;->j:Ly6/j1;

    return-void

    :cond_22
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/k;->x0(I)V

    throw v0

    :cond_27
    const/4 p0, 0x4

    invoke-static {p0}, Ll5/k;->x0(I)V

    throw v0

    :cond_2c
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/k;->x0(I)V

    throw v0

    :cond_31
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/k;->x0(I)V

    throw v0
.end method

.method public static synthetic x0(I)V
    .registers 7

    packed-switch p0, :pswitch_data_a6

    :pswitch_3  #0xc
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6  #0x9, 0xa, 0xb, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_c0

    :pswitch_c  #0xc
    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e  #0x9, 0xa, 0xb, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_da

    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_1c  #0xc
    const-string v5, "kotlinTypeRefiner"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_21  #0x9, 0xa, 0xb, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13
    aput-object v3, v2, v4

    goto :goto_4b

    :pswitch_24  #0x8
    const-string v5, "constructors"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_29  #0x7
    const-string v5, "unsubstitutedMemberScope"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_2e  #0x6
    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_33  #0x5
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_38  #0x4
    const-string v5, "supertypes"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_3d  #0x3
    const-string v5, "kind"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_42  #0x2
    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_47  #0x1
    const-string v5, "name"

    aput-object v5, v2, v4

    :goto_4b
    const-string v4, "getUnsubstitutedMemberScope"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_104

    :pswitch_51  #0xc
    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_54  #0x13
    const-string v3, "getSealedSubclasses"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_59  #0x12
    const-string v3, "getDeclaredTypeParameters"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_5e  #0x11
    const-string v3, "getVisibility"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_63  #0x10
    const-string v3, "getModality"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_68  #0xf
    const-string v3, "getKind"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_6d  #0xe
    const-string v3, "getStaticScope"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_72  #0xd
    aput-object v4, v2, v5

    goto :goto_83

    :pswitch_75  #0xb
    const-string v3, "getConstructors"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_7a  #0xa
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_7f  #0x9
    const-string v3, "getAnnotations"

    aput-object v3, v2, v5

    :goto_83
    packed-switch p0, :pswitch_data_11e

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_92

    :pswitch_8b  #0xc
    aput-object v4, v2, v1

    goto :goto_92

    :pswitch_8e  #0x7, 0x8
    const-string v3, "initialize"

    aput-object v3, v2, v1

    :goto_92
    :pswitch_92  #0x9, 0xa, 0xb, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_13c

    :pswitch_99  #0xc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a4

    :pswitch_9f  #0x9, 0xa, 0xb, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_a4
    throw p0

    nop

    :pswitch_data_a6
    .packed-switch 0x9
        :pswitch_6  #00000009
        :pswitch_6  #0000000a
        :pswitch_6  #0000000b
        :pswitch_3  #0000000c
        :pswitch_6  #0000000d
        :pswitch_6  #0000000e
        :pswitch_6  #0000000f
        :pswitch_6  #00000010
        :pswitch_6  #00000011
        :pswitch_6  #00000012
        :pswitch_6  #00000013
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x9
        :pswitch_e  #00000009
        :pswitch_e  #0000000a
        :pswitch_e  #0000000b
        :pswitch_c  #0000000c
        :pswitch_e  #0000000d
        :pswitch_e  #0000000e
        :pswitch_e  #0000000f
        :pswitch_e  #00000010
        :pswitch_e  #00000011
        :pswitch_e  #00000012
        :pswitch_e  #00000013
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_47  #00000001
        :pswitch_42  #00000002
        :pswitch_3d  #00000003
        :pswitch_38  #00000004
        :pswitch_33  #00000005
        :pswitch_2e  #00000006
        :pswitch_29  #00000007
        :pswitch_24  #00000008
        :pswitch_21  #00000009
        :pswitch_21  #0000000a
        :pswitch_21  #0000000b
        :pswitch_1c  #0000000c
        :pswitch_21  #0000000d
        :pswitch_21  #0000000e
        :pswitch_21  #0000000f
        :pswitch_21  #00000010
        :pswitch_21  #00000011
        :pswitch_21  #00000012
        :pswitch_21  #00000013
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x9
        :pswitch_7f  #00000009
        :pswitch_7a  #0000000a
        :pswitch_75  #0000000b
        :pswitch_51  #0000000c
        :pswitch_72  #0000000d
        :pswitch_6d  #0000000e
        :pswitch_68  #0000000f
        :pswitch_63  #00000010
        :pswitch_5e  #00000011
        :pswitch_59  #00000012
        :pswitch_54  #00000013
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x7
        :pswitch_8e  #00000007
        :pswitch_8e  #00000008
        :pswitch_92  #00000009
        :pswitch_92  #0000000a
        :pswitch_92  #0000000b
        :pswitch_8b  #0000000c
        :pswitch_92  #0000000d
        :pswitch_92  #0000000e
        :pswitch_92  #0000000f
        :pswitch_92  #00000010
        :pswitch_92  #00000011
        :pswitch_92  #00000012
        :pswitch_92  #00000013
    .end packed-switch

    :pswitch_data_13c
    .packed-switch 0x9
        :pswitch_9f  #00000009
        :pswitch_9f  #0000000a
        :pswitch_9f  #0000000b
        :pswitch_99  #0000000c
        :pswitch_9f  #0000000d
        :pswitch_9f  #0000000e
        :pswitch_9f  #0000000f
        :pswitch_9f  #00000010
        :pswitch_9f  #00000011
        :pswitch_9f  #00000012
        :pswitch_9f  #00000013
    .end packed-switch
.end method


# virtual methods
.method public A()Li5/d;
    .registers 1

    iget-object p0, p0, Ll5/k;->m:Li5/d;

    return-object p0
.end method

.method public B0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final D0(Lr6/i;Ljava/util/Set;Li5/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/i;",
            "Ljava/util/Set<",
            "Li5/d;",
            ">;",
            "Li5/d;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_9

    iput-object p1, p0, Ll5/k;->k:Lr6/i;

    iput-object p2, p0, Ll5/k;->l:Ljava/util/Set;

    iput-object p3, p0, Ll5/k;->m:Li5/d;

    return-void

    :cond_9
    const/16 p0, 0x8

    invoke-static {p0}, Ll5/k;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public S()Li5/c1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/c1<",
            "Ly6/s0;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public V()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public X()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public a0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public d0(Lz6/f;)Lr6/i;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    iget-object p0, p0, Ll5/k;->k:Lr6/i;

    if-eqz p0, :cond_8

    return-object p0

    :cond_8
    const/16 p0, 0xd

    invoke-static {p0}, Ll5/k;->x0(I)V

    throw v0

    :cond_e
    const/16 p0, 0xc

    invoke-static {p0}, Ll5/k;->x0(I)V

    throw v0
.end method

.method public f()Li5/f;
    .registers 1

    iget-object p0, p0, Ll5/k;->i:Li5/f;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xf

    invoke-static {p0}, Ll5/k;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public f0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public g0()Lr6/i;
    .registers 1

    sget-object p0, Lr6/i$b;->b:Lr6/i$b;

    return-object p0
.end method

.method public getAnnotations()Lj5/h;
    .registers 1

    sget p0, Lj5/h;->I:I

    sget-object p0, Lj5/h$a;->b:Lj5/h;

    return-object p0
.end method

.method public getVisibility()Li5/t;
    .registers 1

    sget-object p0, Li5/s;->e:Li5/t;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x11

    invoke-static {p0}, Ll5/k;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public h()Ly6/j1;
    .registers 1

    iget-object p0, p0, Ll5/k;->j:Ly6/j1;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xa

    invoke-static {p0}, Ll5/k;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public h0()Li5/e;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public i()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Li5/d;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/k;->l:Ljava/util/Set;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xb

    invoke-static {p0}, Ll5/k;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public isInline()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInner()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isValue()Z
    .registers 1

    const/4 p0, 0x0

    return p0
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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/16 p0, 0x12

    invoke-static {p0}, Ll5/k;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public o()Li5/d0;
    .registers 1

    iget-object p0, p0, Ll5/k;->h:Li5/d0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x10

    invoke-static {p0}, Ll5/k;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "class "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ll5/b;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/16 p0, 0x13

    invoke-static {p0}, Ll5/k;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method
