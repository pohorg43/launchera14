.class public final Ld5/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInlineClassAwareCaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InlineClassAwareCaller.kt\nkotlin/reflect/jvm/internal/calls/InlineClassAwareCallerKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,219:1\n1747#2,3:220\n*S KotlinDebug\n*F\n+ 1 InlineClassAwareCaller.kt\nkotlin/reflect/jvm/internal/calls/InlineClassAwareCallerKt\n*L\n156#1:220,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/Object;Li5/b;)Ljava/lang/Object;
    .registers 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Li5/o0;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Li5/f1;

    invoke-static {v0}, Lk6/k;->d(Li5/f1;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object p0

    :cond_13
    invoke-static {p1}, Ld5/j;->c(Li5/b;)Ly6/l0;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {v0}, Ld5/j;->f(Ly6/l0;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {v0, p1}, Ld5/j;->d(Ljava/lang/Class;Li5/b;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_2d

    :cond_26
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_2d
    :goto_2d
    return-object p0
.end method

.method public static final b(Ld5/f;Li5/b;Z)Ld5/f;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ld5/f<",
            "+TM;>;",
            "Li5/b;",
            "Z)",
            "Ld5/f<",
            "TM;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lk6/k;->a(Li5/a;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_71

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object v0

    const-string v3, "descriptor.valueParameters"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_25
    move v0, v2

    goto :goto_47

    :cond_27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/e1;

    invoke-interface {v3}, Li5/d1;->getType()Ly6/l0;

    move-result-object v3

    const-string v4, "it.type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lk6/k;->c(Ly6/l0;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move v0, v1

    :goto_47
    if-nez v0, :cond_71

    invoke-interface {p1}, Li5/a;->getReturnType()Ly6/l0;

    move-result-object v0

    if-eqz v0, :cond_57

    invoke-static {v0}, Lk6/k;->c(Ly6/l0;)Z

    move-result v0

    if-ne v0, v1, :cond_57

    move v0, v1

    goto :goto_58

    :cond_57
    move v0, v2

    :goto_58
    if-nez v0, :cond_71

    instance-of v0, p0, Ld5/e;

    if-nez v0, :cond_70

    invoke-static {p1}, Ld5/j;->c(Li5/b;)Ly6/l0;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-static {v0}, Lk6/k;->c(Ly6/l0;)Z

    move-result v0

    if-ne v0, v1, :cond_6c

    move v0, v1

    goto :goto_6d

    :cond_6c
    move v0, v2

    :goto_6d
    if-eqz v0, :cond_70

    goto :goto_71

    :cond_70
    move v1, v2

    :cond_71
    :goto_71
    if-eqz v1, :cond_79

    new-instance v0, Ld5/i;

    invoke-direct {v0, p1, p0, p2}, Ld5/i;-><init>(Li5/b;Ld5/f;Z)V

    move-object p0, v0

    :cond_79
    return-object p0
.end method

.method public static final c(Li5/b;)Ly6/l0;
    .registers 4

    invoke-interface {p0}, Li5/a;->L()Li5/r0;

    move-result-object v0

    invoke-interface {p0}, Li5/a;->I()Li5/r0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Li5/d1;->getType()Ly6/l0;

    move-result-object v2

    goto :goto_2f

    :cond_10
    if-nez v1, :cond_13

    goto :goto_2f

    :cond_13
    instance-of v0, p0, Li5/k;

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Li5/d1;->getType()Ly6/l0;

    move-result-object v2

    goto :goto_2f

    :cond_1c
    invoke-interface {p0}, Li5/m;->b()Li5/l;

    move-result-object p0

    instance-of v0, p0, Li5/e;

    if-eqz v0, :cond_27

    check-cast p0, Li5/e;

    goto :goto_28

    :cond_27
    move-object p0, v2

    :goto_28
    if-eqz p0, :cond_2f

    invoke-interface {p0}, Li5/e;->m()Ly6/s0;

    move-result-object p0

    move-object v2, p0

    :cond_2f
    :goto_2f
    return-object v2
.end method

.method public static final d(Ljava/lang/Class;Li5/b;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Li5/b;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    const-string v0, "unbox-impl"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "{\n        getDeclaredMet…LINE_CLASS_MEMBERS)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    new-instance v0, Lc5/n0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No unbox method found in inline class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (calling "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e(Li5/l;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/l;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Li5/e;

    if-eqz v0, :cond_3e

    invoke-static {p0}, Lk6/k;->b(Li5/l;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move-object v0, p0

    check-cast v0, Li5/e;

    invoke-static {v0}, Lc5/w0;->j(Li5/e;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_14

    goto :goto_3f

    :cond_14
    new-instance v1, Lc5/n0;

    const-string v2, "Class object for the class "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be found (classId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Li5/h;

    invoke-static {p0}, Lo6/c;->f(Li5/h;)Lh6/b;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    return-object v1
.end method

.method public static final f(Ly6/l0;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/l0;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/l0;->F0()Ly6/j1;

    move-result-object v0

    invoke-interface {v0}, Ly6/j1;->e()Li5/h;

    move-result-object v0

    invoke-static {v0}, Ld5/j;->e(Li5/l;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    invoke-static {p0}, Ly6/a2;->g(Ly6/l0;)Z

    move-result v2

    if-nez v2, :cond_1c

    return-object v0

    :cond_1c
    invoke-static {p0}, Lk6/k;->f(Ly6/l0;)Ly6/l0;

    move-result-object p0

    if-nez p0, :cond_23

    return-object v1

    :cond_23
    invoke-static {p0}, Ly6/a2;->g(Ly6/l0;)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {p0}, Lf5/g;->L(Ly6/l0;)Z

    move-result p0

    if-nez p0, :cond_30

    return-object v0

    :cond_30
    return-object v1
.end method
