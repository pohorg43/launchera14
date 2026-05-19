.class public abstract Ll5/r;
.super Ll5/n;
.source ""

# interfaces
.implements Li5/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/r$c;
    }
.end annotation


# instance fields
.field public final A:Li5/x;

.field public final B:Li5/b$a;

.field public C:Li5/x;

.field public D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Li5/a$a<",
            "*>;",
            "Ljava/lang/Object;",
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

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/e1;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ly6/l0;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/r0;",
            ">;"
        }
    .end annotation
.end field

.field public i:Li5/r0;

.field public j:Li5/r0;

.field public k:Li5/d0;

.field public l:Li5/t;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Li5/x;",
            ">;"
        }
    .end annotation
.end field

.field public volatile z:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/Collection<",
            "Li5/x;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li5/l;Li5/x;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    const/4 v2, 0x1

    if-eqz p3, :cond_4b

    if-eqz p4, :cond_46

    if-eqz p5, :cond_41

    if-eqz p6, :cond_3c

    invoke-direct {p0, p1, p3, p4, p6}, Ll5/n;-><init>(Li5/l;Lj5/h;Lh6/f;Li5/v0;)V

    sget-object p1, Li5/s;->i:Li5/t;

    iput-object p1, p0, Ll5/r;->l:Li5/t;

    iput-boolean v1, p0, Ll5/r;->m:Z

    iput-boolean v1, p0, Ll5/r;->n:Z

    iput-boolean v1, p0, Ll5/r;->o:Z

    iput-boolean v1, p0, Ll5/r;->p:Z

    iput-boolean v1, p0, Ll5/r;->q:Z

    iput-boolean v1, p0, Ll5/r;->r:Z

    iput-boolean v1, p0, Ll5/r;->s:Z

    iput-boolean v1, p0, Ll5/r;->t:Z

    iput-boolean v1, p0, Ll5/r;->u:Z

    iput-boolean v1, p0, Ll5/r;->v:Z

    iput-boolean v2, p0, Ll5/r;->w:Z

    iput-boolean v1, p0, Ll5/r;->x:Z

    iput-object v0, p0, Ll5/r;->y:Ljava/util/Collection;

    iput-object v0, p0, Ll5/r;->z:Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Ll5/r;->C:Li5/x;

    iput-object v0, p0, Ll5/r;->D:Ljava/util/Map;

    if-nez p2, :cond_37

    move-object p2, p0

    :cond_37
    iput-object p2, p0, Ll5/r;->A:Li5/x;

    iput-object p5, p0, Ll5/r;->B:Li5/b$a;

    return-void

    :cond_3c
    const/4 p0, 0x4

    invoke-static {p0}, Ll5/r;->z(I)V

    throw v0

    :cond_41
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/r;->z(I)V

    throw v0

    :cond_46
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/r;->z(I)V

    throw v0

    :cond_4b
    invoke-static {v2}, Ll5/r;->z(I)V

    throw v0

    :cond_4f
    invoke-static {v1}, Ll5/r;->z(I)V

    throw v0
.end method

.method public static F0(Li5/x;Ljava/util/List;Ly6/x1;ZZ[Z)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/x;",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;",
            "Ly6/x1;",
            "ZZ[Z)",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    if-eqz p1, :cond_c8

    if-eqz v0, :cond_c2

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/e1;

    invoke-interface {v4}, Li5/d1;->getType()Ly6/l0;

    move-result-object v5

    sget-object v6, Ly6/e2;->d:Ly6/e2;

    invoke-virtual {v0, v5, v6}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v13

    invoke-interface {v4}, Li5/e1;->n0()Ly6/l0;

    move-result-object v5

    if-nez v5, :cond_32

    move-object v6, v1

    goto :goto_36

    :cond_32
    invoke-virtual {v0, v5, v6}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v6

    :goto_36
    if-nez v13, :cond_39

    return-object v1

    :cond_39
    invoke-interface {v4}, Li5/d1;->getType()Ly6/l0;

    move-result-object v7

    if-ne v13, v7, :cond_41

    if-eq v5, v6, :cond_47

    :cond_41
    if-eqz p5, :cond_47

    const/4 v5, 0x0

    const/4 v7, 0x1

    aput-boolean v7, p5, v5

    :cond_47
    instance-of v5, v4, Ll5/o0$a;

    if-eqz v5, :cond_5e

    move-object v5, v4

    check-cast v5, Ll5/o0$a;

    iget-object v5, v5, Ll5/o0$a;->l:Lh4/f;

    invoke-interface {v5}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v7, Ll5/r$b;

    invoke-direct {v7, v5}, Ll5/r$b;-><init>(Ljava/util/List;)V

    move-object/from16 v19, v7

    goto :goto_60

    :cond_5e
    move-object/from16 v19, v1

    :goto_60
    if-eqz p3, :cond_64

    move-object v9, v1

    goto :goto_65

    :cond_64
    move-object v9, v4

    :goto_65
    invoke-interface {v4}, Li5/e1;->getIndex()I

    move-result v10

    invoke-interface {v4}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v11

    invoke-interface {v4}, Li5/l;->getName()Lh6/f;

    move-result-object v12

    invoke-interface {v4}, Li5/e1;->t0()Z

    move-result v14

    invoke-interface {v4}, Li5/e1;->k0()Z

    move-result v15

    invoke-interface {v4}, Li5/e1;->j0()Z

    move-result v16

    if-eqz p4, :cond_84

    invoke-interface {v4}, Li5/o;->getSource()Li5/v0;

    move-result-object v4

    goto :goto_86

    :cond_84
    sget-object v4, Li5/v0;->a:Li5/v0;

    :goto_86
    const-string v5, "containingDeclaration"

    move-object/from16 v8, p0

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "annotations"

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "name"

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "outType"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "source"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v19, :cond_b0

    new-instance v5, Ll5/o0;

    move-object v7, v5

    move-object/from16 v8, p0

    move-object/from16 v17, v6

    move-object/from16 v18, v4

    invoke-direct/range {v7 .. v18}, Ll5/o0;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;)V

    goto :goto_bc

    :cond_b0
    new-instance v5, Ll5/o0$a;

    move-object v7, v5

    move-object/from16 v8, p0

    move-object/from16 v17, v6

    move-object/from16 v18, v4

    invoke-direct/range {v7 .. v19}, Ll5/o0$a;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;Lkotlin/jvm/functions/Function0;)V

    :goto_bc
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_c1
    return-object v2

    :cond_c2
    const/16 v0, 0x1f

    invoke-static {v0}, Ll5/r;->z(I)V

    throw v1

    :cond_c8
    const/16 v0, 0x1e

    invoke-static {v0}, Ll5/r;->z(I)V

    throw v1
.end method

.method public static synthetic z(I)V
    .registers 8

    packed-switch p0, :pswitch_data_ea

    :pswitch_3  #0xa, 0xb, 0xc, 0x11, 0x16, 0x18, 0x19
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6  #0x9, 0xd, 0xe, 0xf, 0x10, 0x12, 0x13, 0x14, 0x15, 0x17, 0x1a, 0x1b
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_114

    :pswitch_c  #0xa, 0xb, 0xc, 0x11, 0x16, 0x18, 0x19
    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e  #0x9, 0xd, 0xe, 0xf, 0x10, 0x12, 0x13, 0x14, 0x15, 0x17, 0x1a, 0x1b
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_13e

    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_1c  #0x19
    const-string v5, "configuration"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_21  #0x18, 0x1d, 0x1f
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_26  #0x16
    const-string v5, "originalSubstitutor"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_2b  #0x11
    const-string v5, "overriddenDescriptors"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_30  #0xc
    const-string v5, "extensionReceiverParameter"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_35  #0xb
    const-string v5, "unsubstitutedReturnType"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_3a  #0x9, 0xd, 0xe, 0xf, 0x10, 0x12, 0x13, 0x14, 0x15, 0x17, 0x1a, 0x1b
    aput-object v3, v2, v4

    goto :goto_64

    :pswitch_3d  #0x8, 0xa
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_42  #0x7, 0x1c, 0x1e
    const-string v5, "unsubstitutedValueParameters"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_47  #0x6
    const-string v5, "typeParameters"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_4c  #0x5
    const-string v5, "contextReceiverParameters"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_51  #0x4
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_56  #0x3
    const-string v5, "kind"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_5b  #0x2
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_60  #0x1
    const-string v5, "annotations"

    aput-object v5, v2, v4

    :goto_64
    const-string v4, "newCopyBuilder"

    const-string v5, "initialize"

    const/4 v6, 0x1

    packed-switch p0, :pswitch_data_180

    :pswitch_6c  #0xa, 0xb, 0xc, 0x11, 0x16, 0x18, 0x19
    aput-object v3, v2, v6

    goto :goto_a6

    :pswitch_6f  #0x1b
    const-string v3, "getSourceToUseForCopy"

    aput-object v3, v2, v6

    goto :goto_a6

    :pswitch_74  #0x1a
    const-string v3, "copy"

    aput-object v3, v2, v6

    goto :goto_a6

    :pswitch_79  #0x17
    aput-object v4, v2, v6

    goto :goto_a6

    :pswitch_7c  #0x15
    const-string v3, "getKind"

    aput-object v3, v2, v6

    goto :goto_a6

    :pswitch_81  #0x14
    const-string v3, "getOriginal"

    aput-object v3, v2, v6

    goto :goto_a6

    :pswitch_86  #0x13
    const-string v3, "getValueParameters"

    aput-object v3, v2, v6

    goto :goto_a6

    :pswitch_8b  #0x12
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v6

    goto :goto_a6

    :pswitch_90  #0x10
    const-string v3, "getVisibility"

    aput-object v3, v2, v6

    goto :goto_a6

    :pswitch_95  #0xf
    const-string v3, "getModality"

    aput-object v3, v2, v6

    goto :goto_a6

    :pswitch_9a  #0xe
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v6

    goto :goto_a6

    :pswitch_9f  #0xd
    const-string v3, "getContextReceiverParameters"

    aput-object v3, v2, v6

    goto :goto_a6

    :pswitch_a4  #0x9
    aput-object v5, v2, v6

    :goto_a6
    packed-switch p0, :pswitch_data_1aa

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_d6

    :pswitch_ae  #0x1c, 0x1d, 0x1e, 0x1f
    const-string v3, "getSubstitutedValueParameters"

    aput-object v3, v2, v1

    goto :goto_d6

    :pswitch_b3  #0x19
    const-string v3, "doSubstitute"

    aput-object v3, v2, v1

    goto :goto_d6

    :pswitch_b8  #0x18
    aput-object v4, v2, v1

    goto :goto_d6

    :pswitch_bb  #0x16
    const-string v3, "substitute"

    aput-object v3, v2, v1

    goto :goto_d6

    :pswitch_c0  #0x11
    const-string v3, "setOverriddenDescriptors"

    aput-object v3, v2, v1

    goto :goto_d6

    :pswitch_c5  #0xc
    const-string v3, "setExtensionReceiverParameter"

    aput-object v3, v2, v1

    goto :goto_d6

    :pswitch_ca  #0xb
    const-string v3, "setReturnType"

    aput-object v3, v2, v1

    goto :goto_d6

    :pswitch_cf  #0xa
    const-string v3, "setVisibility"

    aput-object v3, v2, v1

    goto :goto_d6

    :pswitch_d4  #0x5, 0x6, 0x7, 0x8
    aput-object v5, v2, v1

    :goto_d6
    :pswitch_d6  #0x9, 0xd, 0xe, 0xf, 0x10, 0x12, 0x13, 0x14, 0x15, 0x17, 0x1a, 0x1b
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_1e4

    :pswitch_dd  #0xa, 0xb, 0xc, 0x11, 0x16, 0x18, 0x19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_e8

    :pswitch_e3  #0x9, 0xd, 0xe, 0xf, 0x10, 0x12, 0x13, 0x14, 0x15, 0x17, 0x1a, 0x1b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_e8
    throw p0

    nop

    :pswitch_data_ea
    .packed-switch 0x9
        :pswitch_6  #00000009
        :pswitch_3  #0000000a
        :pswitch_3  #0000000b
        :pswitch_3  #0000000c
        :pswitch_6  #0000000d
        :pswitch_6  #0000000e
        :pswitch_6  #0000000f
        :pswitch_6  #00000010
        :pswitch_3  #00000011
        :pswitch_6  #00000012
        :pswitch_6  #00000013
        :pswitch_6  #00000014
        :pswitch_6  #00000015
        :pswitch_3  #00000016
        :pswitch_6  #00000017
        :pswitch_3  #00000018
        :pswitch_3  #00000019
        :pswitch_6  #0000001a
        :pswitch_6  #0000001b
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x9
        :pswitch_e  #00000009
        :pswitch_c  #0000000a
        :pswitch_c  #0000000b
        :pswitch_c  #0000000c
        :pswitch_e  #0000000d
        :pswitch_e  #0000000e
        :pswitch_e  #0000000f
        :pswitch_e  #00000010
        :pswitch_c  #00000011
        :pswitch_e  #00000012
        :pswitch_e  #00000013
        :pswitch_e  #00000014
        :pswitch_e  #00000015
        :pswitch_c  #00000016
        :pswitch_e  #00000017
        :pswitch_c  #00000018
        :pswitch_c  #00000019
        :pswitch_e  #0000001a
        :pswitch_e  #0000001b
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_60  #00000001
        :pswitch_5b  #00000002
        :pswitch_56  #00000003
        :pswitch_51  #00000004
        :pswitch_4c  #00000005
        :pswitch_47  #00000006
        :pswitch_42  #00000007
        :pswitch_3d  #00000008
        :pswitch_3a  #00000009
        :pswitch_3d  #0000000a
        :pswitch_35  #0000000b
        :pswitch_30  #0000000c
        :pswitch_3a  #0000000d
        :pswitch_3a  #0000000e
        :pswitch_3a  #0000000f
        :pswitch_3a  #00000010
        :pswitch_2b  #00000011
        :pswitch_3a  #00000012
        :pswitch_3a  #00000013
        :pswitch_3a  #00000014
        :pswitch_3a  #00000015
        :pswitch_26  #00000016
        :pswitch_3a  #00000017
        :pswitch_21  #00000018
        :pswitch_1c  #00000019
        :pswitch_3a  #0000001a
        :pswitch_3a  #0000001b
        :pswitch_42  #0000001c
        :pswitch_21  #0000001d
        :pswitch_42  #0000001e
        :pswitch_21  #0000001f
    .end packed-switch

    :pswitch_data_180
    .packed-switch 0x9
        :pswitch_a4  #00000009
        :pswitch_6c  #0000000a
        :pswitch_6c  #0000000b
        :pswitch_6c  #0000000c
        :pswitch_9f  #0000000d
        :pswitch_9a  #0000000e
        :pswitch_95  #0000000f
        :pswitch_90  #00000010
        :pswitch_6c  #00000011
        :pswitch_8b  #00000012
        :pswitch_86  #00000013
        :pswitch_81  #00000014
        :pswitch_7c  #00000015
        :pswitch_6c  #00000016
        :pswitch_79  #00000017
        :pswitch_6c  #00000018
        :pswitch_6c  #00000019
        :pswitch_74  #0000001a
        :pswitch_6f  #0000001b
    .end packed-switch

    :pswitch_data_1aa
    .packed-switch 0x5
        :pswitch_d4  #00000005
        :pswitch_d4  #00000006
        :pswitch_d4  #00000007
        :pswitch_d4  #00000008
        :pswitch_d6  #00000009
        :pswitch_cf  #0000000a
        :pswitch_ca  #0000000b
        :pswitch_c5  #0000000c
        :pswitch_d6  #0000000d
        :pswitch_d6  #0000000e
        :pswitch_d6  #0000000f
        :pswitch_d6  #00000010
        :pswitch_c0  #00000011
        :pswitch_d6  #00000012
        :pswitch_d6  #00000013
        :pswitch_d6  #00000014
        :pswitch_d6  #00000015
        :pswitch_bb  #00000016
        :pswitch_d6  #00000017
        :pswitch_b8  #00000018
        :pswitch_b3  #00000019
        :pswitch_d6  #0000001a
        :pswitch_d6  #0000001b
        :pswitch_ae  #0000001c
        :pswitch_ae  #0000001d
        :pswitch_ae  #0000001e
        :pswitch_ae  #0000001f
    .end packed-switch

    :pswitch_data_1e4
    .packed-switch 0x9
        :pswitch_e3  #00000009
        :pswitch_dd  #0000000a
        :pswitch_dd  #0000000b
        :pswitch_dd  #0000000c
        :pswitch_e3  #0000000d
        :pswitch_e3  #0000000e
        :pswitch_e3  #0000000f
        :pswitch_e3  #00000010
        :pswitch_dd  #00000011
        :pswitch_e3  #00000012
        :pswitch_e3  #00000013
        :pswitch_e3  #00000014
        :pswitch_e3  #00000015
        :pswitch_dd  #00000016
        :pswitch_e3  #00000017
        :pswitch_dd  #00000018
        :pswitch_dd  #00000019
        :pswitch_e3  #0000001a
        :pswitch_e3  #0000001b
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic A0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/b;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Ll5/r;->z0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/x;

    move-result-object p0

    return-object p0
.end method

.method public abstract D0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/r;
.end method

.method public E0(Ll5/r$c;)Li5/x;
    .registers 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    sget-object v9, Ly6/e2;->d:Ly6/e2;

    const/4 v10, 0x0

    if-eqz v8, :cond_23f

    const/4 v11, 0x1

    new-array v12, v11, [Z

    iget-object v0, v8, Ll5/r$c;->s:Lj5/h;

    if-eqz v0, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lj5/b;->getAnnotations()Lj5/h;

    move-result-object v0

    iget-object v1, v8, Ll5/r$c;->s:Lj5/h;

    invoke-static {v0, v1}, Lv1/l;->b(Lj5/h;Lj5/h;)Lj5/h;

    move-result-object v0

    goto :goto_1f

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lj5/b;->getAnnotations()Lj5/h;

    move-result-object v0

    :goto_1f
    move-object v5, v0

    iget-object v1, v8, Ll5/r$c;->b:Li5/l;

    iget-object v2, v8, Ll5/r$c;->e:Li5/x;

    iget-object v3, v8, Ll5/r$c;->f:Li5/b$a;

    iget-object v4, v8, Ll5/r$c;->l:Lh6/f;

    iget-boolean v0, v8, Ll5/r$c;->o:Z

    if-eqz v0, :cond_39

    if-eqz v2, :cond_30

    move-object v0, v2

    goto :goto_34

    :cond_30
    invoke-virtual/range {p0 .. p0}, Ll5/r;->a()Li5/x;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Li5/o;->getSource()Li5/v0;

    move-result-object v0

    goto :goto_3b

    :cond_39
    sget-object v0, Li5/v0;->a:Li5/v0;

    :goto_3b
    move-object v6, v0

    if-eqz v6, :cond_239

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Ll5/r;->D0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/r;

    move-result-object v6

    iget-object v0, v8, Ll5/r$c;->r:Ljava/util/List;

    if-nez v0, :cond_4c

    invoke-virtual/range {p0 .. p0}, Ll5/r;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    :cond_4c
    const/4 v13, 0x0

    aget-boolean v1, v12, v13

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v11

    or-int/2addr v1, v2

    aput-boolean v1, v12, v13

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v8, Ll5/r$c;->a:Ly6/t1;

    invoke-static {v0, v1, v6, v15, v12}, Ly6/c2;->e(Ljava/util/List;Ly6/t1;Li5/l;Ljava/util/List;[Z)Ly6/x1;

    move-result-object v14

    if-nez v14, :cond_69

    return-object v10

    :cond_69
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v8, Ll5/r$c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bd

    iget-object v0, v8, Ll5/r$c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v13

    :goto_7d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5/r0;

    invoke-interface {v2}, Li5/d1;->getType()Ly6/l0;

    move-result-object v3

    invoke-virtual {v14, v3, v9}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v3

    if-nez v3, :cond_94

    return-object v10

    :cond_94
    invoke-interface {v2}, Li5/r0;->getValue()Ls6/g;

    move-result-object v4

    check-cast v4, Ls6/f;

    invoke-interface {v4}, Ls6/f;->a()Lh6/f;

    move-result-object v4

    invoke-interface {v2}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v11

    add-int/lit8 v16, v1, 0x1

    invoke-static {v6, v3, v4, v11, v1}, Lk6/h;->b(Li5/a;Ly6/l0;Lh6/f;Lj5/h;I)Li5/r0;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-boolean v1, v12, v13

    invoke-interface {v2}, Li5/d1;->getType()Ly6/l0;

    move-result-object v2

    if-eq v3, v2, :cond_b5

    const/4 v2, 0x1

    goto :goto_b6

    :cond_b5
    move v2, v13

    :goto_b6
    or-int/2addr v1, v2

    aput-boolean v1, v12, v13

    move/from16 v1, v16

    const/4 v11, 0x1

    goto :goto_7d

    :cond_bd
    iget-object v0, v8, Ll5/r$c;->i:Li5/r0;

    if-eqz v0, :cond_f4

    invoke-interface {v0}, Li5/d1;->getType()Ly6/l0;

    move-result-object v0

    invoke-virtual {v14, v0, v9}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v0

    if-nez v0, :cond_cc

    return-object v10

    :cond_cc
    new-instance v1, Ll5/i0;

    new-instance v2, Ls6/d;

    iget-object v3, v8, Ll5/r$c;->i:Li5/r0;

    invoke-interface {v3}, Li5/r0;->getValue()Ls6/g;

    move-result-object v3

    invoke-direct {v2, v6, v0, v3}, Ls6/d;-><init>(Li5/a;Ly6/l0;Ls6/g;)V

    iget-object v3, v8, Ll5/r$c;->i:Li5/r0;

    invoke-interface {v3}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v3

    invoke-direct {v1, v6, v2, v3}, Ll5/i0;-><init>(Li5/l;Ls6/g;Lj5/h;)V

    aget-boolean v2, v12, v13

    iget-object v3, v8, Ll5/r$c;->i:Li5/r0;

    invoke-interface {v3}, Li5/d1;->getType()Ly6/l0;

    move-result-object v3

    if-eq v0, v3, :cond_ee

    const/4 v0, 0x1

    goto :goto_ef

    :cond_ee
    move v0, v13

    :goto_ef
    or-int/2addr v0, v2

    aput-boolean v0, v12, v13

    move-object v9, v1

    goto :goto_f5

    :cond_f4
    move-object v9, v10

    :goto_f5
    iget-object v0, v8, Ll5/r$c;->j:Li5/r0;

    if-eqz v0, :cond_10e

    invoke-interface {v0, v14}, Li5/r0;->c(Ly6/x1;)Li5/r0;

    move-result-object v0

    if-nez v0, :cond_100

    return-object v10

    :cond_100
    aget-boolean v1, v12, v13

    iget-object v2, v8, Ll5/r$c;->j:Li5/r0;

    if-eq v0, v2, :cond_108

    const/4 v2, 0x1

    goto :goto_109

    :cond_108
    move v2, v13

    :goto_109
    or-int/2addr v1, v2

    aput-boolean v1, v12, v13

    move-object v11, v0

    goto :goto_10f

    :cond_10e
    move-object v11, v10

    :goto_10f
    iget-object v1, v8, Ll5/r$c;->g:Ljava/util/List;

    iget-boolean v3, v8, Ll5/r$c;->p:Z

    iget-boolean v4, v8, Ll5/r$c;->o:Z

    move-object v0, v6

    move-object v2, v14

    move-object/from16 v16, v5

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Ll5/r;->F0(Li5/x;Ljava/util/List;Ly6/x1;ZZ[Z)Ljava/util/List;

    move-result-object v18

    if-nez v18, :cond_121

    return-object v10

    :cond_121
    iget-object v0, v8, Ll5/r$c;->k:Ly6/l0;

    sget-object v1, Ly6/e2;->e:Ly6/e2;

    invoke-virtual {v14, v0, v1}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v0

    if-nez v0, :cond_12c

    return-object v10

    :cond_12c
    aget-boolean v1, v12, v13

    iget-object v2, v8, Ll5/r$c;->k:Ly6/l0;

    if-eq v0, v2, :cond_134

    const/4 v2, 0x1

    goto :goto_135

    :cond_134
    move v2, v13

    :goto_135
    or-int/2addr v1, v2

    aput-boolean v1, v12, v13

    aget-boolean v1, v12, v13

    if-nez v1, :cond_141

    iget-boolean v1, v8, Ll5/r$c;->w:Z

    if-eqz v1, :cond_141

    return-object v7

    :cond_141
    iget-object v1, v8, Ll5/r$c;->c:Li5/d0;

    iget-object v2, v8, Ll5/r$c;->d:Li5/t;

    move-object v13, v6

    move-object v3, v14

    move-object v14, v9

    move-object v4, v15

    move-object v15, v11

    move-object/from16 v17, v4

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    invoke-virtual/range {v13 .. v21}, Ll5/r;->G0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/r;

    iget-boolean v0, v7, Ll5/r;->m:Z

    iput-boolean v0, v6, Ll5/r;->m:Z

    iget-boolean v0, v7, Ll5/r;->n:Z

    iput-boolean v0, v6, Ll5/r;->n:Z

    iget-boolean v0, v7, Ll5/r;->o:Z

    iput-boolean v0, v6, Ll5/r;->o:Z

    iget-boolean v0, v7, Ll5/r;->p:Z

    iput-boolean v0, v6, Ll5/r;->p:Z

    iget-boolean v0, v7, Ll5/r;->q:Z

    iput-boolean v0, v6, Ll5/r;->q:Z

    iget-boolean v0, v7, Ll5/r;->v:Z

    iput-boolean v0, v6, Ll5/r;->v:Z

    iget-boolean v0, v7, Ll5/r;->r:Z

    iput-boolean v0, v6, Ll5/r;->r:Z

    iget-boolean v0, v7, Ll5/r;->s:Z

    iput-boolean v0, v6, Ll5/r;->s:Z

    iget-boolean v0, v7, Ll5/r;->w:Z

    invoke-virtual {v6, v0}, Ll5/r;->J0(Z)V

    iget-boolean v0, v8, Ll5/r$c;->q:Z

    iput-boolean v0, v6, Ll5/r;->t:Z

    iget-boolean v0, v8, Ll5/r$c;->t:Z

    iput-boolean v0, v6, Ll5/r;->u:Z

    iget-object v0, v8, Ll5/r$c;->v:Ljava/lang/Boolean;

    if-eqz v0, :cond_18b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_18d

    :cond_18b
    iget-boolean v0, v7, Ll5/r;->x:Z

    :goto_18d
    invoke-virtual {v6, v0}, Ll5/r;->K0(Z)V

    iget-object v0, v8, Ll5/r$c;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19c

    iget-object v0, v7, Ll5/r;->D:Ljava/util/Map;

    if-eqz v0, :cond_1f4

    :cond_19c
    iget-object v0, v8, Ll5/r$c;->u:Ljava/util/Map;

    iget-object v1, v7, Ll5/r;->D:Ljava/util/Map;

    if-eqz v1, :cond_1cc

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1aa
    :goto_1aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1aa

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1aa

    :cond_1cc
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f2

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v6, Ll5/r;->D:Ljava/util/Map;

    goto :goto_1f4

    :cond_1f2
    iput-object v0, v6, Ll5/r;->D:Ljava/util/Map;

    :cond_1f4
    :goto_1f4
    iget-boolean v0, v8, Ll5/r$c;->n:Z

    if-nez v0, :cond_1fc

    iget-object v0, v7, Ll5/r;->C:Li5/x;

    if-eqz v0, :cond_208

    :cond_1fc
    iget-object v0, v7, Ll5/r;->C:Li5/x;

    if-eqz v0, :cond_201

    goto :goto_202

    :cond_201
    move-object v0, v7

    :goto_202
    invoke-interface {v0, v3}, Li5/x;->c(Ly6/x1;)Li5/x;

    move-result-object v0

    iput-object v0, v6, Ll5/r;->C:Li5/x;

    :cond_208
    iget-boolean v0, v8, Ll5/r$c;->m:Z

    if-eqz v0, :cond_238

    invoke-virtual/range {p0 .. p0}, Ll5/r;->a()Li5/x;

    move-result-object v0

    invoke-interface {v0}, Li5/x;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_238

    iget-object v0, v8, Ll5/r$c;->a:Ly6/t1;

    invoke-virtual {v0}, Ly6/t1;->f()Z

    move-result v0

    if-eqz v0, :cond_231

    iget-object v0, v7, Ll5/r;->z:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_229

    iput-object v0, v6, Ll5/r;->z:Lkotlin/jvm/functions/Function0;

    goto :goto_238

    :cond_229
    invoke-virtual/range {p0 .. p0}, Ll5/r;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v6, v0}, Ll5/r;->w0(Ljava/util/Collection;)V

    goto :goto_238

    :cond_231
    new-instance v0, Ll5/r$a;

    invoke-direct {v0, v7, v3}, Ll5/r$a;-><init>(Ll5/r;Ly6/x1;)V

    iput-object v0, v6, Ll5/r;->z:Lkotlin/jvm/functions/Function0;

    :cond_238
    :goto_238
    return-object v6

    :cond_239
    const/16 v0, 0x1b

    invoke-static {v0}, Ll5/r;->z(I)V

    throw v10

    :cond_23f
    const/16 v0, 0x19

    invoke-static {v0}, Ll5/r;->z(I)V

    throw v10
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

    invoke-interface {p1, p0, p2}, Li5/n;->a(Li5/x;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public G0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/r;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/r0;",
            "Li5/r0;",
            "Ljava/util/List<",
            "Li5/r0;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;",
            "Ly6/l0;",
            "Li5/d0;",
            "Li5/t;",
            ")",
            "Ll5/r;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_aa

    if-eqz p4, :cond_a5

    if-eqz p5, :cond_a0

    if-eqz p8, :cond_9a

    invoke-static {p4}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ll5/r;->e:Ljava/util/List;

    invoke-static {p5}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ll5/r;->f:Ljava/util/List;

    iput-object p6, p0, Ll5/r;->g:Ly6/l0;

    iput-object p7, p0, Ll5/r;->k:Li5/d0;

    iput-object p8, p0, Ll5/r;->l:Li5/t;

    iput-object p1, p0, Ll5/r;->i:Li5/r0;

    iput-object p2, p0, Ll5/r;->j:Li5/r0;

    iput-object p3, p0, Ll5/r;->h:Ljava/util/List;

    const/4 p1, 0x0

    move p2, p1

    :goto_23
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    const-string p6, " but position is "

    if-ge p2, p3, :cond_5e

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Li5/a1;

    invoke-interface {p3}, Li5/a1;->getIndex()I

    move-result p7

    if-ne p7, p2, :cond_3a

    add-int/lit8 p2, p2, 0x1

    goto :goto_23

    :cond_3a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " index is "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Li5/a1;->getIndex()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5e
    :goto_5e
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_99

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li5/e1;

    invoke-interface {p2}, Li5/e1;->getIndex()I

    move-result p3

    add-int/lit8 p4, p1, 0x0

    if-ne p3, p4, :cond_75

    add-int/lit8 p1, p1, 0x1

    goto :goto_5e

    :cond_75
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "index is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Li5/e1;->getIndex()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_99
    return-object p0

    :cond_9a
    const/16 p0, 0x8

    invoke-static {p0}, Ll5/r;->z(I)V

    throw v0

    :cond_a0
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/r;->z(I)V

    throw v0

    :cond_a5
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/r;->z(I)V

    throw v0

    :cond_aa
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/r;->z(I)V

    throw v0
.end method

.method public H0(Ly6/x1;)Ll5/r$c;
    .registers 15

    if-eqz p1, :cond_2d

    new-instance v12, Ll5/r$c;

    invoke-virtual {p1}, Ly6/x1;->g()Ly6/t1;

    move-result-object v2

    invoke-virtual {p0}, Ll5/n;->b()Li5/l;

    move-result-object v3

    invoke-virtual {p0}, Ll5/r;->o()Li5/d0;

    move-result-object v4

    invoke-virtual {p0}, Ll5/r;->getVisibility()Li5/t;

    move-result-object v5

    invoke-virtual {p0}, Ll5/r;->f()Li5/b$a;

    move-result-object v6

    invoke-virtual {p0}, Ll5/r;->g()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Ll5/r;->q0()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Ll5/r;->i:Li5/r0;

    invoke-virtual {p0}, Ll5/r;->getReturnType()Ly6/l0;

    move-result-object v10

    const/4 v11, 0x0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Ll5/r$c;-><init>(Ll5/r;Ly6/t1;Li5/l;Li5/d0;Li5/t;Li5/b$a;Ljava/util/List;Ljava/util/List;Li5/r0;Ly6/l0;Lh6/f;)V

    return-object v12

    :cond_2d
    const/16 p0, 0x18

    invoke-static {p0}, Ll5/r;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public I()Li5/r0;
    .registers 1

    iget-object p0, p0, Ll5/r;->j:Li5/r0;

    return-object p0
.end method

.method public I0(Li5/a$a;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/a$a<",
            "TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Ll5/r;->D:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ll5/r;->D:Ljava/util/Map;

    :cond_b
    iget-object p0, p0, Ll5/r;->D:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public J0(Z)V
    .registers 2

    iput-boolean p1, p0, Ll5/r;->w:Z

    return-void
.end method

.method public K0(Z)V
    .registers 2

    iput-boolean p1, p0, Ll5/r;->x:Z

    return-void
.end method

.method public L()Li5/r0;
    .registers 1

    iget-object p0, p0, Ll5/r;->i:Li5/r0;

    return-object p0
.end method

.method public L0(Ly6/l0;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Ll5/r;->g:Ly6/l0;

    return-void

    :cond_5
    const/16 p0, 0xb

    invoke-static {p0}, Ll5/r;->z(I)V

    const/4 p0, 0x0

    throw p0
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

    iget-object p0, p0, Ll5/r;->D:Ljava/util/Map;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public V()Z
    .registers 1

    iget-boolean p0, p0, Ll5/r;->s:Z

    return p0
.end method

.method public bridge synthetic a()Li5/a;
    .registers 1

    invoke-virtual {p0}, Ll5/r;->a()Li5/x;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/b;
    .registers 1

    invoke-virtual {p0}, Ll5/r;->a()Li5/x;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/r;->a()Li5/x;

    move-result-object p0

    return-object p0
.end method

.method public a()Li5/x;
    .registers 2

    iget-object v0, p0, Ll5/r;->A:Li5/x;

    if-ne v0, p0, :cond_5

    goto :goto_9

    :cond_5
    invoke-interface {v0}, Li5/x;->a()Li5/x;

    move-result-object p0

    :goto_9
    if-eqz p0, :cond_c

    return-object p0

    :cond_c
    const/16 p0, 0x14

    invoke-static {p0}, Ll5/r;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/m;
    .registers 2

    invoke-virtual {p0, p1}, Ll5/r;->c(Ly6/x1;)Li5/x;

    move-result-object p0

    return-object p0
.end method

.method public c(Ly6/x1;)Li5/x;
    .registers 3

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ly6/x1;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    invoke-virtual {p0, p1}, Ll5/r;->H0(Ly6/x1;)Ll5/r$c;

    move-result-object p1

    invoke-virtual {p0}, Ll5/r;->a()Li5/x;

    move-result-object p0

    iput-object p0, p1, Ll5/r$c;->e:Li5/x;

    const/4 p0, 0x1

    iput-boolean p0, p1, Ll5/r$c;->o:Z

    iput-boolean p0, p1, Ll5/r$c;->w:Z

    invoke-virtual {p1}, Ll5/r$c;->build()Li5/x;

    move-result-object p0

    return-object p0

    :cond_1d
    const/16 p0, 0x16

    invoke-static {p0}, Ll5/r;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public c0()Z
    .registers 1

    iget-boolean p0, p0, Ll5/r;->x:Z

    return p0
.end method

.method public d()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Li5/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll5/r;->z:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Ll5/r;->y:Ljava/util/Collection;

    iput-object v1, p0, Ll5/r;->z:Lkotlin/jvm/functions/Function0;

    :cond_f
    iget-object p0, p0, Ll5/r;->y:Ljava/util/Collection;

    if-eqz p0, :cond_14

    goto :goto_18

    :cond_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_18
    if-eqz p0, :cond_1b

    return-object p0

    :cond_1b
    const/16 p0, 0xe

    invoke-static {p0}, Ll5/r;->z(I)V

    throw v1
.end method

.method public f()Li5/b$a;
    .registers 1

    iget-object p0, p0, Ll5/r;->B:Li5/b$a;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x15

    invoke-static {p0}, Ll5/r;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public f0()Z
    .registers 1

    iget-boolean p0, p0, Ll5/r;->r:Z

    return p0
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

    iget-object p0, p0, Ll5/r;->f:Ljava/util/List;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x13

    invoke-static {p0}, Ll5/r;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getReturnType()Ly6/l0;
    .registers 1

    iget-object p0, p0, Ll5/r;->g:Ly6/l0;

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll5/r;->e:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "typeParameters == null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVisibility()Li5/t;
    .registers 1

    iget-object p0, p0, Ll5/r;->l:Li5/t;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x10

    invoke-static {p0}, Ll5/r;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public isExternal()Z
    .registers 1

    iget-boolean p0, p0, Ll5/r;->o:Z

    return p0
.end method

.method public isInfix()Z
    .registers 3

    iget-boolean v0, p0, Ll5/r;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Ll5/r;->a()Li5/x;

    move-result-object p0

    invoke-interface {p0}, Li5/x;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/x;

    invoke-interface {v0}, Li5/x;->isInfix()Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public isInline()Z
    .registers 1

    iget-boolean p0, p0, Ll5/r;->p:Z

    return p0
.end method

.method public isOperator()Z
    .registers 3

    iget-boolean v0, p0, Ll5/r;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Ll5/r;->a()Li5/x;

    move-result-object p0

    invoke-interface {p0}, Li5/x;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/x;

    invoke-interface {v0}, Li5/x;->isOperator()Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public isSuspend()Z
    .registers 1

    iget-boolean p0, p0, Ll5/r;->v:Z

    return p0
.end method

.method public l0()Li5/x;
    .registers 1

    iget-object p0, p0, Ll5/r;->C:Li5/x;

    return-object p0
.end method

.method public o()Li5/d0;
    .registers 1

    iget-object p0, p0, Ll5/r;->k:Li5/d0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xf

    invoke-static {p0}, Ll5/r;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public q()Li5/x$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li5/x$a<",
            "+",
            "Li5/x;",
            ">;"
        }
    .end annotation

    sget-object v0, Ly6/x1;->b:Ly6/x1;

    invoke-virtual {p0, v0}, Ll5/r;->H0(Ly6/x1;)Ll5/r$c;

    move-result-object p0

    return-object p0
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

    iget-object p0, p0, Ll5/r;->h:Ljava/util/List;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xd

    invoke-static {p0}, Ll5/r;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public v0()Z
    .registers 1

    iget-boolean p0, p0, Ll5/r;->t:Z

    return p0
.end method

.method public w0(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Li5/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1e

    iput-object p1, p0, Ll5/r;->y:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5/x;

    invoke-interface {v0}, Li5/x;->y0()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll5/r;->u:Z

    :cond_1d
    return-void

    :cond_1e
    const/16 p0, 0x11

    invoke-static {p0}, Ll5/r;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic x0()Li5/o;
    .registers 1

    invoke-virtual {p0}, Ll5/r;->a()Li5/x;

    move-result-object p0

    return-object p0
.end method

.method public y()Z
    .registers 1

    iget-boolean p0, p0, Ll5/r;->q:Z

    return p0
.end method

.method public y0()Z
    .registers 1

    iget-boolean p0, p0, Ll5/r;->u:Z

    return p0
.end method

.method public z0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/x;
    .registers 6

    invoke-virtual {p0}, Ll5/r;->q()Li5/x$a;

    move-result-object p0

    invoke-interface {p0, p1}, Li5/x$a;->g(Li5/l;)Li5/x$a;

    move-result-object p0

    invoke-interface {p0, p2}, Li5/x$a;->l(Li5/d0;)Li5/x$a;

    move-result-object p0

    invoke-interface {p0, p3}, Li5/x$a;->q(Li5/t;)Li5/x$a;

    move-result-object p0

    invoke-interface {p0, p4}, Li5/x$a;->i(Li5/b$a;)Li5/x$a;

    move-result-object p0

    invoke-interface {p0, p5}, Li5/x$a;->m(Z)Li5/x$a;

    move-result-object p0

    invoke-interface {p0}, Li5/x$a;->build()Li5/x;

    move-result-object p0

    if-eqz p0, :cond_1f

    return-object p0

    :cond_1f
    const/16 p0, 0x1a

    invoke-static {p0}, Ll5/r;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method
