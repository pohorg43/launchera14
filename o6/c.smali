.class public final Lo6/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDescriptorUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DescriptorUtils.kt\norg/jetbrains/kotlin/resolve/descriptorUtil/DescriptorUtilsKt\n+ 2 ClassKind.kt\norg/jetbrains/kotlin/descriptors/ClassKindKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,458:1\n34#2:459\n819#3:460\n847#3,2:461\n1603#3,9:463\n1855#3:472\n1856#3:474\n1612#3:475\n819#3:476\n847#3,2:477\n819#3:481\n847#3,2:482\n350#3,7:485\n1747#3,3:492\n2624#3,3:495\n1549#3:498\n1620#3,3:499\n1#4:473\n1#4:484\n1282#5,2:479\n*S KotlinDebug\n*F\n+ 1 DescriptorUtils.kt\norg/jetbrains/kotlin/resolve/descriptorUtil/DescriptorUtilsKt\n*L\n141#1:459\n160#1:460\n160#1:461,2\n161#1:463,9\n161#1:472\n161#1:474\n161#1:475\n168#1:476\n168#1:477,2\n229#1:481\n229#1:482,2\n299#1:485,7\n441#1:492,3\n447#1:495,3\n201#1:498\n201#1:499,3\n161#1:473\n222#1:479,2\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "value"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    const-string v1, "identifier(\"value\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Li5/e1;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lo6/a;->a:Lo6/a;

    sget-object v1, Lo6/c$a;->a:Lo6/c$a;

    invoke-static {p0, v0, v1}, Li7/b;->d(Ljava/util/Collection;Li7/b$c;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "ifAny(\n        listOf(th…eclaresDefaultValue\n    )"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(Li5/b;ZLkotlin/jvm/functions/Function1;I)Li5/b;
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_5

    const/4 p1, 0x0

    :cond_5
    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "predicate"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {p0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lo6/b;

    invoke-direct {v0, p1}, Lo6/b;-><init>(Z)V

    new-instance p1, Lo6/d;

    invoke-direct {p1, p3, p2}, Lo6/d;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p0, v0, p1}, Li7/b;->b(Ljava/util/Collection;Li7/b$c;Li7/b$d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/b;

    return-object p0
.end method

.method public static final c(Li5/l;)Lh6/c;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo6/c;->h(Li5/l;)Lh6/d;

    move-result-object p0

    invoke-virtual {p0}, Lh6/d;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    move-object p0, v1

    :goto_12
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lh6/d;->i()Lh6/c;

    move-result-object v1

    :cond_18
    return-object v1
.end method

.method public static final d(Lj5/c;)Li5/e;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lj5/c;->getType()Ly6/l0;

    move-result-object p0

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    instance-of v0, p0, Li5/e;

    if-eqz v0, :cond_18

    check-cast p0, Li5/e;

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method public static final e(Li5/l;)Lf5/g;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo6/c;->k(Li5/l;)Li5/e0;

    move-result-object p0

    invoke-interface {p0}, Li5/e0;->k()Lf5/g;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Li5/h;)Lh6/b;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_32

    invoke-interface {p0}, Li5/m;->b()Li5/l;

    move-result-object v1

    if-eqz v1, :cond_32

    instance-of v2, v1, Li5/h0;

    if-eqz v2, :cond_1d

    new-instance v0, Lh6/b;

    check-cast v1, Li5/h0;

    invoke-interface {v1}, Li5/h0;->e()Lh6/c;

    move-result-object v1

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh6/b;-><init>(Lh6/c;Lh6/f;)V

    goto :goto_32

    :cond_1d
    instance-of v2, v1, Li5/i;

    if-eqz v2, :cond_32

    check-cast v1, Li5/h;

    invoke-static {v1}, Lo6/c;->f(Li5/h;)Lh6/b;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    invoke-virtual {v1, p0}, Lh6/b;->d(Lh6/f;)Lh6/b;

    move-result-object p0

    move-object v0, p0

    :cond_32
    :goto_32
    return-object v0
.end method

.method public static final g(Li5/l;)Lh6/c;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    invoke-static {p0}, Lk6/i;->h(Li5/l;)Lh6/c;

    move-result-object v1

    if-eqz v1, :cond_f

    goto :goto_17

    :cond_f
    invoke-static {p0}, Lk6/i;->i(Li5/l;)Lh6/d;

    move-result-object p0

    invoke-virtual {p0}, Lh6/d;->i()Lh6/c;

    move-result-object v1

    :goto_17
    if-eqz v1, :cond_1f

    const-string p0, "getFqNameSafe(this)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_1f
    const/4 p0, 0x4

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_24
    const/4 p0, 0x3

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0
.end method

.method public static final h(Li5/l;)Lh6/d;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object p0

    const-string v0, "getFqName(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final i(Li5/e;)Li5/y;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/e;",
            ")",
            "Li5/y<",
            "Ly6/s0;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Li5/e;->S()Li5/c1;

    move-result-object p0

    instance-of v0, p0, Li5/y;

    if-eqz v0, :cond_b

    check-cast p0, Li5/y;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public static final j(Li5/e0;)Lz6/f;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz6/g;->a:Lh/b;

    invoke-interface {p0, v0}, Li5/e0;->w(Lh/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz6/o;

    sget-object p0, Lz6/f$a;->a:Lz6/f$a;

    return-object p0
.end method

.method public static final k(Li5/l;)Li5/e0;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lk6/i;->d(Li5/l;)Li5/e0;

    move-result-object p0

    const-string v0, "getContainingModule(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final l(Li5/l;)Lj7/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/l;",
            ")",
            "Lj7/h<",
            "Li5/l;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo6/e;->a:Lo6/e;

    invoke-static {p0, v1}, Lj7/l;->i(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lj7/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    check-cast p0, Lj7/c;

    invoke-interface {p0, v1}, Lj7/c;->a(I)Lj7/h;

    move-result-object p0

    goto :goto_23

    :cond_1d
    new-instance v0, Lj7/b;

    invoke-direct {v0, p0, v1}, Lj7/b;-><init>(Lj7/h;I)V

    move-object p0, v0

    :goto_23
    return-object p0
.end method

.method public static final m(Li5/b;)Li5/b;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Li5/n0;

    if-eqz v0, :cond_14

    check-cast p0, Li5/n0;

    invoke-interface {p0}, Li5/n0;->T()Li5/o0;

    move-result-object p0

    const-string v0, "correspondingProperty"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    return-object p0
.end method
