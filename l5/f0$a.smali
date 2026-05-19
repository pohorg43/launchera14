.class public Ll5/f0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Li5/l;

.field public b:Li5/d0;

.field public c:Li5/t;

.field public d:Li5/o0;

.field public e:Li5/b$a;

.field public f:Ly6/t1;

.field public g:Z

.field public h:Li5/r0;

.field public i:Lh6/f;

.field public j:Ly6/l0;

.field public final synthetic k:Ll5/f0;


# direct methods
.method public constructor <init>(Ll5/f0;)V
    .registers 3

    iput-object p1, p0, Ll5/f0$a;->k:Ll5/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ll5/n;->b()Li5/l;

    move-result-object v0

    iput-object v0, p0, Ll5/f0$a;->a:Li5/l;

    invoke-virtual {p1}, Ll5/f0;->o()Li5/d0;

    move-result-object v0

    iput-object v0, p0, Ll5/f0$a;->b:Li5/d0;

    invoke-virtual {p1}, Ll5/f0;->getVisibility()Li5/t;

    move-result-object v0

    iput-object v0, p0, Ll5/f0$a;->c:Li5/t;

    const/4 v0, 0x0

    iput-object v0, p0, Ll5/f0$a;->d:Li5/o0;

    invoke-virtual {p1}, Ll5/f0;->f()Li5/b$a;

    move-result-object v0

    iput-object v0, p0, Ll5/f0$a;->e:Li5/b$a;

    sget-object v0, Ly6/t1;->a:Ly6/t1;

    iput-object v0, p0, Ll5/f0$a;->f:Ly6/t1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll5/f0$a;->g:Z

    iget-object v0, p1, Ll5/f0;->u:Li5/r0;

    iput-object v0, p0, Ll5/f0$a;->h:Li5/r0;

    invoke-virtual {p1}, Ll5/m;->getName()Lh6/f;

    move-result-object v0

    iput-object v0, p0, Ll5/f0$a;->i:Lh6/f;

    invoke-virtual {p1}, Ll5/p0;->getType()Ly6/l0;

    move-result-object p1

    iput-object p1, p0, Ll5/f0$a;->j:Ly6/l0;

    return-void
.end method

.method public static synthetic a(I)V
    .registers 25

    move/from16 v0, p0

    const/16 v1, 0x11

    const/16 v2, 0x10

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0x13

    const/16 v6, 0xb

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v0, v12, :cond_30

    if-eq v0, v11, :cond_30

    if-eq v0, v10, :cond_30

    if-eq v0, v9, :cond_30

    if-eq v0, v8, :cond_30

    if-eq v0, v7, :cond_30

    if-eq v0, v6, :cond_30

    if-eq v0, v5, :cond_30

    if-eq v0, v4, :cond_30

    if-eq v0, v3, :cond_30

    if-eq v0, v2, :cond_30

    if-eq v0, v1, :cond_30

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_32

    :cond_30
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_32
    if-eq v0, v12, :cond_4c

    if-eq v0, v11, :cond_4c

    if-eq v0, v10, :cond_4c

    if-eq v0, v9, :cond_4c

    if-eq v0, v8, :cond_4c

    if-eq v0, v7, :cond_4c

    if-eq v0, v6, :cond_4c

    if-eq v0, v5, :cond_4c

    if-eq v0, v4, :cond_4c

    if-eq v0, v3, :cond_4c

    if-eq v0, v2, :cond_4c

    if-eq v0, v1, :cond_4c

    move v14, v10

    goto :goto_4d

    :cond_4c
    move v14, v11

    :goto_4d
    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration"

    const/16 v16, 0x0

    packed-switch v0, :pswitch_data_118

    const-string v17, "owner"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_5b  #0x12
    const-string v17, "name"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_60  #0xf
    const-string v17, "substitution"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_65  #0xc
    const-string v17, "typeParameters"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_6a  #0xa
    const-string v17, "kind"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_6f  #0x8
    const-string v17, "visibility"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_74  #0x6
    const-string v17, "modality"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_79  #0x4
    const-string v17, "type"

    aput-object v17, v14, v16

    goto :goto_80

    :pswitch_7e  #0x1, 0x2, 0x3, 0x5, 0x7, 0x9, 0xb, 0xd, 0xe, 0x10, 0x11, 0x13
    aput-object v15, v14, v16

    :goto_80
    const-string v16, "setName"

    const-string v17, "setSubstitution"

    const-string v18, "setTypeParameters"

    const-string v19, "setKind"

    const-string v20, "setVisibility"

    const-string v21, "setModality"

    const-string v22, "setReturnType"

    const-string v23, "setOwner"

    if-eq v0, v12, :cond_d4

    if-eq v0, v11, :cond_cf

    if-eq v0, v10, :cond_ca

    if-eq v0, v9, :cond_c7

    if-eq v0, v8, :cond_c4

    if-eq v0, v7, :cond_c1

    if-eq v0, v6, :cond_be

    if-eq v0, v5, :cond_bb

    if-eq v0, v4, :cond_b8

    if-eq v0, v3, :cond_b3

    if-eq v0, v2, :cond_b0

    if-eq v0, v1, :cond_ab

    aput-object v15, v14, v12

    goto :goto_d6

    :cond_ab
    const-string v15, "setCopyOverrides"

    aput-object v15, v14, v12

    goto :goto_d6

    :cond_b0
    aput-object v17, v14, v12

    goto :goto_d6

    :cond_b3
    const-string v15, "setDispatchReceiverParameter"

    aput-object v15, v14, v12

    goto :goto_d6

    :cond_b8
    aput-object v18, v14, v12

    goto :goto_d6

    :cond_bb
    aput-object v16, v14, v12

    goto :goto_d6

    :cond_be
    aput-object v19, v14, v12

    goto :goto_d6

    :cond_c1
    aput-object v20, v14, v12

    goto :goto_d6

    :cond_c4
    aput-object v21, v14, v12

    goto :goto_d6

    :cond_c7
    aput-object v22, v14, v12

    goto :goto_d6

    :cond_ca
    const-string v15, "setPreserveSourceElement"

    aput-object v15, v14, v12

    goto :goto_d6

    :cond_cf
    const-string v15, "setOriginal"

    aput-object v15, v14, v12

    goto :goto_d6

    :cond_d4
    aput-object v23, v14, v12

    :goto_d6
    packed-switch v0, :pswitch_data_142

    aput-object v23, v14, v11

    goto :goto_f0

    :pswitch_dc  #0x12
    aput-object v16, v14, v11

    goto :goto_f0

    :pswitch_df  #0xf
    aput-object v17, v14, v11

    goto :goto_f0

    :pswitch_e2  #0xc
    aput-object v18, v14, v11

    goto :goto_f0

    :pswitch_e5  #0xa
    aput-object v19, v14, v11

    goto :goto_f0

    :pswitch_e8  #0x8
    aput-object v20, v14, v11

    goto :goto_f0

    :pswitch_eb  #0x6
    aput-object v21, v14, v11

    goto :goto_f0

    :pswitch_ee  #0x4
    aput-object v22, v14, v11

    :goto_f0
    :pswitch_f0  #0x1, 0x2, 0x3, 0x5, 0x7, 0x9, 0xb, 0xd, 0xe, 0x10, 0x11, 0x13
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_112

    if-eq v0, v11, :cond_112

    if-eq v0, v10, :cond_112

    if-eq v0, v9, :cond_112

    if-eq v0, v8, :cond_112

    if-eq v0, v7, :cond_112

    if-eq v0, v6, :cond_112

    if-eq v0, v5, :cond_112

    if-eq v0, v4, :cond_112

    if-eq v0, v3, :cond_112

    if-eq v0, v2, :cond_112

    if-eq v0, v1, :cond_112

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_117

    :cond_112
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_117
    throw v0

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_7e  #00000001
        :pswitch_7e  #00000002
        :pswitch_7e  #00000003
        :pswitch_79  #00000004
        :pswitch_7e  #00000005
        :pswitch_74  #00000006
        :pswitch_7e  #00000007
        :pswitch_6f  #00000008
        :pswitch_7e  #00000009
        :pswitch_6a  #0000000a
        :pswitch_7e  #0000000b
        :pswitch_65  #0000000c
        :pswitch_7e  #0000000d
        :pswitch_7e  #0000000e
        :pswitch_60  #0000000f
        :pswitch_7e  #00000010
        :pswitch_7e  #00000011
        :pswitch_5b  #00000012
        :pswitch_7e  #00000013
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_f0  #00000001
        :pswitch_f0  #00000002
        :pswitch_f0  #00000003
        :pswitch_ee  #00000004
        :pswitch_f0  #00000005
        :pswitch_eb  #00000006
        :pswitch_f0  #00000007
        :pswitch_e8  #00000008
        :pswitch_f0  #00000009
        :pswitch_e5  #0000000a
        :pswitch_f0  #0000000b
        :pswitch_e2  #0000000c
        :pswitch_f0  #0000000d
        :pswitch_f0  #0000000e
        :pswitch_df  #0000000f
        :pswitch_f0  #00000010
        :pswitch_f0  #00000011
        :pswitch_dc  #00000012
        :pswitch_f0  #00000013
    .end packed-switch
.end method


# virtual methods
.method public b()Li5/o0;
    .registers 25

    move-object/from16 v0, p0

    iget-object v9, v0, Ll5/f0$a;->k:Ll5/f0;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Li5/b$a;->b:Li5/b$a;

    sget-object v11, Ly6/e2;->d:Ly6/e2;

    sget-object v12, Ly6/e2;->e:Ly6/e2;

    iget-object v2, v0, Ll5/f0$a;->a:Li5/l;

    iget-object v3, v0, Ll5/f0$a;->b:Li5/d0;

    iget-object v4, v0, Ll5/f0$a;->c:Li5/t;

    iget-object v5, v0, Ll5/f0$a;->d:Li5/o0;

    iget-object v6, v0, Ll5/f0$a;->e:Li5/b$a;

    iget-object v7, v0, Ll5/f0$a;->i:Lh6/f;

    sget-object v8, Li5/v0;->a:Li5/v0;

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Ll5/f0;->H0(Li5/l;Li5/d0;Li5/t;Li5/o0;Li5/b$a;Lh6/f;Li5/v0;)Ll5/f0;

    move-result-object v1

    invoke-virtual {v9}, Ll5/f0;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v0, Ll5/f0$a;->f:Ly6/t1;

    invoke-static {v2, v3, v1, v15}, Ly6/c2;->d(Ljava/util/List;Ly6/t1;Li5/l;Ljava/util/List;)Ly6/x1;

    move-result-object v2

    iget-object v3, v0, Ll5/f0$a;->j:Ly6/l0;

    invoke-virtual {v2, v3, v12}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v14

    if-nez v14, :cond_3e

    :goto_3b
    const/4 v1, 0x0

    goto/16 :goto_239

    :cond_3e
    invoke-virtual {v2, v3, v11}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v3

    if-eqz v3, :cond_47

    invoke-virtual {v1, v3}, Ll5/f0;->K0(Ly6/l0;)V

    :cond_47
    iget-object v3, v0, Ll5/f0$a;->h:Li5/r0;

    if-eqz v3, :cond_55

    invoke-interface {v3, v2}, Li5/r0;->c(Ly6/x1;)Li5/r0;

    move-result-object v3

    if-nez v3, :cond_52

    goto :goto_3b

    :cond_52
    move-object/from16 v16, v3

    goto :goto_57

    :cond_55
    const/16 v16, 0x0

    :goto_57
    iget-object v3, v9, Ll5/f0;->v:Li5/r0;

    if-eqz v3, :cond_7c

    invoke-interface {v3}, Li5/d1;->getType()Ly6/l0;

    move-result-object v5

    invoke-virtual {v2, v5, v11}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v5

    if-nez v5, :cond_67

    const/4 v6, 0x0

    goto :goto_79

    :cond_67
    new-instance v6, Ll5/i0;

    new-instance v7, Ls6/d;

    invoke-interface {v3}, Li5/r0;->getValue()Ls6/g;

    move-result-object v8

    invoke-direct {v7, v1, v5, v8}, Ls6/d;-><init>(Li5/a;Ly6/l0;Ls6/g;)V

    invoke-interface {v3}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v3

    invoke-direct {v6, v1, v7, v3}, Ll5/i0;-><init>(Li5/l;Ls6/g;Lj5/h;)V

    :goto_79
    move-object/from16 v17, v6

    goto :goto_7e

    :cond_7c
    const/16 v17, 0x0

    :goto_7e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v9, Ll5/f0;->t:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_89
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li5/r0;

    invoke-interface {v6}, Li5/d1;->getType()Ly6/l0;

    move-result-object v7

    invoke-virtual {v2, v7, v11}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v7

    if-nez v7, :cond_a3

    move-object/from16 v18, v5

    const/4 v8, 0x0

    goto :goto_c1

    :cond_a3
    new-instance v8, Ll5/i0;

    new-instance v13, Ls6/c;

    invoke-interface {v6}, Li5/r0;->getValue()Ls6/g;

    move-result-object v18

    check-cast v18, Ls6/f;

    invoke-interface/range {v18 .. v18}, Ls6/f;->a()Lh6/f;

    move-result-object v4

    move-object/from16 v18, v5

    invoke-interface {v6}, Li5/r0;->getValue()Ls6/g;

    move-result-object v5

    invoke-direct {v13, v1, v7, v4, v5}, Ls6/c;-><init>(Li5/a;Ly6/l0;Lh6/f;Ls6/g;)V

    invoke-interface {v6}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v4

    invoke-direct {v8, v1, v13, v4}, Ll5/i0;-><init>(Li5/l;Ls6/g;Lj5/h;)V

    :goto_c1
    if-eqz v8, :cond_c6

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c6
    move-object/from16 v5, v18

    goto :goto_89

    :cond_c9
    move-object v13, v1

    move-object/from16 v18, v3

    invoke-virtual/range {v13 .. v18}, Ll5/f0;->L0(Ly6/l0;Ljava/util/List;Li5/r0;Li5/r0;Ljava/util/List;)V

    iget-object v3, v9, Ll5/f0;->x:Ll5/g0;

    if-nez v3, :cond_d5

    const/4 v4, 0x0

    goto :goto_11d

    :cond_d5
    new-instance v4, Ll5/g0;

    invoke-virtual {v3}, Lj5/b;->getAnnotations()Lj5/h;

    move-result-object v15

    iget-object v3, v0, Ll5/f0$a;->b:Li5/d0;

    iget-object v5, v9, Ll5/f0;->x:Ll5/g0;

    invoke-virtual {v5}, Ll5/e0;->getVisibility()Li5/t;

    move-result-object v5

    iget-object v6, v0, Ll5/f0$a;->e:Li5/b$a;

    if-ne v6, v10, :cond_f3

    invoke-virtual {v5}, Li5/t;->d()Li5/t;

    move-result-object v6

    invoke-static {v6}, Li5/s;->e(Li5/t;)Z

    move-result v6

    if-eqz v6, :cond_f3

    sget-object v5, Li5/s;->h:Li5/t;

    :cond_f3
    move-object/from16 v17, v5

    iget-object v5, v9, Ll5/f0;->x:Ll5/g0;

    iget-boolean v6, v5, Ll5/e0;->e:Z

    iget-boolean v7, v5, Ll5/e0;->f:Z

    iget-boolean v5, v5, Ll5/e0;->i:Z

    iget-object v8, v0, Ll5/f0$a;->e:Li5/b$a;

    iget-object v11, v0, Ll5/f0$a;->d:Li5/o0;

    if-nez v11, :cond_106

    const/16 v22, 0x0

    goto :goto_10c

    :cond_106
    invoke-interface {v11}, Li5/o0;->getGetter()Li5/p0;

    move-result-object v11

    move-object/from16 v22, v11

    :goto_10c
    sget-object v23, Li5/v0;->a:Li5/v0;

    move-object v13, v4

    move-object v14, v1

    move-object/from16 v16, v3

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v5

    move-object/from16 v21, v8

    invoke-direct/range {v13 .. v23}, Ll5/g0;-><init>(Li5/o0;Lj5/h;Li5/d0;Li5/t;ZZZLi5/b$a;Li5/p0;Li5/v0;)V

    :goto_11d
    if-eqz v4, :cond_134

    iget-object v3, v9, Ll5/f0;->x:Ll5/g0;

    iget-object v5, v3, Ll5/g0;->m:Ly6/l0;

    invoke-static {v2, v3}, Ll5/f0;->I0(Ly6/x1;Li5/n0;)Li5/x;

    move-result-object v3

    iput-object v3, v4, Ll5/e0;->l:Li5/x;

    if-eqz v5, :cond_130

    invoke-virtual {v2, v5, v12}, Ly6/x1;->k(Ly6/l0;Ly6/e2;)Ly6/l0;

    move-result-object v3

    goto :goto_131

    :cond_130
    const/4 v3, 0x0

    :goto_131
    invoke-virtual {v4, v3}, Ll5/g0;->F0(Ly6/l0;)V

    :cond_134
    iget-object v3, v9, Ll5/f0;->y:Li5/q0;

    if-nez v3, :cond_13a

    const/4 v5, 0x0

    goto :goto_186

    :cond_13a
    new-instance v5, Ll5/h0;

    invoke-interface {v3}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v15

    iget-object v3, v0, Ll5/f0$a;->b:Li5/d0;

    iget-object v6, v9, Ll5/f0;->y:Li5/q0;

    invoke-interface {v6}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v6

    iget-object v7, v0, Ll5/f0$a;->e:Li5/b$a;

    if-ne v7, v10, :cond_158

    invoke-virtual {v6}, Li5/t;->d()Li5/t;

    move-result-object v7

    invoke-static {v7}, Li5/s;->e(Li5/t;)Z

    move-result v7

    if-eqz v7, :cond_158

    sget-object v6, Li5/s;->h:Li5/t;

    :cond_158
    move-object/from16 v17, v6

    iget-object v6, v9, Ll5/f0;->y:Li5/q0;

    invoke-interface {v6}, Li5/n0;->C()Z

    move-result v18

    iget-object v6, v9, Ll5/f0;->y:Li5/q0;

    invoke-interface {v6}, Li5/c0;->isExternal()Z

    move-result v19

    iget-object v6, v9, Ll5/f0;->y:Li5/q0;

    invoke-interface {v6}, Li5/x;->isInline()Z

    move-result v20

    iget-object v6, v0, Ll5/f0$a;->e:Li5/b$a;

    iget-object v7, v0, Ll5/f0$a;->d:Li5/o0;

    if-nez v7, :cond_175

    const/16 v22, 0x0

    goto :goto_17b

    :cond_175
    invoke-interface {v7}, Li5/o0;->getSetter()Li5/q0;

    move-result-object v7

    move-object/from16 v22, v7

    :goto_17b
    sget-object v23, Li5/v0;->a:Li5/v0;

    move-object v13, v5

    move-object v14, v1

    move-object/from16 v16, v3

    move-object/from16 v21, v6

    invoke-direct/range {v13 .. v23}, Ll5/h0;-><init>(Li5/o0;Lj5/h;Li5/d0;Li5/t;ZZZLi5/b$a;Li5/q0;Li5/v0;)V

    :goto_186
    if-eqz v5, :cond_1e2

    iget-object v3, v9, Ll5/f0;->y:Li5/q0;

    invoke-interface {v3}, Li5/a;->g()Ljava/util/List;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v5

    move-object/from16 v18, v2

    invoke-static/range {v16 .. v21}, Ll5/r;->F0(Li5/x;Ljava/util/List;Ly6/x1;ZZ[Z)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_1c4

    iput-boolean v7, v1, Ll5/f0;->z:Z

    iget-object v3, v0, Ll5/f0$a;->a:Li5/l;

    invoke-static {v3}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object v3

    invoke-virtual {v3}, Lf5/g;->p()Ly6/s0;

    move-result-object v3

    iget-object v8, v9, Ll5/f0;->y:Li5/q0;

    invoke-interface {v8}, Li5/a;->g()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Li5/e1;

    invoke-interface {v8}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v8

    invoke-static {v5, v3, v8}, Ll5/h0;->E0(Li5/q0;Ly6/l0;Lj5/h;)Ll5/o0;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :cond_1c4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v7, :cond_1dc

    iget-object v7, v9, Ll5/f0;->y:Li5/q0;

    invoke-static {v2, v7}, Ll5/f0;->I0(Ly6/x1;Li5/n0;)Li5/x;

    move-result-object v7

    iput-object v7, v5, Ll5/e0;->l:Li5/x;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/e1;

    invoke-virtual {v5, v3}, Ll5/h0;->G0(Li5/e1;)V

    goto :goto_1e2

    :cond_1dc
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1e2
    :goto_1e2
    iget-object v3, v9, Ll5/f0;->A:Li5/v;

    if-nez v3, :cond_1e8

    const/4 v6, 0x0

    goto :goto_1f1

    :cond_1e8
    new-instance v6, Ll5/q;

    invoke-interface {v3}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v3

    invoke-direct {v6, v3, v1}, Ll5/q;-><init>(Lj5/h;Li5/o0;)V

    :goto_1f1
    iget-object v3, v9, Ll5/f0;->B:Li5/v;

    if-nez v3, :cond_1f7

    const/4 v7, 0x0

    goto :goto_200

    :cond_1f7
    new-instance v7, Ll5/q;

    invoke-interface {v3}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v3

    invoke-direct {v7, v3, v1}, Ll5/q;-><init>(Lj5/h;Li5/o0;)V

    :goto_200
    invoke-virtual {v1, v4, v5, v6, v7}, Ll5/f0;->J0(Ll5/g0;Li5/q0;Li5/v;Li5/v;)V

    iget-boolean v0, v0, Ll5/f0$a;->g:Z

    if-eqz v0, :cond_22a

    invoke-static {}, Li7/e;->a()Li7/e;

    move-result-object v0

    invoke-virtual {v9}, Ll5/f0;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_213
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_227

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li5/o0;

    invoke-interface {v4, v2}, Li5/o0;->c(Ly6/x1;)Li5/o0;

    move-result-object v4

    invoke-virtual {v0, v4}, Li7/e;->add(Ljava/lang/Object;)Z

    goto :goto_213

    :cond_227
    invoke-virtual {v1, v0}, Ll5/f0;->w0(Ljava/util/Collection;)V

    :cond_22a
    invoke-virtual {v9}, Ll5/f0;->isConst()Z

    move-result v0

    if-eqz v0, :cond_239

    iget-object v0, v9, Ll5/q0;->h:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_239

    iget-object v2, v9, Ll5/q0;->g:Lx6/j;

    invoke-virtual {v1, v2, v0}, Ll5/q0;->D0(Lx6/j;Lkotlin/jvm/functions/Function0;)V

    :cond_239
    :goto_239
    return-object v1
.end method
