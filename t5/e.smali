.class public Lt5/e;
.super Ll5/j0;
.source ""

# interfaces
.implements Lt5/a;


# static fields
.field public static final G:Li5/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li5/a$a<",
            "Li5/e1;",
            ">;"
        }
    .end annotation
.end field

.field public static final H:Li5/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li5/a$a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public E:I

.field public final F:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lt5/e$a;

    invoke-direct {v0}, Lt5/e$a;-><init>()V

    sput-object v0, Lt5/e;->G:Li5/a$a;

    new-instance v0, Lt5/e$b;

    invoke-direct {v0}, Lt5/e$b;-><init>()V

    sput-object v0, Lt5/e;->H:Li5/a$a;

    return-void
.end method

.method public constructor <init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;Z)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    if-eqz p3, :cond_23

    if-eqz p4, :cond_1e

    if-eqz p5, :cond_19

    if-eqz p6, :cond_14

    invoke-direct/range {p0 .. p6}, Ll5/j0;-><init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;)V

    iput v0, p0, Lt5/e;->E:I

    iput-boolean p7, p0, Lt5/e;->F:Z

    return-void

    :cond_14
    const/4 p0, 0x4

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v1

    :cond_19
    const/4 p0, 0x3

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v1

    :cond_1e
    const/4 p0, 0x2

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v1

    :cond_23
    const/4 p0, 0x1

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v1

    :cond_28
    invoke-static {v0}, Lt5/e;->z(I)V

    throw v1
.end method

.method public static R0(Li5/l;Lj5/h;Lh6/f;Li5/v0;Z)Lt5/e;
    .registers 14

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    if-eqz p2, :cond_1c

    if-eqz p3, :cond_16

    new-instance v0, Lt5/e;

    const/4 v3, 0x0

    sget-object v6, Li5/b$a;->a:Li5/b$a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lt5/e;-><init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;Z)V

    return-object v0

    :cond_16
    const/16 p0, 0x8

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v0

    :cond_1c
    const/4 p0, 0x7

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v0

    :cond_21
    const/4 p0, 0x5

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 12

    const/16 v0, 0x15

    const/16 v1, 0x12

    const/16 v2, 0xd

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

    const-string v6, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_a4

    :pswitch_23  #0x5
    const-string v8, "containingDeclaration"

    aput-object v8, v5, v7

    goto :goto_61

    :pswitch_28  #0x14
    const-string v8, "enhancedReturnType"

    aput-object v8, v5, v7

    goto :goto_61

    :pswitch_2d  #0x13
    const-string v8, "enhancedValueParameterTypes"

    aput-object v8, v5, v7

    goto :goto_61

    :pswitch_32  #0xe
    const-string v8, "newOwner"

    aput-object v8, v5, v7

    goto :goto_61

    :pswitch_37  #0xd, 0x12, 0x15
    aput-object v6, v5, v7

    goto :goto_61

    :pswitch_3a  #0xc
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_61

    :pswitch_3f  #0xb
    const-string v8, "unsubstitutedValueParameters"

    aput-object v8, v5, v7

    goto :goto_61

    :pswitch_44  #0xa
    const-string v8, "typeParameters"

    aput-object v8, v5, v7

    goto :goto_61

    :pswitch_49  #0x9
    const-string v8, "contextReceiverParameters"

    aput-object v8, v5, v7

    goto :goto_61

    :pswitch_4e  #0x4, 0x8, 0x11
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_61

    :pswitch_53  #0x3, 0xf
    const-string v8, "kind"

    aput-object v8, v5, v7

    goto :goto_61

    :pswitch_58  #0x2, 0x7
    const-string v8, "name"

    aput-object v8, v5, v7

    goto :goto_61

    :pswitch_5d  #0x1, 0x6, 0x10
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_61
    const-string v7, "enhance"

    const-string v8, "createSubstitutedCopy"

    const-string v9, "initialize"

    const/4 v10, 0x1

    if-eq p0, v2, :cond_77

    if-eq p0, v1, :cond_74

    if-eq p0, v0, :cond_71

    aput-object v6, v5, v10

    goto :goto_79

    :cond_71
    aput-object v7, v5, v10

    goto :goto_79

    :cond_74
    aput-object v8, v5, v10

    goto :goto_79

    :cond_77
    aput-object v9, v5, v10

    :goto_79
    packed-switch p0, :pswitch_data_d2

    const-string v6, "<init>"

    aput-object v6, v5, v4

    goto :goto_8e

    :pswitch_81  #0x13, 0x14
    aput-object v7, v5, v4

    goto :goto_8e

    :pswitch_84  #0xe, 0xf, 0x10, 0x11
    aput-object v8, v5, v4

    goto :goto_8e

    :pswitch_87  #0x9, 0xa, 0xb, 0xc
    aput-object v9, v5, v4

    goto :goto_8e

    :pswitch_8a  #0x5, 0x6, 0x7, 0x8
    const-string v6, "createJavaMethod"

    aput-object v6, v5, v4

    :goto_8e
    :pswitch_8e  #0xd, 0x12, 0x15
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_9e

    if-eq p0, v1, :cond_9e

    if-eq p0, v0, :cond_9e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a3

    :cond_9e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_a3
    throw p0

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_5d  #00000001
        :pswitch_58  #00000002
        :pswitch_53  #00000003
        :pswitch_4e  #00000004
        :pswitch_23  #00000005
        :pswitch_5d  #00000006
        :pswitch_58  #00000007
        :pswitch_4e  #00000008
        :pswitch_49  #00000009
        :pswitch_44  #0000000a
        :pswitch_3f  #0000000b
        :pswitch_3a  #0000000c
        :pswitch_37  #0000000d
        :pswitch_32  #0000000e
        :pswitch_53  #0000000f
        :pswitch_5d  #00000010
        :pswitch_4e  #00000011
        :pswitch_37  #00000012
        :pswitch_2d  #00000013
        :pswitch_28  #00000014
        :pswitch_37  #00000015
    .end packed-switch

    :pswitch_data_d2
    .packed-switch 0x5
        :pswitch_8a  #00000005
        :pswitch_8a  #00000006
        :pswitch_8a  #00000007
        :pswitch_8a  #00000008
        :pswitch_87  #00000009
        :pswitch_87  #0000000a
        :pswitch_87  #0000000b
        :pswitch_87  #0000000c
        :pswitch_8e  #0000000d
        :pswitch_84  #0000000e
        :pswitch_84  #0000000f
        :pswitch_84  #00000010
        :pswitch_84  #00000011
        :pswitch_8e  #00000012
        :pswitch_81  #00000013
        :pswitch_81  #00000014
        :pswitch_8e  #00000015
    .end packed-switch
.end method


# virtual methods
.method public D0(Li5/l;Li5/x;Li5/b$a;Lh6/f;Lj5/h;Li5/v0;)Ll5/r;
    .registers 16

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    if-eqz p3, :cond_32

    if-eqz p5, :cond_2c

    new-instance v0, Lt5/e;

    move-object v3, p2

    check-cast v3, Li5/u0;

    if-eqz p4, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object p4

    :goto_13
    move-object v5, p4

    iget-boolean v8, p0, Lt5/e;->F:Z

    move-object v1, v0

    move-object v2, p1

    move-object v4, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lt5/e;-><init>(Li5/l;Li5/u0;Lj5/h;Lh6/f;Li5/b$a;Li5/v0;Z)V

    iget p0, p0, Lt5/e;->E:I

    invoke-static {p0}, Lk/b;->p(I)Z

    move-result p1

    invoke-static {p0}, Lk/b;->q(I)Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lt5/e;->S0(ZZ)V

    return-object v0

    :cond_2c
    const/16 p0, 0x10

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v0

    :cond_32
    const/16 p0, 0xf

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v0

    :cond_38
    const/16 p0, 0xe

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v0
.end method

.method public Q0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;Ljava/util/Map;)Ll5/j0;
    .registers 11
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
            "Ljava/util/Map<",
            "+",
            "Li5/a$a<",
            "*>;*>;)",
            "Ll5/j0;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_b2

    if-eqz p4, :cond_ac

    if-eqz p5, :cond_a6

    if-eqz p8, :cond_a0

    invoke-super/range {p0 .. p9}, Ll5/j0;->Q0(Li5/r0;Li5/r0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ly6/l0;Li5/d0;Li5/t;Ljava/util/Map;)Ll5/j0;

    sget-object p1, Lf7/s;->a:Lf7/s;

    const-string p2, "functionDescriptor"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf7/s;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf7/k;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p3, Lf7/k;->a:Lh6/f;

    const/4 p5, 0x0

    if-eqz p4, :cond_3f

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object p4

    iget-object p6, p3, Lf7/k;->a:Lh6/f;

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3f

    goto :goto_67

    :cond_3f
    iget-object p4, p3, Lf7/k;->b:Lk7/f;

    if-eqz p4, :cond_59

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object p4

    invoke-virtual {p4}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p4

    const-string p6, "functionDescriptor.name.asString()"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p6, p3, Lf7/k;->b:Lk7/f;

    invoke-virtual {p6, p4}, Lk7/f;->a(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_59

    goto :goto_67

    :cond_59
    iget-object p4, p3, Lf7/k;->c:Ljava/util/Collection;

    if-eqz p4, :cond_69

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object p6

    invoke-interface {p4, p6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_69

    :goto_67
    move p4, p5

    goto :goto_6a

    :cond_69
    const/4 p4, 0x1

    :goto_6a
    if-eqz p4, :cond_1b

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p3, Lf7/k;->e:[Lf7/f;

    array-length p2, p1

    :goto_72
    if-ge p5, p2, :cond_85

    aget-object p4, p1, p5

    invoke-interface {p4, p0}, Lf7/f;->a(Li5/x;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_82

    new-instance p1, Lf7/g$b;

    invoke-direct {p1, p4}, Lf7/g$b;-><init>(Ljava/lang/String;)V

    goto :goto_9b

    :cond_82
    add-int/lit8 p5, p5, 0x1

    goto :goto_72

    :cond_85
    iget-object p1, p3, Lf7/k;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_96

    new-instance p2, Lf7/g$b;

    invoke-direct {p2, p1}, Lf7/g$b;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_9b

    :cond_96
    sget-object p1, Lf7/g$c;->b:Lf7/g$c;

    goto :goto_9b

    :cond_99
    sget-object p1, Lf7/g$a;->b:Lf7/g$a;

    :goto_9b
    iget-boolean p1, p1, Lf7/g;->a:Z

    iput-boolean p1, p0, Ll5/r;->m:Z

    return-object p0

    :cond_a0
    const/16 p0, 0xc

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v0

    :cond_a6
    const/16 p0, 0xb

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v0

    :cond_ac
    const/16 p0, 0xa

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v0

    :cond_b2
    const/16 p0, 0x9

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v0
.end method

.method public S0(ZZ)V
    .registers 3

    if-eqz p1, :cond_8

    if-eqz p2, :cond_6

    const/4 p1, 0x4

    goto :goto_d

    :cond_6
    const/4 p1, 0x2

    goto :goto_d

    :cond_8
    if-eqz p2, :cond_c

    const/4 p1, 0x3

    goto :goto_d

    :cond_c
    const/4 p1, 0x1

    :goto_d
    iput p1, p0, Lt5/e;->E:I

    return-void
.end method

.method public c0()Z
    .registers 1

    iget p0, p0, Lt5/e;->E:I

    invoke-static {p0}, Lk/b;->q(I)Z

    move-result p0

    return p0
.end method

.method public o0(Ly6/l0;Ljava/util/List;Ly6/l0;Lh4/j;)Lt5/a;
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_44

    invoke-virtual {p0}, Ll5/r;->g()Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v1, p0}, Lt5/h;->a(Ljava/util/Collection;Ljava/util/Collection;Li5/a;)Ljava/util/List;

    move-result-object p2

    if-nez p1, :cond_f

    move-object p1, v0

    goto :goto_17

    :cond_f
    sget v1, Lj5/h;->I:I

    sget-object v1, Lj5/h$a;->b:Lj5/h;

    invoke-static {p0, p1, v1}, Lk6/h;->h(Li5/a;Ly6/l0;Lj5/h;)Li5/r0;

    move-result-object p1

    :goto_17
    invoke-virtual {p0}, Ll5/j0;->q()Li5/x$a;

    move-result-object p0

    check-cast p0, Ll5/r$c;

    invoke-virtual {p0, p2}, Ll5/r$c;->c(Ljava/util/List;)Li5/x$a;

    invoke-virtual {p0, p3}, Ll5/r$c;->a(Ly6/l0;)Li5/x$a;

    iput-object p1, p0, Ll5/r$c;->i:Li5/r0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ll5/r$c;->p:Z

    iput-boolean p1, p0, Ll5/r$c;->o:Z

    invoke-virtual {p0}, Ll5/r$c;->build()Li5/x;

    move-result-object p0

    check-cast p0, Lt5/e;

    if-eqz p4, :cond_3b

    iget-object p1, p4, Lh4/j;->a:Ljava/lang/Object;

    check-cast p1, Li5/a$a;

    iget-object p2, p4, Lh4/j;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ll5/r;->I0(Li5/a$a;Ljava/lang/Object;)V

    :cond_3b
    if-eqz p0, :cond_3e

    return-object p0

    :cond_3e
    const/16 p0, 0x15

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v0

    :cond_44
    const/16 p0, 0x14

    invoke-static {p0}, Lt5/e;->z(I)V

    throw v0
.end method
