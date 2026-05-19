.class public Ll5/b0;
.super Ll5/j;
.source ""


# instance fields
.field public final h:Li5/f;

.field public final i:Z

.field public j:Li5/d0;

.field public k:Li5/t;

.field public l:Ly6/j1;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lx6/m;


# direct methods
.method public constructor <init>(Li5/l;Li5/f;ZZLh6/f;Li5/v0;Lx6/m;)V
    .registers 14

    const/4 v0, 0x0

    if-eqz p5, :cond_21

    if-eqz p7, :cond_1c

    move-object v0, p0

    move-object v1, p7

    move-object v2, p1

    move-object v3, p5

    move-object v4, p6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ll5/j;-><init>(Lx6/m;Li5/l;Lh6/f;Li5/v0;Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ll5/b0;->n:Ljava/util/Collection;

    iput-object p7, p0, Ll5/b0;->o:Lx6/m;

    iput-object p2, p0, Ll5/b0;->h:Li5/f;

    iput-boolean p3, p0, Ll5/b0;->i:Z

    return-void

    :cond_1c
    const/4 p0, 0x4

    invoke-static {p0}, Ll5/b0;->x0(I)V

    throw v0

    :cond_21
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/b0;->x0(I)V

    throw v0
.end method

.method public static synthetic x0(I)V
    .registers 7

    packed-switch p0, :pswitch_data_b4

    :pswitch_3  #0x6, 0x9, 0xc, 0xe, 0x10
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6  #0x5, 0x7, 0x8, 0xa, 0xb, 0xd, 0xf, 0x11, 0x12, 0x13
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_d6

    :pswitch_c  #0x6, 0x9, 0xc, 0xe, 0x10
    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e  #0x5, 0x7, 0x8, 0xa, 0xb, 0xd, 0xf, 0x11, 0x12, 0x13
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_f8

    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_1c  #0x10
    const-string v5, "kotlinTypeRefiner"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_21  #0xe
    const-string v5, "typeParameters"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_26  #0xc
    const-string v5, "supertype"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_2b  #0x9
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_30  #0x6
    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_35  #0x5, 0x7, 0x8, 0xa, 0xb, 0xd, 0xf, 0x11, 0x12, 0x13
    aput-object v3, v2, v4

    goto :goto_4b

    :pswitch_38  #0x4
    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_3d  #0x3
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_42  #0x2
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_4b

    :pswitch_47  #0x1
    const-string v5, "kind"

    aput-object v5, v2, v4

    :goto_4b
    const-string v4, "getUnsubstitutedMemberScope"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_122

    :pswitch_51  #0x6, 0x9, 0xc, 0xe, 0x10
    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_54  #0x13
    const-string v3, "getSealedSubclasses"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_59  #0x12
    const-string v3, "getStaticScope"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_5e  #0x11
    aput-object v4, v2, v5

    goto :goto_83

    :pswitch_61  #0xf
    const-string v3, "getDeclaredTypeParameters"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_66  #0xd
    const-string v3, "getConstructors"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_6b  #0xb
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_70  #0xa
    const-string v3, "getVisibility"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_75  #0x8
    const-string v3, "getKind"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_7a  #0x7
    const-string v3, "getModality"

    aput-object v3, v2, v5

    goto :goto_83

    :pswitch_7f  #0x5
    const-string v3, "getAnnotations"

    aput-object v3, v2, v5

    :goto_83
    packed-switch p0, :pswitch_data_144

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_a1

    :pswitch_8b  #0x10
    aput-object v4, v2, v1

    goto :goto_a1

    :pswitch_8e  #0xe
    const-string v3, "setTypeParameterDescriptors"

    aput-object v3, v2, v1

    goto :goto_a1

    :pswitch_93  #0xc
    const-string v3, "addSupertype"

    aput-object v3, v2, v1

    goto :goto_a1

    :pswitch_98  #0x9
    const-string v3, "setVisibility"

    aput-object v3, v2, v1

    goto :goto_a1

    :pswitch_9d  #0x6
    const-string v3, "setModality"

    aput-object v3, v2, v1

    :goto_a1
    :pswitch_a1  #0x5, 0x7, 0x8, 0xa, 0xb, 0xd, 0xf, 0x11, 0x12, 0x13
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_166

    :pswitch_a8  #0x6, 0x9, 0xc, 0xe, 0x10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b3

    :pswitch_ae  #0x5, 0x7, 0x8, 0xa, 0xb, 0xd, 0xf, 0x11, 0x12, 0x13
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_b3
    throw p0

    :pswitch_data_b4
    .packed-switch 0x5
        :pswitch_6  #00000005
        :pswitch_3  #00000006
        :pswitch_6  #00000007
        :pswitch_6  #00000008
        :pswitch_3  #00000009
        :pswitch_6  #0000000a
        :pswitch_6  #0000000b
        :pswitch_3  #0000000c
        :pswitch_6  #0000000d
        :pswitch_3  #0000000e
        :pswitch_6  #0000000f
        :pswitch_3  #00000010
        :pswitch_6  #00000011
        :pswitch_6  #00000012
        :pswitch_6  #00000013
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x5
        :pswitch_e  #00000005
        :pswitch_c  #00000006
        :pswitch_e  #00000007
        :pswitch_e  #00000008
        :pswitch_c  #00000009
        :pswitch_e  #0000000a
        :pswitch_e  #0000000b
        :pswitch_c  #0000000c
        :pswitch_e  #0000000d
        :pswitch_c  #0000000e
        :pswitch_e  #0000000f
        :pswitch_c  #00000010
        :pswitch_e  #00000011
        :pswitch_e  #00000012
        :pswitch_e  #00000013
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_47  #00000001
        :pswitch_42  #00000002
        :pswitch_3d  #00000003
        :pswitch_38  #00000004
        :pswitch_35  #00000005
        :pswitch_30  #00000006
        :pswitch_35  #00000007
        :pswitch_35  #00000008
        :pswitch_2b  #00000009
        :pswitch_35  #0000000a
        :pswitch_35  #0000000b
        :pswitch_26  #0000000c
        :pswitch_35  #0000000d
        :pswitch_21  #0000000e
        :pswitch_35  #0000000f
        :pswitch_1c  #00000010
        :pswitch_35  #00000011
        :pswitch_35  #00000012
        :pswitch_35  #00000013
    .end packed-switch

    :pswitch_data_122
    .packed-switch 0x5
        :pswitch_7f  #00000005
        :pswitch_51  #00000006
        :pswitch_7a  #00000007
        :pswitch_75  #00000008
        :pswitch_51  #00000009
        :pswitch_70  #0000000a
        :pswitch_6b  #0000000b
        :pswitch_51  #0000000c
        :pswitch_66  #0000000d
        :pswitch_51  #0000000e
        :pswitch_61  #0000000f
        :pswitch_51  #00000010
        :pswitch_5e  #00000011
        :pswitch_59  #00000012
        :pswitch_54  #00000013
    .end packed-switch

    :pswitch_data_144
    .packed-switch 0x5
        :pswitch_a1  #00000005
        :pswitch_9d  #00000006
        :pswitch_a1  #00000007
        :pswitch_a1  #00000008
        :pswitch_98  #00000009
        :pswitch_a1  #0000000a
        :pswitch_a1  #0000000b
        :pswitch_93  #0000000c
        :pswitch_a1  #0000000d
        :pswitch_8e  #0000000e
        :pswitch_a1  #0000000f
        :pswitch_8b  #00000010
        :pswitch_a1  #00000011
        :pswitch_a1  #00000012
        :pswitch_a1  #00000013
    .end packed-switch

    :pswitch_data_166
    .packed-switch 0x5
        :pswitch_ae  #00000005
        :pswitch_a8  #00000006
        :pswitch_ae  #00000007
        :pswitch_ae  #00000008
        :pswitch_a8  #00000009
        :pswitch_ae  #0000000a
        :pswitch_ae  #0000000b
        :pswitch_a8  #0000000c
        :pswitch_ae  #0000000d
        :pswitch_a8  #0000000e
        :pswitch_ae  #0000000f
        :pswitch_a8  #00000010
        :pswitch_ae  #00000011
        :pswitch_ae  #00000012
        :pswitch_ae  #00000013
    .end packed-switch
.end method


# virtual methods
.method public A()Li5/d;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public B0()Z
    .registers 1

    const/4 p0, 0x0

    return p0
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
    .registers 2

    if-eqz p1, :cond_5

    sget-object p0, Lr6/i$b;->b:Lr6/i$b;

    return-object p0

    :cond_5
    const/16 p0, 0x10

    invoke-static {p0}, Ll5/b0;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public f()Li5/f;
    .registers 1

    iget-object p0, p0, Ll5/b0;->h:Li5/f;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x8

    invoke-static {p0}, Ll5/b0;->x0(I)V

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

    iget-object p0, p0, Ll5/b0;->k:Li5/t;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xa

    invoke-static {p0}, Ll5/b0;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public h()Ly6/j1;
    .registers 1

    iget-object p0, p0, Ll5/b0;->l:Ly6/j1;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xb

    invoke-static {p0}, Ll5/b0;->x0(I)V

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

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/16 p0, 0xd

    invoke-static {p0}, Ll5/b0;->x0(I)V

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

    iget-boolean p0, p0, Ll5/b0;->i:Z

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

    iget-object p0, p0, Ll5/b0;->m:Ljava/util/List;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xf

    invoke-static {p0}, Ll5/b0;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public o()Li5/d0;
    .registers 1

    iget-object p0, p0, Ll5/b0;->j:Li5/d0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/b0;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ll5/m;->d0(Li5/l;)Ljava/lang/String;

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

    invoke-static {p0}, Ll5/b0;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method
