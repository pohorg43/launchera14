.class public Ll5/p;
.super Ll5/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/p$a;
    }
.end annotation


# instance fields
.field public final h:Ly6/j1;

.field public final i:Lr6/i;

.field public final j:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Lj5/h;


# direct methods
.method public constructor <init>(Lx6/m;Li5/e;Ly6/l0;Lh6/f;Lx6/i;Lj5/h;Li5/v0;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/m;",
            "Li5/e;",
            "Ly6/l0;",
            "Lh6/f;",
            "Lx6/i<",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;>;",
            "Lj5/h;",
            "Li5/v0;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    if-eqz p3, :cond_49

    if-eqz p4, :cond_43

    if-eqz p5, :cond_3d

    if-eqz p6, :cond_37

    if-eqz p7, :cond_31

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v1 .. v6}, Ll5/j;-><init>(Lx6/m;Li5/l;Lh6/f;Li5/v0;Z)V

    iput-object p6, p0, Ll5/p;->k:Lj5/h;

    new-instance p2, Ly6/q;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    invoke-direct {p2, p0, p4, p3, p1}, Ly6/q;-><init>(Li5/e;Ljava/util/List;Ljava/util/Collection;Lx6/m;)V

    iput-object p2, p0, Ll5/p;->h:Ly6/j1;

    new-instance p2, Ll5/p$a;

    invoke-direct {p2, p0, p1}, Ll5/p$a;-><init>(Ll5/p;Lx6/m;)V

    iput-object p2, p0, Ll5/p;->i:Lr6/i;

    iput-object p5, p0, Ll5/p;->j:Lx6/i;

    return-void

    :cond_31
    const/16 p0, 0xc

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0

    :cond_37
    const/16 p0, 0xb

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0

    :cond_3d
    const/16 p0, 0xa

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0

    :cond_43
    const/16 p0, 0x9

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0

    :cond_49
    const/16 p0, 0x8

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0

    :cond_4f
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0
.end method

.method public static D0(Lx6/m;Li5/e;Lh6/f;Lx6/i;Lj5/h;Li5/v0;)Ll5/p;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/m;",
            "Li5/e;",
            "Lh6/f;",
            "Lx6/i<",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;>;",
            "Lj5/h;",
            "Li5/v0;",
            ")",
            "Ll5/p;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_30

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_26

    if-eqz p3, :cond_21

    if-eqz p5, :cond_1c

    invoke-interface {p1}, Li5/e;->m()Ly6/s0;

    move-result-object v4

    new-instance v0, Ll5/p;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Ll5/p;-><init>(Lx6/m;Li5/e;Ly6/l0;Lh6/f;Lx6/i;Lj5/h;Li5/v0;)V

    return-object v0

    :cond_1c
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0

    :cond_21
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0

    :cond_26
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0

    :cond_2b
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0

    :cond_30
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0
.end method

.method public static synthetic x0(I)V
    .registers 7

    packed-switch p0, :pswitch_data_a0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6  #0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_b8

    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e  #0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_d0

    :pswitch_17  #0x6
    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_1c  #0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17
    aput-object v3, v2, v4

    goto :goto_46

    :pswitch_1f  #0xd
    const-string v5, "kotlinTypeRefiner"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_24  #0x8
    const-string v5, "supertype"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_29  #0x7
    const-string v5, "containingClass"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_2e  #0x5, 0xc
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_33  #0x4, 0xb
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_38  #0x3, 0xa
    const-string v5, "enumMemberNames"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_3d  #0x2, 0x9
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_46

    :pswitch_42  #0x1
    const-string v5, "enumClass"

    aput-object v5, v2, v4

    :goto_46
    const-string v4, "getUnsubstitutedMemberScope"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_102

    aput-object v3, v2, v5

    goto :goto_7e

    :pswitch_4f  #0x17
    const-string v3, "getSealedSubclasses"

    aput-object v3, v2, v5

    goto :goto_7e

    :pswitch_54  #0x16
    const-string v3, "getDeclaredTypeParameters"

    aput-object v3, v2, v5

    goto :goto_7e

    :pswitch_59  #0x15
    const-string v3, "getAnnotations"

    aput-object v3, v2, v5

    goto :goto_7e

    :pswitch_5e  #0x14
    const-string v3, "getVisibility"

    aput-object v3, v2, v5

    goto :goto_7e

    :pswitch_63  #0x13
    const-string v3, "getModality"

    aput-object v3, v2, v5

    goto :goto_7e

    :pswitch_68  #0x12
    const-string v3, "getKind"

    aput-object v3, v2, v5

    goto :goto_7e

    :pswitch_6d  #0x11
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v5

    goto :goto_7e

    :pswitch_72  #0x10
    const-string v3, "getConstructors"

    aput-object v3, v2, v5

    goto :goto_7e

    :pswitch_77  #0xf
    const-string v3, "getStaticScope"

    aput-object v3, v2, v5

    goto :goto_7e

    :pswitch_7c  #0xe
    aput-object v4, v2, v5

    :goto_7e
    packed-switch p0, :pswitch_data_11a

    const-string v3, "create"

    aput-object v3, v2, v1

    goto :goto_8d

    :pswitch_86  #0xd
    aput-object v4, v2, v1

    goto :goto_8d

    :pswitch_89  #0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc
    const-string v3, "<init>"

    aput-object v3, v2, v1

    :goto_8d
    :pswitch_8d  #0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_142

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9f

    :pswitch_9a  #0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_9f
    throw p0

    :pswitch_data_a0
    .packed-switch 0xe
        :pswitch_6  #0000000e
        :pswitch_6  #0000000f
        :pswitch_6  #00000010
        :pswitch_6  #00000011
        :pswitch_6  #00000012
        :pswitch_6  #00000013
        :pswitch_6  #00000014
        :pswitch_6  #00000015
        :pswitch_6  #00000016
        :pswitch_6  #00000017
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0xe
        :pswitch_e  #0000000e
        :pswitch_e  #0000000f
        :pswitch_e  #00000010
        :pswitch_e  #00000011
        :pswitch_e  #00000012
        :pswitch_e  #00000013
        :pswitch_e  #00000014
        :pswitch_e  #00000015
        :pswitch_e  #00000016
        :pswitch_e  #00000017
    .end packed-switch

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_3d  #00000002
        :pswitch_38  #00000003
        :pswitch_33  #00000004
        :pswitch_2e  #00000005
        :pswitch_17  #00000006
        :pswitch_29  #00000007
        :pswitch_24  #00000008
        :pswitch_3d  #00000009
        :pswitch_38  #0000000a
        :pswitch_33  #0000000b
        :pswitch_2e  #0000000c
        :pswitch_1f  #0000000d
        :pswitch_1c  #0000000e
        :pswitch_1c  #0000000f
        :pswitch_1c  #00000010
        :pswitch_1c  #00000011
        :pswitch_1c  #00000012
        :pswitch_1c  #00000013
        :pswitch_1c  #00000014
        :pswitch_1c  #00000015
        :pswitch_1c  #00000016
        :pswitch_1c  #00000017
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0xe
        :pswitch_7c  #0000000e
        :pswitch_77  #0000000f
        :pswitch_72  #00000010
        :pswitch_6d  #00000011
        :pswitch_68  #00000012
        :pswitch_63  #00000013
        :pswitch_5e  #00000014
        :pswitch_59  #00000015
        :pswitch_54  #00000016
        :pswitch_4f  #00000017
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x6
        :pswitch_89  #00000006
        :pswitch_89  #00000007
        :pswitch_89  #00000008
        :pswitch_89  #00000009
        :pswitch_89  #0000000a
        :pswitch_89  #0000000b
        :pswitch_89  #0000000c
        :pswitch_86  #0000000d
        :pswitch_8d  #0000000e
        :pswitch_8d  #0000000f
        :pswitch_8d  #00000010
        :pswitch_8d  #00000011
        :pswitch_8d  #00000012
        :pswitch_8d  #00000013
        :pswitch_8d  #00000014
        :pswitch_8d  #00000015
        :pswitch_8d  #00000016
        :pswitch_8d  #00000017
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0xe
        :pswitch_9a  #0000000e
        :pswitch_9a  #0000000f
        :pswitch_9a  #00000010
        :pswitch_9a  #00000011
        :pswitch_9a  #00000012
        :pswitch_9a  #00000013
        :pswitch_9a  #00000014
        :pswitch_9a  #00000015
        :pswitch_9a  #00000016
        :pswitch_9a  #00000017
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
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    iget-object p0, p0, Ll5/p;->i:Lr6/i;

    if-eqz p0, :cond_8

    return-object p0

    :cond_8
    const/16 p0, 0xe

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0

    :cond_e
    const/16 p0, 0xd

    invoke-static {p0}, Ll5/p;->x0(I)V

    throw v0
.end method

.method public f()Li5/f;
    .registers 1

    sget-object p0, Li5/f;->d:Li5/f;

    return-object p0
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

    iget-object p0, p0, Ll5/p;->k:Lj5/h;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x15

    invoke-static {p0}, Ll5/p;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getVisibility()Li5/t;
    .registers 1

    sget-object p0, Li5/s;->e:Li5/t;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x14

    invoke-static {p0}, Ll5/p;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public h()Ly6/j1;
    .registers 1

    iget-object p0, p0, Ll5/p;->h:Ly6/j1;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x11

    invoke-static {p0}, Ll5/p;->x0(I)V

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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/16 p0, 0x10

    invoke-static {p0}, Ll5/p;->x0(I)V

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
    const/16 p0, 0x16

    invoke-static {p0}, Ll5/p;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public o()Li5/d0;
    .registers 1

    sget-object p0, Li5/d0;->a:Li5/d0;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "enum entry "

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
    const/16 p0, 0x17

    invoke-static {p0}, Ll5/p;->x0(I)V

    const/4 p0, 0x0

    throw p0
.end method
