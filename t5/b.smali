.class public Lt5/b;
.super Ll5/i;
.source ""

# interfaces
.implements Lt5/a;


# instance fields
.field public F:Ljava/lang/Boolean;

.field public G:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Li5/e;Lt5/b;Lj5/h;ZLi5/b$a;Li5/v0;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    if-eqz p3, :cond_1b

    if-eqz p5, :cond_16

    if-eqz p6, :cond_11

    invoke-direct/range {p0 .. p6}, Ll5/i;-><init>(Li5/e;Li5/k;Lj5/h;ZLi5/b$a;Li5/v0;)V

    iput-object v0, p0, Lt5/b;->F:Ljava/lang/Boolean;

    iput-object v0, p0, Lt5/b;->G:Ljava/lang/Boolean;

    return-void

    :cond_11
    const/4 p0, 0x3

    invoke-static {p0}, Lt5/b;->z(I)V

    throw v0

    :cond_16
    const/4 p0, 0x2

    invoke-static {p0}, Lt5/b;->z(I)V

    throw v0

    :cond_1b
    const/4 p0, 0x1

    invoke-static {p0}, Lt5/b;->z(I)V

    throw v0

    :cond_20
    const/4 p0, 0x0

    invoke-static {p0}, Lt5/b;->z(I)V

    throw v0
.end method

.method public static Q0(Li5/e;Lj5/h;ZLi5/v0;)Lt5/b;
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    if-eqz p3, :cond_13

    new-instance v0, Lt5/b;

    const/4 v3, 0x0

    sget-object v6, Li5/b$a;->a:Li5/b$a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lt5/b;-><init>(Li5/e;Lt5/b;Lj5/h;ZLi5/b$a;Li5/v0;)V

    return-object v0

    :cond_13
    const/4 p0, 0x6

    invoke-static {p0}, Lt5/b;->z(I)V

    throw v0

    :cond_18
    const/4 p0, 0x4

    invoke-static {p0}, Lt5/b;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 10

    const/16 v0, 0x12

    const/16 v1, 0xb

    if-eq p0, v1, :cond_b

    if-eq p0, v0, :cond_b

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_d

    :cond_b
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_d
    const/4 v3, 0x2

    if-eq p0, v1, :cond_14

    if-eq p0, v0, :cond_14

    const/4 v4, 0x3

    goto :goto_15

    :cond_14
    move v4, v3

    :goto_15
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_84

    :pswitch_1d  #0x4
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_22  #0x11
    const-string v7, "enhancedReturnType"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_27  #0x10
    const-string v7, "enhancedValueParameterTypes"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_2c  #0xe
    const-string v7, "sourceElement"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_31  #0xb, 0x12
    aput-object v5, v4, v6

    goto :goto_47

    :pswitch_34  #0x7, 0xc
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_39  #0x3, 0x6, 0xa
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_3e  #0x2, 0x8, 0xd
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_47

    :pswitch_43  #0x1, 0x5, 0x9, 0xf
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_47
    const-string v6, "enhance"

    const-string v7, "createSubstitutedCopy"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_56

    if-eq p0, v0, :cond_53

    aput-object v5, v4, v8

    goto :goto_58

    :cond_53
    aput-object v6, v4, v8

    goto :goto_58

    :cond_56
    aput-object v7, v4, v8

    :goto_58
    packed-switch p0, :pswitch_data_ac

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_6f

    :pswitch_60  #0x10, 0x11
    aput-object v6, v4, v3

    goto :goto_6f

    :pswitch_63  #0xc, 0xd, 0xe, 0xf
    const-string v5, "createDescriptor"

    aput-object v5, v4, v3

    goto :goto_6f

    :pswitch_68  #0x7, 0x8, 0x9, 0xa
    aput-object v7, v4, v3

    goto :goto_6f

    :pswitch_6b  #0x4, 0x5, 0x6
    const-string v5, "createJavaConstructor"

    aput-object v5, v4, v3

    :goto_6f
    :pswitch_6f  #0xb, 0x12
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_7d

    if-eq p0, v0, :cond_7d

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_82

    :cond_7d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_82
    throw p0

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_43  #00000001
        :pswitch_3e  #00000002
        :pswitch_39  #00000003
        :pswitch_1d  #00000004
        :pswitch_43  #00000005
        :pswitch_39  #00000006
        :pswitch_34  #00000007
        :pswitch_3e  #00000008
        :pswitch_43  #00000009
        :pswitch_39  #0000000a
        :pswitch_31  #0000000b
        :pswitch_34  #0000000c
        :pswitch_3e  #0000000d
        :pswitch_2c  #0000000e
        :pswitch_43  #0000000f
        :pswitch_27  #00000010
        :pswitch_22  #00000011
        :pswitch_31  #00000012
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x4
        :pswitch_6b  #00000004
        :pswitch_6b  #00000005
        :pswitch_6b  #00000006
        :pswitch_68  #00000007
        :pswitch_68  #00000008
        :pswitch_68  #00000009
        :pswitch_68  #0000000a
        :pswitch_6f  #0000000b
        :pswitch_63  #0000000c
        :pswitch_63  #0000000d
        :pswitch_63  #0000000e
        :pswitch_63  #0000000f
        :pswitch_60  #00000010
        :pswitch_60  #00000011
        :pswitch_6f  #00000012
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic D0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/r;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lt5/b;->R0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Lt5/b;

    move-result-object p0

    return-object p0
.end method

.method public J0(Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lt5/b;->F:Ljava/lang/Boolean;

    return-void
.end method

.method public K0(Z)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lt5/b;->G:Ljava/lang/Boolean;

    return-void
.end method

.method public bridge synthetic M0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/i;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lt5/b;->R0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Lt5/b;

    move-result-object p0

    return-object p0
.end method

.method public R0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Lt5/b;
    .registers 14

    const/4 p4, 0x0

    if-eqz p1, :cond_8b

    if-eqz p3, :cond_85

    if-eqz p5, :cond_7f

    if-eqz p6, :cond_79

    sget-object v0, Li5/b$a;->a:Li5/b$a;

    if-eq p3, v0, :cond_39

    sget-object v0, Li5/b$a;->d:Li5/b$a;

    if-ne p3, v0, :cond_12

    goto :goto_39

    :cond_12
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Attempt at creating a constructor that is not a declaration: \ncopy from: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nnewOwner: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nkind: "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_39
    :goto_39
    move-object v1, p1

    check-cast v1, Li5/e;

    move-object v2, p2

    check-cast v2, Lt5/b;

    if-eqz v1, :cond_73

    if-eqz p3, :cond_6d

    if-eqz p6, :cond_67

    if-eqz p5, :cond_61

    new-instance p1, Lt5/b;

    iget-boolean v4, p0, Ll5/i;->E:Z

    move-object v0, p1

    move-object v3, p5

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lt5/b;-><init>(Li5/e;Lt5/b;Lj5/h;ZLi5/b$a;Li5/v0;)V

    invoke-virtual {p0}, Lt5/b;->S0()Z

    move-result p2

    invoke-virtual {p1, p2}, Lt5/b;->J0(Z)V

    invoke-virtual {p0}, Lt5/b;->c0()Z

    move-result p0

    invoke-virtual {p1, p0}, Lt5/b;->K0(Z)V

    return-object p1

    :cond_61
    const/16 p0, 0xf

    invoke-static {p0}, Lt5/b;->z(I)V

    throw p4

    :cond_67
    const/16 p0, 0xe

    invoke-static {p0}, Lt5/b;->z(I)V

    throw p4

    :cond_6d
    const/16 p0, 0xd

    invoke-static {p0}, Lt5/b;->z(I)V

    throw p4

    :cond_73
    const/16 p0, 0xc

    invoke-static {p0}, Lt5/b;->z(I)V

    throw p4

    :cond_79
    const/16 p0, 0xa

    invoke-static {p0}, Lt5/b;->z(I)V

    throw p4

    :cond_7f
    const/16 p0, 0x9

    invoke-static {p0}, Lt5/b;->z(I)V

    throw p4

    :cond_85
    const/16 p0, 0x8

    invoke-static {p0}, Lt5/b;->z(I)V

    throw p4

    :cond_8b
    const/4 p0, 0x7

    invoke-static {p0}, Lt5/b;->z(I)V

    throw p4
.end method

.method public S0()Z
    .registers 1

    iget-object p0, p0, Lt5/b;->F:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public c0()Z
    .registers 1

    iget-object p0, p0, Lt5/b;->G:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public o0(Ly6/l0;Ljava/util/List;Ly6/l0;Lh4/j;)Lt5/a;
    .registers 18

    move-object v0, p1

    move-object/from16 v1, p4

    const/4 v2, 0x0

    if-eqz p3, :cond_55

    invoke-virtual {p0}, Ll5/i;->N0()Li5/e;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Ll5/r;->f()Li5/b$a;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0}, Lj5/b;->getAnnotations()Lj5/h;

    move-result-object v8

    invoke-virtual {p0}, Ll5/n;->getSource()Li5/v0;

    move-result-object v9

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lt5/b;->R0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Lt5/b;

    move-result-object v12

    if-nez v0, :cond_20

    goto :goto_28

    :cond_20
    sget v2, Lj5/h;->I:I

    sget-object v2, Lj5/h$a;->b:Lj5/h;

    invoke-static {v12, p1, v2}, Lk6/h;->h(Li5/a;Ly6/l0;Lj5/h;)Li5/r0;

    move-result-object v2

    :goto_28
    move-object v0, p0

    move-object v4, v2

    iget-object v5, v0, Ll5/r;->j:Li5/r0;

    sget-object v6, Li4/y;->a:Li4/y;

    invoke-virtual {p0}, Ll5/r;->getTypeParameters()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Ll5/r;->g()Ljava/util/List;

    move-result-object v2

    move-object v3, p2

    invoke-static {p2, v2, v12}, Lt5/h;->a(Ljava/util/Collection;Ljava/util/Collection;Li5/a;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Ll5/r;->o()Li5/d0;

    move-result-object v10

    invoke-virtual {p0}, Ll5/r;->getVisibility()Li5/t;

    move-result-object v11

    move-object v3, v12

    move-object/from16 v9, p3

    invoke-virtual/range {v3 .. v11}, Ll5/r;->G0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;)Ll5/r;

    if-eqz v1, :cond_54

    iget-object v0, v1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v0, Li5/a$a;

    iget-object v1, v1, Lh4/j;->b:Ljava/lang/Object;

    invoke-virtual {v12, v0, v1}, Ll5/r;->I0(Li5/a$a;Ljava/lang/Object;)V

    :cond_54
    return-object v12

    :cond_55
    const/16 v0, 0x11

    invoke-static {v0}, Lt5/b;->z(I)V

    throw v2
.end method
