.class public Lk6/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk6/h$a;
    }
.end annotation


# direct methods
.method public static synthetic a(I)V
    .registers 12

    const/16 v0, 0x19

    const/16 v1, 0x17

    const/16 v2, 0xc

    if-eq p0, v2, :cond_f

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_f

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_11

    :cond_f
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_11
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1a

    if-eq p0, v1, :cond_1a

    if-eq p0, v0, :cond_1a

    const/4 v5, 0x3

    goto :goto_1b

    :cond_1a
    move v5, v4

    :goto_1b
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_c8

    :pswitch_23  #0x3, 0x7, 0xd, 0xf, 0x11
    const-string v8, "propertyDescriptor"

    aput-object v8, v5, v7

    goto :goto_57

    :pswitch_28  #0x1e, 0x20, 0x22
    const-string v8, "owner"

    aput-object v8, v5, v7

    goto :goto_57

    :pswitch_2d  #0x1b, 0x1c, 0x1d
    const-string v8, "descriptor"

    aput-object v8, v5, v7

    goto :goto_57

    :pswitch_32  #0x16, 0x18, 0x1a
    const-string v8, "enumClass"

    aput-object v8, v5, v7

    goto :goto_57

    :pswitch_37  #0x15
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_57

    :pswitch_3c  #0x14
    const-string v8, "containingClass"

    aput-object v8, v5, v7

    goto :goto_57

    :pswitch_41  #0xc, 0x17, 0x19
    aput-object v6, v5, v7

    goto :goto_57

    :pswitch_44  #0xa
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_57

    :pswitch_49  #0x6, 0xb, 0x13
    const-string v8, "sourceElement"

    aput-object v8, v5, v7

    goto :goto_57

    :pswitch_4e  #0x2, 0x5, 0x9
    const-string v8, "parameterAnnotations"

    aput-object v8, v5, v7

    goto :goto_57

    :pswitch_53  #0x1, 0x4, 0x8, 0xe, 0x10, 0x12, 0x1f, 0x21, 0x23
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_57
    const-string v7, "createEnumValueOfMethod"

    const-string v8, "createEnumValuesMethod"

    const-string v9, "createSetter"

    const/4 v10, 0x1

    if-eq p0, v2, :cond_6d

    if-eq p0, v1, :cond_6a

    if-eq p0, v0, :cond_67

    aput-object v6, v5, v10

    goto :goto_6f

    :cond_67
    aput-object v7, v5, v10

    goto :goto_6f

    :cond_6a
    aput-object v8, v5, v10

    goto :goto_6f

    :cond_6d
    aput-object v9, v5, v10

    :goto_6f
    packed-switch p0, :pswitch_data_112

    const-string v6, "createDefaultSetter"

    aput-object v6, v5, v4

    goto :goto_b1

    :pswitch_77  #0x22, 0x23
    const-string v6, "createContextReceiverParameterForClass"

    aput-object v6, v5, v4

    goto :goto_b1

    :pswitch_7c  #0x20, 0x21
    const-string v6, "createContextReceiverParameterForCallable"

    aput-object v6, v5, v4

    goto :goto_b1

    :pswitch_81  #0x1e, 0x1f
    const-string v6, "createExtensionReceiverParameterForCallable"

    aput-object v6, v5, v4

    goto :goto_b1

    :pswitch_86  #0x1d
    const-string v6, "isEnumSpecialMethod"

    aput-object v6, v5, v4

    goto :goto_b1

    :pswitch_8b  #0x1c
    const-string v6, "isEnumValueOfMethod"

    aput-object v6, v5, v4

    goto :goto_b1

    :pswitch_90  #0x1b
    const-string v6, "isEnumValuesMethod"

    aput-object v6, v5, v4

    goto :goto_b1

    :pswitch_95  #0x1a
    const-string v6, "createEnumEntriesProperty"

    aput-object v6, v5, v4

    goto :goto_b1

    :pswitch_9a  #0x18
    aput-object v7, v5, v4

    goto :goto_b1

    :pswitch_9d  #0x16
    aput-object v8, v5, v4

    goto :goto_b1

    :pswitch_a0  #0x14, 0x15
    const-string v6, "createPrimaryConstructorForObject"

    aput-object v6, v5, v4

    goto :goto_b1

    :pswitch_a5  #0xf, 0x10, 0x11, 0x12, 0x13
    const-string v6, "createGetter"

    aput-object v6, v5, v4

    goto :goto_b1

    :pswitch_aa  #0xd, 0xe
    const-string v6, "createDefaultGetter"

    aput-object v6, v5, v4

    goto :goto_b1

    :pswitch_af  #0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb
    aput-object v9, v5, v4

    :goto_b1
    :pswitch_b1  #0xc, 0x17, 0x19
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_c1

    if-eq p0, v1, :cond_c1

    if-eq p0, v0, :cond_c1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_c6

    :cond_c1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_c6
    throw p0

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_53  #00000001
        :pswitch_4e  #00000002
        :pswitch_23  #00000003
        :pswitch_53  #00000004
        :pswitch_4e  #00000005
        :pswitch_49  #00000006
        :pswitch_23  #00000007
        :pswitch_53  #00000008
        :pswitch_4e  #00000009
        :pswitch_44  #0000000a
        :pswitch_49  #0000000b
        :pswitch_41  #0000000c
        :pswitch_23  #0000000d
        :pswitch_53  #0000000e
        :pswitch_23  #0000000f
        :pswitch_53  #00000010
        :pswitch_23  #00000011
        :pswitch_53  #00000012
        :pswitch_49  #00000013
        :pswitch_3c  #00000014
        :pswitch_37  #00000015
        :pswitch_32  #00000016
        :pswitch_41  #00000017
        :pswitch_32  #00000018
        :pswitch_41  #00000019
        :pswitch_32  #0000001a
        :pswitch_2d  #0000001b
        :pswitch_2d  #0000001c
        :pswitch_2d  #0000001d
        :pswitch_28  #0000001e
        :pswitch_53  #0000001f
        :pswitch_28  #00000020
        :pswitch_53  #00000021
        :pswitch_28  #00000022
        :pswitch_53  #00000023
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0x3
        :pswitch_af  #00000003
        :pswitch_af  #00000004
        :pswitch_af  #00000005
        :pswitch_af  #00000006
        :pswitch_af  #00000007
        :pswitch_af  #00000008
        :pswitch_af  #00000009
        :pswitch_af  #0000000a
        :pswitch_af  #0000000b
        :pswitch_b1  #0000000c
        :pswitch_aa  #0000000d
        :pswitch_aa  #0000000e
        :pswitch_a5  #0000000f
        :pswitch_a5  #00000010
        :pswitch_a5  #00000011
        :pswitch_a5  #00000012
        :pswitch_a5  #00000013
        :pswitch_a0  #00000014
        :pswitch_a0  #00000015
        :pswitch_9d  #00000016
        :pswitch_b1  #00000017
        :pswitch_9a  #00000018
        :pswitch_b1  #00000019
        :pswitch_95  #0000001a
        :pswitch_90  #0000001b
        :pswitch_8b  #0000001c
        :pswitch_86  #0000001d
        :pswitch_81  #0000001e
        :pswitch_81  #0000001f
        :pswitch_7c  #00000020
        :pswitch_7c  #00000021
        :pswitch_77  #00000022
        :pswitch_77  #00000023
    .end packed-switch
.end method

.method public static b(Li5/a;Ly6/l0;Lh6/f;Lj5/h;I)Li5/r0;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    if-eqz p3, :cond_18

    if-nez p1, :cond_8

    goto :goto_17

    :cond_8
    new-instance v1, Ll5/i0;

    new-instance v2, Ls6/c;

    invoke-direct {v2, p0, p1, p2, v0}, Ls6/c;-><init>(Li5/a;Ly6/l0;Lh6/f;Ls6/g;)V

    invoke-static {p4}, Lh6/g;->a(I)Lh6/f;

    move-result-object p1

    invoke-direct {v1, p0, v2, p3, p1}, Ll5/i0;-><init>(Li5/l;Ls6/g;Lj5/h;Lh6/f;)V

    move-object v0, v1

    :goto_17
    return-object v0

    :cond_18
    const/16 p0, 0x21

    invoke-static {p0}, Lk6/h;->a(I)V

    throw v0

    :cond_1e
    const/16 p0, 0x20

    invoke-static {p0}, Lk6/h;->a(I)V

    throw v0
.end method

.method public static c(Li5/o0;Lj5/h;)Ll5/g0;
    .registers 8

    if-eqz p0, :cond_10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p0}, Li5/o;->getSource()Li5/v0;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lk6/h;->i(Li5/o0;Lj5/h;ZZZLi5/v0;)Ll5/g0;

    move-result-object p0

    return-object p0

    :cond_10
    const/16 p0, 0xd

    invoke-static {p0}, Lk6/h;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Li5/o0;Lj5/h;Lj5/h;)Ll5/h0;
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {p0}, Li5/o;->getSource()Li5/v0;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-interface {p0}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lk6/h;->j(Li5/o0;Lj5/h;Lj5/h;ZZZLi5/t;Li5/v0;)Ll5/h0;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 p0, 0x6

    invoke-static {p0}, Lk6/h;->a(I)V

    throw v0

    :cond_1d
    const/4 p0, 0x0

    invoke-static {p0}, Lk6/h;->a(I)V

    throw v0
.end method

.method public static e(Li5/e;)Li5/o0;
    .registers 27

    const/4 v0, 0x0

    if-eqz p0, :cond_9f

    invoke-static/range {p0 .. p0}, Lk6/i;->d(Li5/l;)Li5/e0;

    move-result-object v1

    sget-object v2, Lh6/i;->a:Lh6/i;

    sget-object v2, Lh6/i;->z:Lh6/b;

    invoke-static {v1, v2}, Li5/w;->a(Li5/e0;Lh6/b;)Li5/e;

    move-result-object v15

    if-nez v15, :cond_12

    return-object v0

    :cond_12
    sget v1, Lj5/h;->I:I

    sget-object v16, Lj5/h$a;->b:Lj5/h;

    sget-object v17, Li5/d0;->a:Li5/d0;

    sget-object v18, Li5/s;->e:Li5/t;

    const/4 v5, 0x0

    sget-object v6, Lf5/j;->b:Lh6/f;

    sget-object v19, Li5/b$a;->d:Li5/b$a;

    invoke-interface/range {p0 .. p0}, Li5/o;->getSource()Li5/v0;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    invoke-static/range {v1 .. v14}, Ll5/f0;->G0(Li5/l;Lj5/h;Li5/d0;Li5/t;ZLh6/f;Li5/b$a;Li5/v0;ZZZZZZ)Ll5/f0;

    move-result-object v1

    new-instance v13, Ll5/g0;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-interface/range {p0 .. p0}, Li5/o;->getSource()Li5/v0;

    move-result-object v12

    move-object v2, v13

    move-object v3, v1

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v12}, Ll5/g0;-><init>(Li5/o0;Lj5/h;Li5/d0;Li5/t;ZZZLi5/b$a;Li5/p0;Li5/v0;)V

    iput-object v13, v1, Ll5/f0;->x:Ll5/g0;

    iput-object v0, v1, Ll5/f0;->y:Li5/q0;

    iput-object v0, v1, Ll5/f0;->A:Li5/v;

    iput-object v0, v1, Ll5/f0;->B:Li5/v;

    sget-object v0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ly6/g1;->c:Ly6/g1;

    invoke-interface {v15}, Li5/h;->h()Ly6/j1;

    move-result-object v3

    new-instance v0, Ly6/s1;

    invoke-interface/range {p0 .. p0}, Li5/e;->m()Ly6/s0;

    move-result-object v4

    invoke-direct {v0, v4}, Ly6/s1;-><init>(Ly6/l0;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v0, Ly6/m0;->a:Ly6/m0;

    const-string v0, "attributes"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static/range {v2 .. v7}, Ly6/m0;->h(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;I)Ly6/s0;

    move-result-object v21

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v25

    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v25}, Ll5/f0;->L0(Ly6/l0;Ljava/util/List;Li5/r0;Li5/r0;Ljava/util/List;)V

    invoke-virtual {v1}, Ll5/f0;->getReturnType()Ly6/l0;

    move-result-object v0

    invoke-virtual {v13, v0}, Ll5/g0;->F0(Ly6/l0;)V

    return-object v1

    :cond_9f
    const/16 v1, 0x1a

    invoke-static {v1}, Lk6/h;->a(I)V

    throw v0
.end method

.method public static f(Li5/e;)Li5/u0;
    .registers 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    sget v2, Lj5/h;->I:I

    sget-object v7, Lj5/h$a;->b:Lj5/h;

    sget-object v2, Lf5/j;->c:Lh6/f;

    sget-object v3, Li5/b$a;->d:Li5/b$a;

    invoke-interface/range {p0 .. p0}, Li5/o;->getSource()Li5/v0;

    move-result-object v4

    invoke-static {v0, v7, v2, v3, v4}, Ll5/j0;->N0(Li5/l;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)Ll5/j0;

    move-result-object v2

    new-instance v15, Ll5/o0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "value"

    invoke-static {v3}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object v3

    invoke-virtual {v3}, Lf5/g;->w()Ly6/s0;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {p0 .. p0}, Li5/o;->getSource()Li5/v0;

    move-result-object v14

    move-object v3, v15

    move-object v4, v2

    invoke-direct/range {v3 .. v14}, Ll5/o0;-><init>(Li5/a;Li5/e1;ILj5/h;Lh6/f;Ly6/l0;ZZZLy6/l0;Li5/v0;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface/range {p0 .. p0}, Li5/e;->m()Ly6/s0;

    move-result-object v14

    sget-object v15, Li5/d0;->a:Li5/d0;

    sget-object v16, Li5/s;->e:Li5/t;

    move-object v8, v2

    invoke-virtual/range {v8 .. v16}, Ll5/j0;->P0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/j0;

    move-result-object v0

    if-eqz v0, :cond_52

    return-object v0

    :cond_52
    const/16 v0, 0x19

    invoke-static {v0}, Lk6/h;->a(I)V

    throw v1

    :cond_58
    const/16 v0, 0x18

    invoke-static {v0}, Lk6/h;->a(I)V

    throw v1
.end method

.method public static g(Li5/e;)Li5/u0;
    .registers 15

    const/4 v0, 0x0

    if-eqz p0, :cond_40

    sget v1, Lj5/h;->I:I

    sget-object v1, Lj5/h$a;->b:Lj5/h;

    sget-object v2, Lf5/j;->a:Lh6/f;

    sget-object v3, Li5/b$a;->d:Li5/b$a;

    invoke-interface {p0}, Li5/o;->getSource()Li5/v0;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v4}, Ll5/j0;->N0(Li5/l;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)Ll5/j0;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {p0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object v1

    sget-object v2, Ly6/e2;->c:Ly6/e2;

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lf5/g;->h(Ly6/e2;Ly6/l0;)Ly6/s0;

    move-result-object v11

    sget-object v12, Li5/d0;->a:Li5/d0;

    sget-object v13, Li5/s;->e:Li5/t;

    invoke-virtual/range {v5 .. v13}, Ll5/j0;->P0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/j0;

    move-result-object p0

    if-eqz p0, :cond_3a

    return-object p0

    :cond_3a
    const/16 p0, 0x17

    invoke-static {p0}, Lk6/h;->a(I)V

    throw v0

    :cond_40
    const/16 p0, 0x16

    invoke-static {p0}, Lk6/h;->a(I)V

    throw v0
.end method

.method public static h(Li5/a;Ly6/l0;Lj5/h;)Li5/r0;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_f

    :cond_4
    new-instance v1, Ll5/i0;

    new-instance v2, Ls6/d;

    invoke-direct {v2, p0, p1, v0}, Ls6/d;-><init>(Li5/a;Ly6/l0;Ls6/g;)V

    invoke-direct {v1, p0, v2, p2}, Ll5/i0;-><init>(Li5/l;Ls6/g;Lj5/h;)V

    move-object v0, v1

    :goto_f
    return-object v0
.end method

.method public static i(Li5/o0;Lj5/h;ZZZLi5/v0;)Ll5/g0;
    .registers 18

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    if-eqz p5, :cond_1f

    new-instance v0, Ll5/g0;

    invoke-interface {p0}, Li5/c0;->o()Li5/d0;

    move-result-object v4

    invoke-interface {p0}, Li5/c0;->getVisibility()Li5/t;

    move-result-object v5

    sget-object v9, Li5/b$a;->a:Li5/b$a;

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v11}, Ll5/g0;-><init>(Li5/o0;Lj5/h;Li5/d0;Li5/t;ZZZLi5/b$a;Li5/p0;Li5/v0;)V

    return-object v0

    :cond_1f
    const/16 v1, 0x13

    invoke-static {v1}, Lk6/h;->a(I)V

    throw v0

    :cond_25
    const/16 v1, 0x12

    invoke-static {v1}, Lk6/h;->a(I)V

    throw v0
.end method

.method public static j(Li5/o0;Lj5/h;Lj5/h;ZZZLi5/t;Li5/v0;)Ll5/h0;
    .registers 21

    move-object v0, p2

    const/4 v1, 0x0

    if-eqz p1, :cond_41

    if-eqz v0, :cond_3b

    if-eqz p6, :cond_35

    if-eqz p7, :cond_2f

    new-instance v1, Ll5/h0;

    invoke-interface {p0}, Li5/c0;->o()Li5/d0;

    move-result-object v5

    sget-object v10, Li5/b$a;->a:Li5/b$a;

    const/4 v11, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p6

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v12, p7

    invoke-direct/range {v2 .. v12}, Ll5/h0;-><init>(Li5/o0;Lj5/h;Li5/d0;Li5/t;ZZZLi5/b$a;Li5/q0;Li5/v0;)V

    invoke-interface {p0}, Li5/d1;->getType()Ly6/l0;

    move-result-object v2

    invoke-static {v1, v2, p2}, Ll5/h0;->E0(Li5/q0;Ly6/l0;Lj5/h;)Ll5/o0;

    move-result-object v0

    invoke-virtual {v1, v0}, Ll5/h0;->G0(Li5/e1;)V

    return-object v1

    :cond_2f
    const/16 v0, 0xb

    invoke-static {v0}, Lk6/h;->a(I)V

    throw v1

    :cond_35
    const/16 v0, 0xa

    invoke-static {v0}, Lk6/h;->a(I)V

    throw v1

    :cond_3b
    const/16 v0, 0x9

    invoke-static {v0}, Lk6/h;->a(I)V

    throw v1

    :cond_41
    const/16 v0, 0x8

    invoke-static {v0}, Lk6/h;->a(I)V

    throw v1
.end method

.method public static k(Li5/x;)Z
    .registers 3

    invoke-interface {p0}, Li5/b;->f()Li5/b$a;

    move-result-object v0

    sget-object v1, Li5/b$a;->d:Li5/b$a;

    if-ne v0, v1, :cond_14

    invoke-interface {p0}, Li5/x;->b()Li5/l;

    move-result-object p0

    invoke-static {p0}, Lk6/i;->q(Li5/l;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method
