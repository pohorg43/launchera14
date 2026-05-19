.class public Ll5/f0;
.super Ll5/q0;
.source ""

# interfaces
.implements Li5/o0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/f0$a;
    }
.end annotation


# instance fields
.field public A:Li5/v;

.field public B:Li5/v;

.field public final i:Li5/d0;

.field public j:Li5/t;

.field public k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Li5/o0;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Li5/o0;

.field public final m:Li5/b$a;

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/r0;",
            ">;"
        }
    .end annotation
.end field

.field public u:Li5/r0;

.field public v:Li5/r0;

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ll5/g0;

.field public y:Li5/q0;

.field public z:Z


# direct methods
.method public constructor <init>(Li5/l;Li5/o0;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/b$a;Li5/v0;ZZZZZZ)V
    .registers 28

    move-object v7, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    const/4 v11, 0x0

    if-eqz p1, :cond_6f

    if-eqz p3, :cond_6a

    if-eqz v8, :cond_65

    if-eqz v9, :cond_60

    if-eqz p7, :cond_5b

    if-eqz v10, :cond_56

    if-eqz p9, :cond_51

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p7

    move/from16 v5, p6

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Ll5/q0;-><init>(Li5/l;Lj5/h;Lh6/f;Ly6/l0;ZLi5/v0;)V

    iput-object v11, v7, Ll5/f0;->k:Ljava/util/Collection;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Ll5/f0;->t:Ljava/util/List;

    iput-object v8, v7, Ll5/f0;->i:Li5/d0;

    iput-object v9, v7, Ll5/f0;->j:Li5/t;

    if-nez p2, :cond_33

    move-object v0, v7

    goto :goto_34

    :cond_33
    move-object v0, p2

    :goto_34
    iput-object v0, v7, Ll5/f0;->l:Li5/o0;

    iput-object v10, v7, Ll5/f0;->m:Li5/b$a;

    move/from16 v0, p10

    iput-boolean v0, v7, Ll5/f0;->n:Z

    move/from16 v0, p11

    iput-boolean v0, v7, Ll5/f0;->o:Z

    move/from16 v0, p12

    iput-boolean v0, v7, Ll5/f0;->p:Z

    move/from16 v0, p13

    iput-boolean v0, v7, Ll5/f0;->q:Z

    move/from16 v0, p14

    iput-boolean v0, v7, Ll5/f0;->r:Z

    move/from16 v0, p15

    iput-boolean v0, v7, Ll5/f0;->s:Z

    return-void

    :cond_51
    const/4 v0, 0x6

    invoke-static {v0}, Ll5/f0;->z(I)V

    throw v11

    :cond_56
    const/4 v0, 0x5

    invoke-static {v0}, Ll5/f0;->z(I)V

    throw v11

    :cond_5b
    const/4 v0, 0x4

    invoke-static {v0}, Ll5/f0;->z(I)V

    throw v11

    :cond_60
    const/4 v0, 0x3

    invoke-static {v0}, Ll5/f0;->z(I)V

    throw v11

    :cond_65
    const/4 v0, 0x2

    invoke-static {v0}, Ll5/f0;->z(I)V

    throw v11

    :cond_6a
    const/4 v0, 0x1

    invoke-static {v0}, Ll5/f0;->z(I)V

    throw v11

    :cond_6f
    const/4 v0, 0x0

    invoke-static {v0}, Ll5/f0;->z(I)V

    throw v11
.end method

.method public static G0(Li5/l;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/b$a;Li5/v0;ZZZZZZ)Ll5/f0;
    .registers 31

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    if-eqz p3, :cond_39

    if-eqz p5, :cond_33

    if-eqz p7, :cond_2d

    new-instance v0, Ll5/f0;

    const/4 v3, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    invoke-direct/range {v1 .. v16}, Ll5/f0;-><init>(Li5/l;Li5/o0;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/b$a;Li5/v0;ZZZZZZ)V

    return-object v0

    :cond_2d
    const/16 v1, 0xd

    invoke-static {v1}, Ll5/f0;->z(I)V

    throw v0

    :cond_33
    const/16 v1, 0xb

    invoke-static {v1}, Ll5/f0;->z(I)V

    throw v0

    :cond_39
    const/16 v1, 0xa

    invoke-static {v1}, Ll5/f0;->z(I)V

    throw v0

    :cond_3f
    const/4 v1, 0x7

    invoke-static {v1}, Ll5/f0;->z(I)V

    throw v0
.end method

.method public static I0(Ly6/x1;Li5/n0;)Li5/x;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-interface {p1}, Li5/x;->l0()Li5/x;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Li5/x;->l0()Li5/x;

    move-result-object p1

    invoke-interface {p1, p0}, Li5/x;->c(Ly6/x1;)Li5/x;

    move-result-object v0

    :cond_11
    return-object v0

    :cond_12
    const/16 p0, 0x1f

    invoke-static {p0}, Ll5/f0;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 12

    const/16 v0, 0x2a

    const/16 v1, 0x29

    const/16 v2, 0x27

    const/16 v3, 0x26

    const/16 v4, 0x1c

    if-eq p0, v4, :cond_1a

    if-eq p0, v3, :cond_1a

    if-eq p0, v2, :cond_1a

    if-eq p0, v1, :cond_1a

    if-eq p0, v0, :cond_1a

    packed-switch p0, :pswitch_data_136

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_1c

    :cond_1a
    :pswitch_1a  #0x15, 0x16, 0x17, 0x18, 0x19, 0x1a
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_1c
    const/4 v6, 0x2

    if-eq p0, v4, :cond_2c

    if-eq p0, v3, :cond_2c

    if-eq p0, v2, :cond_2c

    if-eq p0, v1, :cond_2c

    if-eq p0, v0, :cond_2c

    packed-switch p0, :pswitch_data_146

    const/4 v7, 0x3

    goto :goto_2d

    :cond_2c
    :pswitch_2c  #0x15, 0x16, 0x17, 0x18, 0x19, 0x1a
    move v7, v6

    :goto_2d
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl"

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_156

    :pswitch_35  #0x7
    const-string v10, "containingDeclaration"

    aput-object v10, v7, v9

    goto/16 :goto_9d

    :pswitch_3b  #0x28
    const-string v10, "overriddenDescriptors"

    aput-object v10, v7, v9

    goto/16 :goto_9d

    :pswitch_41  #0x24
    const-string v10, "newName"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_46  #0x22
    const-string v10, "newVisibility"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_4b  #0x21
    const-string v10, "newModality"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_50  #0x20
    const-string v10, "newOwner"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_55  #0x1f
    const-string v10, "accessorDescriptor"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_5a  #0x1e
    const-string v10, "substitutor"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_5f  #0x1d
    const-string v10, "copyConfiguration"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_64  #0x1b
    const-string v10, "originalSubstitutor"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_69  #0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1c, 0x26, 0x27, 0x29, 0x2a
    aput-object v8, v7, v9

    goto :goto_9d

    :pswitch_6c  #0x13
    const-string v10, "contextReceiverParameters"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_71  #0x10, 0x12
    const-string v10, "typeParameters"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_76  #0xf, 0x11
    const-string v10, "outType"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_7b  #0xe
    const-string v10, "inType"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_80  #0x6, 0xd, 0x25
    const-string v10, "source"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_85  #0x5, 0xc, 0x23
    const-string v10, "kind"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_8a  #0x4, 0xb
    const-string v10, "name"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_8f  #0x3, 0xa, 0x14
    const-string v10, "visibility"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_94  #0x2, 0x9
    const-string v10, "modality"

    aput-object v10, v7, v9

    goto :goto_9d

    :pswitch_99  #0x1, 0x8
    const-string v10, "annotations"

    aput-object v10, v7, v9

    :goto_9d
    const/4 v9, 0x1

    if-eq p0, v4, :cond_e0

    if-eq p0, v3, :cond_db

    if-eq p0, v2, :cond_d6

    if-eq p0, v1, :cond_d1

    if-eq p0, v0, :cond_cc

    packed-switch p0, :pswitch_data_1ae

    aput-object v8, v7, v9

    goto :goto_e4

    :pswitch_ae  #0x1a
    const-string v8, "getAccessors"

    aput-object v8, v7, v9

    goto :goto_e4

    :pswitch_b3  #0x19
    const-string v8, "getVisibility"

    aput-object v8, v7, v9

    goto :goto_e4

    :pswitch_b8  #0x18
    const-string v8, "getModality"

    aput-object v8, v7, v9

    goto :goto_e4

    :pswitch_bd  #0x17
    const-string v8, "getReturnType"

    aput-object v8, v7, v9

    goto :goto_e4

    :pswitch_c2  #0x16
    const-string v8, "getContextReceiverParameters"

    aput-object v8, v7, v9

    goto :goto_e4

    :pswitch_c7  #0x15
    const-string v8, "getTypeParameters"

    aput-object v8, v7, v9

    goto :goto_e4

    :cond_cc
    const-string v8, "copy"

    aput-object v8, v7, v9

    goto :goto_e4

    :cond_d1
    const-string v8, "getOverriddenDescriptors"

    aput-object v8, v7, v9

    goto :goto_e4

    :cond_d6
    const-string v8, "getKind"

    aput-object v8, v7, v9

    goto :goto_e4

    :cond_db
    const-string v8, "getOriginal"

    aput-object v8, v7, v9

    goto :goto_e4

    :cond_e0
    const-string v8, "getSourceToUseForCopy"

    aput-object v8, v7, v9

    :goto_e4
    packed-switch p0, :pswitch_data_1be

    const-string v8, "<init>"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_ec  #0x28
    const-string v8, "setOverriddenDescriptors"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_f1  #0x20, 0x21, 0x22, 0x23, 0x24, 0x25
    const-string v8, "createSubstitutedCopy"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_f6  #0x1e, 0x1f
    const-string v8, "getSubstitutedInitialSignatureDescriptor"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_fb  #0x1d
    const-string v8, "doSubstitute"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_100  #0x1b
    const-string v8, "substitute"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_105  #0x14
    const-string v8, "setVisibility"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_10a  #0xf, 0x10, 0x11, 0x12, 0x13
    const-string v8, "setType"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_10f  #0xe
    const-string v8, "setInType"

    aput-object v8, v7, v6

    goto :goto_118

    :pswitch_114  #0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd
    const-string v8, "create"

    aput-object v8, v7, v6

    :goto_118
    :pswitch_118  #0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1c, 0x26, 0x27, 0x29, 0x2a
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_12f

    if-eq p0, v3, :cond_12f

    if-eq p0, v2, :cond_12f

    if-eq p0, v1, :cond_12f

    if-eq p0, v0, :cond_12f

    packed-switch p0, :pswitch_data_20a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_134

    :cond_12f
    :pswitch_12f  #0x15, 0x16, 0x17, 0x18, 0x19, 0x1a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_134
    throw p0

    nop

    :pswitch_data_136
    .packed-switch 0x15
        :pswitch_1a  #00000015
        :pswitch_1a  #00000016
        :pswitch_1a  #00000017
        :pswitch_1a  #00000018
        :pswitch_1a  #00000019
        :pswitch_1a  #0000001a
    .end packed-switch

    :pswitch_data_146
    .packed-switch 0x15
        :pswitch_2c  #00000015
        :pswitch_2c  #00000016
        :pswitch_2c  #00000017
        :pswitch_2c  #00000018
        :pswitch_2c  #00000019
        :pswitch_2c  #0000001a
    .end packed-switch

    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_99  #00000001
        :pswitch_94  #00000002
        :pswitch_8f  #00000003
        :pswitch_8a  #00000004
        :pswitch_85  #00000005
        :pswitch_80  #00000006
        :pswitch_35  #00000007
        :pswitch_99  #00000008
        :pswitch_94  #00000009
        :pswitch_8f  #0000000a
        :pswitch_8a  #0000000b
        :pswitch_85  #0000000c
        :pswitch_80  #0000000d
        :pswitch_7b  #0000000e
        :pswitch_76  #0000000f
        :pswitch_71  #00000010
        :pswitch_76  #00000011
        :pswitch_71  #00000012
        :pswitch_6c  #00000013
        :pswitch_8f  #00000014
        :pswitch_69  #00000015
        :pswitch_69  #00000016
        :pswitch_69  #00000017
        :pswitch_69  #00000018
        :pswitch_69  #00000019
        :pswitch_69  #0000001a
        :pswitch_64  #0000001b
        :pswitch_69  #0000001c
        :pswitch_5f  #0000001d
        :pswitch_5a  #0000001e
        :pswitch_55  #0000001f
        :pswitch_50  #00000020
        :pswitch_4b  #00000021
        :pswitch_46  #00000022
        :pswitch_85  #00000023
        :pswitch_41  #00000024
        :pswitch_80  #00000025
        :pswitch_69  #00000026
        :pswitch_69  #00000027
        :pswitch_3b  #00000028
        :pswitch_69  #00000029
        :pswitch_69  #0000002a
    .end packed-switch

    :pswitch_data_1ae
    .packed-switch 0x15
        :pswitch_c7  #00000015
        :pswitch_c2  #00000016
        :pswitch_bd  #00000017
        :pswitch_b8  #00000018
        :pswitch_b3  #00000019
        :pswitch_ae  #0000001a
    .end packed-switch

    :pswitch_data_1be
    .packed-switch 0x7
        :pswitch_114  #00000007
        :pswitch_114  #00000008
        :pswitch_114  #00000009
        :pswitch_114  #0000000a
        :pswitch_114  #0000000b
        :pswitch_114  #0000000c
        :pswitch_114  #0000000d
        :pswitch_10f  #0000000e
        :pswitch_10a  #0000000f
        :pswitch_10a  #00000010
        :pswitch_10a  #00000011
        :pswitch_10a  #00000012
        :pswitch_10a  #00000013
        :pswitch_105  #00000014
        :pswitch_118  #00000015
        :pswitch_118  #00000016
        :pswitch_118  #00000017
        :pswitch_118  #00000018
        :pswitch_118  #00000019
        :pswitch_118  #0000001a
        :pswitch_100  #0000001b
        :pswitch_118  #0000001c
        :pswitch_fb  #0000001d
        :pswitch_f6  #0000001e
        :pswitch_f6  #0000001f
        :pswitch_f1  #00000020
        :pswitch_f1  #00000021
        :pswitch_f1  #00000022
        :pswitch_f1  #00000023
        :pswitch_f1  #00000024
        :pswitch_f1  #00000025
        :pswitch_118  #00000026
        :pswitch_118  #00000027
        :pswitch_ec  #00000028
        :pswitch_118  #00000029
        :pswitch_118  #0000002a
    .end packed-switch

    :pswitch_data_20a
    .packed-switch 0x15
        :pswitch_12f  #00000015
        :pswitch_12f  #00000016
        :pswitch_12f  #00000017
        :pswitch_12f  #00000018
        :pswitch_12f  #00000019
        :pswitch_12f  #0000001a
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic A0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/b;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Ll5/f0;->F0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/o0;

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

    invoke-interface {p1, p0, p2}, Li5/n;->b(Li5/o0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public F0(Li5/l;Li5/d0;Li5/t;Li5/b$a;Z)Li5/o0;
    .registers 7

    new-instance v0, Ll5/f0$a;

    invoke-direct {v0, p0}, Ll5/f0$a;-><init>(Ll5/f0;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_38

    iput-object p1, v0, Ll5/f0$a;->a:Li5/l;

    iput-object p0, v0, Ll5/f0$a;->d:Li5/o0;

    if-eqz p2, :cond_33

    iput-object p2, v0, Ll5/f0$a;->b:Li5/d0;

    if-eqz p3, :cond_2d

    iput-object p3, v0, Ll5/f0$a;->c:Li5/t;

    if-eqz p4, :cond_27

    iput-object p4, v0, Ll5/f0$a;->e:Li5/b$a;

    iput-boolean p5, v0, Ll5/f0$a;->g:Z

    invoke-virtual {v0}, Ll5/f0$a;->b()Li5/o0;

    move-result-object p1

    if-eqz p1, :cond_21

    return-object p1

    :cond_21
    const/16 p1, 0x2a

    invoke-static {p1}, Ll5/f0;->z(I)V

    throw p0

    :cond_27
    const/16 p1, 0xa

    invoke-static {p1}, Ll5/f0$a;->a(I)V

    throw p0

    :cond_2d
    const/16 p1, 0x8

    invoke-static {p1}, Ll5/f0$a;->a(I)V

    throw p0

    :cond_33
    const/4 p1, 0x6

    invoke-static {p1}, Ll5/f0$a;->a(I)V

    throw p0

    :cond_38
    const/4 p1, 0x0

    invoke-static {p1}, Ll5/f0$a;->a(I)V

    throw p0
.end method

.method public H0(Li5/l;Li5/d0;Li5/t;Li5/o0;Li5/b$a;Lh6/f;Li5/v0;)Ll5/f0;
    .registers 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_52

    if-eqz p2, :cond_4c

    if-eqz p3, :cond_46

    if-eqz p5, :cond_40

    if-eqz p6, :cond_3a

    new-instance v1, Ll5/f0;

    invoke-virtual/range {p0 .. p0}, Lj5/b;->getAnnotations()Lj5/h;

    move-result-object v5

    iget-boolean v8, v0, Ll5/q0;->f:Z

    iget-boolean v12, v0, Ll5/f0;->n:Z

    invoke-virtual/range {p0 .. p0}, Ll5/f0;->isConst()Z

    move-result v13

    iget-boolean v14, v0, Ll5/f0;->p:Z

    iget-boolean v15, v0, Ll5/f0;->q:Z

    invoke-virtual/range {p0 .. p0}, Ll5/f0;->isExternal()Z

    move-result v16

    iget-boolean v0, v0, Ll5/f0;->s:Z

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Ll5/f0;-><init>(Li5/l;Li5/o0;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/b$a;Li5/v0;ZZZZZZ)V

    return-object v1

    :cond_3a
    const/16 v0, 0x24

    invoke-static {v0}, Ll5/f0;->z(I)V

    throw v1

    :cond_40
    const/16 v0, 0x23

    invoke-static {v0}, Ll5/f0;->z(I)V

    throw v1

    :cond_46
    const/16 v0, 0x22

    invoke-static {v0}, Ll5/f0;->z(I)V

    throw v1

    :cond_4c
    const/16 v0, 0x21

    invoke-static {v0}, Ll5/f0;->z(I)V

    throw v1

    :cond_52
    const/16 v0, 0x20

    invoke-static {v0}, Ll5/f0;->z(I)V

    throw v1
.end method

.method public I()Li5/r0;
    .registers 1

    iget-object p0, p0, Ll5/f0;->u:Li5/r0;

    return-object p0
.end method

.method public J0(Ll5/g0;Li5/q0;Li5/v;Li5/v;)V
    .registers 5

    iput-object p1, p0, Ll5/f0;->x:Ll5/g0;

    iput-object p2, p0, Ll5/f0;->y:Li5/q0;

    iput-object p3, p0, Ll5/f0;->A:Li5/v;

    iput-object p4, p0, Ll5/f0;->B:Li5/v;

    return-void
.end method

.method public K0(Ly6/l0;)V
    .registers 2

    return-void
.end method

.method public L()Li5/r0;
    .registers 1

    iget-object p0, p0, Ll5/f0;->v:Li5/r0;

    return-object p0
.end method

.method public L0(Ly6/l0;Ljava/util/List;Li5/r0;Li5/r0;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            "Ljava/util/List<",
            "+",
            "Li5/a1;",
            ">;",
            "Li5/r0;",
            "Li5/r0;",
            "Ljava/util/List<",
            "Li5/r0;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    if-eqz p2, :cond_1d

    if-eqz p5, :cond_17

    iput-object p1, p0, Ll5/p0;->e:Ly6/l0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ll5/f0;->w:Ljava/util/List;

    iput-object p4, p0, Ll5/f0;->v:Li5/r0;

    iput-object p3, p0, Ll5/f0;->u:Li5/r0;

    iput-object p5, p0, Ll5/f0;->t:Ljava/util/List;

    return-void

    :cond_17
    const/16 p0, 0x13

    invoke-static {p0}, Ll5/f0;->z(I)V

    throw v0

    :cond_1d
    const/16 p0, 0x12

    invoke-static {p0}, Ll5/f0;->z(I)V

    throw v0

    :cond_23
    const/16 p0, 0x11

    invoke-static {p0}, Ll5/f0;->z(I)V

    throw v0
.end method

.method public M()Li5/v;
    .registers 1

    iget-object p0, p0, Ll5/f0;->B:Li5/v;

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

.method public V()Z
    .registers 1

    iget-boolean p0, p0, Ll5/f0;->q:Z

    return p0
.end method

.method public bridge synthetic a()Li5/a;
    .registers 1

    invoke-virtual {p0}, Ll5/f0;->a()Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/b;
    .registers 1

    invoke-virtual {p0}, Ll5/f0;->a()Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/f0;->a()Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public a()Li5/o0;
    .registers 2

    iget-object v0, p0, Ll5/f0;->l:Li5/o0;

    if-ne v0, p0, :cond_5

    goto :goto_9

    :cond_5
    invoke-interface {v0}, Li5/o0;->a()Li5/o0;

    move-result-object p0

    :goto_9
    if-eqz p0, :cond_c

    return-object p0

    :cond_c
    const/16 p0, 0x26

    invoke-static {p0}, Ll5/f0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/f1;
    .registers 2

    invoke-virtual {p0, p1}, Ll5/f0;->c(Ly6/x1;)Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ly6/x1;)Li5/m;
    .registers 2

    invoke-virtual {p0, p1}, Ll5/f0;->c(Ly6/x1;)Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public c(Ly6/x1;)Li5/o0;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Ly6/x1;->h()Z

    move-result v1

    if-eqz v1, :cond_a

    return-object p0

    :cond_a
    new-instance v1, Ll5/f0$a;

    invoke-direct {v1, p0}, Ll5/f0$a;-><init>(Ll5/f0;)V

    invoke-virtual {p1}, Ly6/x1;->g()Ly6/t1;

    move-result-object p1

    if-eqz p1, :cond_22

    iput-object p1, v1, Ll5/f0$a;->f:Ly6/t1;

    invoke-virtual {p0}, Ll5/f0;->a()Li5/o0;

    move-result-object p0

    iput-object p0, v1, Ll5/f0$a;->d:Li5/o0;

    invoke-virtual {v1}, Ll5/f0$a;->b()Li5/o0;

    move-result-object p0

    return-object p0

    :cond_22
    const/16 p0, 0xf

    invoke-static {p0}, Ll5/f0$a;->a(I)V

    throw v0

    :cond_28
    const/16 p0, 0x1b

    invoke-static {p0}, Ll5/f0;->z(I)V

    throw v0
.end method

.method public d()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Li5/o0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/f0;->k:Ljava/util/Collection;

    if-eqz p0, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_9
    if-eqz p0, :cond_c

    return-object p0

    :cond_c
    const/16 p0, 0x29

    invoke-static {p0}, Ll5/f0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public f()Li5/b$a;
    .registers 1

    iget-object p0, p0, Ll5/f0;->m:Li5/b$a;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x27

    invoke-static {p0}, Ll5/f0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public f0()Z
    .registers 1

    iget-boolean p0, p0, Ll5/f0;->p:Z

    return p0
.end method

.method public getGetter()Li5/p0;
    .registers 1

    iget-object p0, p0, Ll5/f0;->x:Ll5/g0;

    return-object p0
.end method

.method public getReturnType()Ly6/l0;
    .registers 1

    invoke-virtual {p0}, Ll5/p0;->getType()Ly6/l0;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/16 p0, 0x17

    invoke-static {p0}, Ll5/f0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getSetter()Li5/q0;
    .registers 1

    iget-object p0, p0, Ll5/f0;->y:Li5/q0;

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll5/f0;->w:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "typeParameters == null for "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ll5/m;->d0(Li5/l;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVisibility()Li5/t;
    .registers 1

    iget-object p0, p0, Ll5/f0;->j:Li5/t;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x19

    invoke-static {p0}, Ll5/f0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public isConst()Z
    .registers 1

    iget-boolean p0, p0, Ll5/f0;->o:Z

    return p0
.end method

.method public isExternal()Z
    .registers 1

    iget-boolean p0, p0, Ll5/f0;->r:Z

    return p0
.end method

.method public o()Li5/d0;
    .registers 1

    iget-object p0, p0, Ll5/f0;->i:Li5/d0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x18

    invoke-static {p0}, Ll5/f0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public p0()Li5/v;
    .registers 1

    iget-object p0, p0, Ll5/f0;->A:Li5/v;

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

    iget-object p0, p0, Ll5/f0;->t:Ljava/util/List;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x16

    invoke-static {p0}, Ll5/f0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public r()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/n0;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Ll5/f0;->x:Ll5/g0;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object p0, p0, Ll5/f0;->y:Li5/q0;

    if-eqz p0, :cond_14

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object v0
.end method

.method public r0()Z
    .registers 1

    iget-boolean p0, p0, Ll5/f0;->n:Z

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

    if-eqz p1, :cond_5

    iput-object p1, p0, Ll5/f0;->k:Ljava/util/Collection;

    return-void

    :cond_5
    const/16 p0, 0x28

    invoke-static {p0}, Ll5/f0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public x()Z
    .registers 1

    iget-boolean p0, p0, Ll5/f0;->s:Z

    return p0
.end method

.method public bridge synthetic x0()Li5/o;
    .registers 1

    invoke-virtual {p0}, Ll5/f0;->a()Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic z0()Li5/f1;
    .registers 1

    invoke-virtual {p0}, Ll5/f0;->a()Li5/o0;

    move-result-object p0

    return-object p0
.end method
