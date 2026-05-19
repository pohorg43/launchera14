.class public Ll5/g$c;
.super Ly6/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final c:Li5/y0;

.field public final synthetic d:Ll5/g;


# direct methods
.method public constructor <init>(Ll5/g;Lx6/m;Li5/y0;)V
    .registers 4

    if-eqz p2, :cond_a

    iput-object p1, p0, Ll5/g$c;->d:Ll5/g;

    invoke-direct {p0, p2}, Ly6/j;-><init>(Lx6/m;)V

    iput-object p3, p0, Ll5/g$c;->c:Li5/y0;

    return-void

    :cond_a
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/g$c;->r(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic r(I)V
    .registers 12

    const/16 v0, 0x8

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p0, v5, :cond_16

    if-eq p0, v4, :cond_16

    if-eq p0, v3, :cond_16

    if-eq p0, v2, :cond_16

    if-eq p0, v1, :cond_16

    if-eq p0, v0, :cond_16

    const-string v6, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_18

    :cond_16
    const-string v6, "@NotNull method %s.%s must not return null"

    :goto_18
    if-eq p0, v5, :cond_26

    if-eq p0, v4, :cond_26

    if-eq p0, v3, :cond_26

    if-eq p0, v2, :cond_26

    if-eq p0, v1, :cond_26

    if-eq p0, v0, :cond_26

    move v7, v3

    goto :goto_27

    :cond_26
    move v7, v4

    :goto_27
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor"

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_a2

    const-string v10, "storageManager"

    aput-object v10, v7, v9

    goto :goto_45

    :pswitch_34  #0x9
    const-string v10, "classifier"

    aput-object v10, v7, v9

    goto :goto_45

    :pswitch_39  #0x7
    const-string v10, "supertypes"

    aput-object v10, v7, v9

    goto :goto_45

    :pswitch_3e  #0x6
    const-string v10, "type"

    aput-object v10, v7, v9

    goto :goto_45

    :pswitch_43  #0x1, 0x2, 0x3, 0x4, 0x5, 0x8
    aput-object v8, v7, v9

    :goto_45
    const-string v9, "processSupertypesWithoutCycles"

    if-eq p0, v5, :cond_6d

    if-eq p0, v4, :cond_68

    if-eq p0, v3, :cond_63

    if-eq p0, v2, :cond_5e

    if-eq p0, v1, :cond_59

    if-eq p0, v0, :cond_56

    aput-object v8, v7, v5

    goto :goto_71

    :cond_56
    aput-object v9, v7, v5

    goto :goto_71

    :cond_59
    const-string v8, "getSupertypeLoopChecker"

    aput-object v8, v7, v5

    goto :goto_71

    :cond_5e
    const-string v8, "getBuiltIns"

    aput-object v8, v7, v5

    goto :goto_71

    :cond_63
    const-string v8, "getDeclarationDescriptor"

    aput-object v8, v7, v5

    goto :goto_71

    :cond_68
    const-string v8, "getParameters"

    aput-object v8, v7, v5

    goto :goto_71

    :cond_6d
    const-string v8, "computeSupertypes"

    aput-object v8, v7, v5

    :goto_71
    packed-switch p0, :pswitch_data_b8

    const-string v8, "<init>"

    aput-object v8, v7, v4

    goto :goto_85

    :pswitch_79  #0x9
    const-string v8, "isSameClassifier"

    aput-object v8, v7, v4

    goto :goto_85

    :pswitch_7e  #0x7
    aput-object v9, v7, v4

    goto :goto_85

    :pswitch_81  #0x6
    const-string v8, "reportSupertypeLoopError"

    aput-object v8, v7, v4

    :goto_85
    :pswitch_85  #0x1, 0x2, 0x3, 0x4, 0x5, 0x8
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eq p0, v5, :cond_9b

    if-eq p0, v4, :cond_9b

    if-eq p0, v3, :cond_9b

    if-eq p0, v2, :cond_9b

    if-eq p0, v1, :cond_9b

    if-eq p0, v0, :cond_9b

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a0

    :cond_9b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_a0
    throw p0

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_43  #00000001
        :pswitch_43  #00000002
        :pswitch_43  #00000003
        :pswitch_43  #00000004
        :pswitch_43  #00000005
        :pswitch_3e  #00000006
        :pswitch_39  #00000007
        :pswitch_43  #00000008
        :pswitch_34  #00000009
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_85  #00000001
        :pswitch_85  #00000002
        :pswitch_85  #00000003
        :pswitch_85  #00000004
        :pswitch_85  #00000005
        :pswitch_81  #00000006
        :pswitch_7e  #00000007
        :pswitch_85  #00000008
        :pswitch_79  #00000009
    .end packed-switch
.end method


# virtual methods
.method public e()Li5/h;
    .registers 1

    iget-object p0, p0, Ll5/g$c;->d:Ll5/g;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/g$c;->r(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public f()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getParameters()Ljava/util/List;
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
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/g$c;->r(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public h(Li5/h;)Z
    .registers 5

    instance-of v0, p1, Li5/a1;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    sget-object v0, Lk6/g;->a:Lk6/g;

    iget-object p0, p0, Ll5/g$c;->d:Ll5/g;

    check-cast p1, Li5/a1;

    const-string v2, "a"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "b"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lk6/f;->a:Lk6/f;

    invoke-virtual {v0, p0, p1, v1, v2}, Lk6/g;->b(Li5/a1;Li5/a1;ZLkotlin/jvm/functions/Function2;)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method public j()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/g$c;->d:Ll5/g;

    invoke-virtual {p0}, Ll5/g;->E0()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/g$c;->r(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public k()Lf5/g;
    .registers 1

    iget-object p0, p0, Ll5/g$c;->d:Ll5/g;

    invoke-static {p0}, Lo6/c;->e(Li5/l;)Lf5/g;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/4 p0, 0x4

    invoke-static {p0}, Ll5/g$c;->r(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public l()Ly6/l0;
    .registers 2

    sget-object p0, La7/i;->u:La7/i;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object p0

    return-object p0
.end method

.method public n()Li5/y0;
    .registers 1

    iget-object p0, p0, Ll5/g$c;->c:Li5/y0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/g$c;->r(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public p(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;)",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    iget-object p0, p0, Ll5/g$c;->d:Ll5/g;

    invoke-virtual {p0, p1}, Ll5/g;->z0(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_c

    return-object p0

    :cond_c
    const/16 p0, 0x8

    invoke-static {p0}, Ll5/g$c;->r(I)V

    throw v0

    :cond_12
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/g$c;->r(I)V

    throw v0
.end method

.method public q(Ly6/l0;)V
    .registers 2

    if-eqz p1, :cond_8

    iget-object p0, p0, Ll5/g$c;->d:Ll5/g;

    invoke-virtual {p0, p1}, Ll5/g;->D0(Ly6/l0;)V

    return-void

    :cond_8
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/g$c;->r(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ll5/g$c;->d:Ll5/g;

    invoke-virtual {p0}, Ll5/m;->getName()Lh6/f;

    move-result-object p0

    iget-object p0, p0, Lh6/f;->a:Ljava/lang/String;

    return-object p0
.end method
