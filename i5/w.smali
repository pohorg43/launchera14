.class public final Li5/w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nfindClassInModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 findClassInModule.kt\norg/jetbrains/kotlin/descriptors/FindClassInModuleKt\n*L\n1#1,66:1\n43#1,2:67\n*S KotlinDebug\n*F\n+ 1 findClassInModule.kt\norg/jetbrains/kotlin/descriptors/FindClassInModuleKt\n*L\n23#1:67,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Li5/e0;Lh6/b;)Li5/e;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Li5/w;->b(Li5/e0;Lh6/b;)Li5/h;

    move-result-object p0

    instance-of p1, p0, Li5/e;

    if-eqz p1, :cond_15

    check-cast p0, Li5/e;

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public static final b(Li5/e0;Lh6/b;)Li5/h;
    .registers 13

    sget-object v0, Lq5/d;->r:Lq5/d;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "classId"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lk6/u;->a:Lh/b;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lk6/u;->a:Lh/b;

    invoke-interface {p0, v1}, Li5/e0;->w(Lh/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk6/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    invoke-interface {v1, p0}, Lk6/t;->a(Li5/e0;)Li5/e0;

    move-result-object v1

    goto :goto_22

    :cond_21
    move-object v1, v2

    :goto_22
    const-string v3, "name"

    const/4 v4, 0x1

    const-string v5, "segments.first()"

    const-string v6, "classId.relativeClassName.pathSegments()"

    const-string v7, "classId.packageFqName"

    if-nez v1, :cond_91

    invoke-virtual {p1}, Lh6/b;->h()Lh6/c;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Li5/e0;->s(Lh6/c;)Li5/l0;

    move-result-object p0

    invoke-virtual {p1}, Lh6/b;->i()Lh6/c;

    move-result-object p1

    invoke-virtual {p1}, Lh6/c;->f()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/l0;->l()Lr6/i;

    move-result-object p0

    invoke-static {p1}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lh6/f;

    invoke-interface {p0, v1, v0}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object p0

    if-nez p0, :cond_58

    goto/16 :goto_153

    :cond_58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_64
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh6/f;

    instance-of v4, p0, Li5/e;

    if-nez v4, :cond_76

    goto/16 :goto_153

    :cond_76
    check-cast p0, Li5/e;

    invoke-interface {p0}, Li5/e;->R()Lr6/i;

    move-result-object p0

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v1, v0}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object p0

    instance-of v1, p0, Li5/e;

    if-eqz v1, :cond_8a

    check-cast p0, Li5/e;

    goto :goto_8b

    :cond_8a
    move-object p0, v2

    :goto_8b
    if-eqz p0, :cond_153

    goto :goto_64

    :cond_8e
    move-object v2, p0

    goto/16 :goto_153

    :cond_91
    invoke-virtual {p1}, Lh6/b;->h()Lh6/c;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Li5/e0;->s(Lh6/c;)Li5/l0;

    move-result-object v1

    invoke-virtual {p1}, Lh6/b;->i()Lh6/c;

    move-result-object v8

    invoke-virtual {v8}, Lh6/c;->f()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Li5/l0;->l()Lr6/i;

    move-result-object v1

    invoke-static {v8}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lh6/f;

    invoke-interface {v1, v9, v0}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object v1

    if-nez v1, :cond_bc

    :cond_ba
    :goto_ba
    move-object v1, v2

    goto :goto_f1

    :cond_bc
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v8, v4, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lh6/f;

    instance-of v10, v1, Li5/e;

    if-nez v10, :cond_d9

    goto :goto_ba

    :cond_d9
    check-cast v1, Li5/e;

    invoke-interface {v1}, Li5/e;->R()Lr6/i;

    move-result-object v1

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v9, v0}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object v1

    instance-of v9, v1, Li5/e;

    if-eqz v9, :cond_ed

    check-cast v1, Li5/e;

    goto :goto_ee

    :cond_ed
    move-object v1, v2

    :goto_ee
    if-eqz v1, :cond_ba

    goto :goto_c8

    :cond_f1
    :goto_f1
    if-nez v1, :cond_152

    invoke-virtual {p1}, Lh6/b;->h()Lh6/c;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Li5/e0;->s(Lh6/c;)Li5/l0;

    move-result-object p0

    invoke-virtual {p1}, Lh6/b;->i()Lh6/c;

    move-result-object p1

    invoke-virtual {p1}, Lh6/c;->f()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Li5/l0;->l()Lr6/i;

    move-result-object p0

    invoke-static {p1}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lh6/f;

    invoke-interface {p0, v1, v0}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object p0

    if-nez p0, :cond_11d

    goto :goto_153

    :cond_11d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_129
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh6/f;

    instance-of v4, p0, Li5/e;

    if-nez v4, :cond_13a

    goto :goto_153

    :cond_13a
    check-cast p0, Li5/e;

    invoke-interface {p0}, Li5/e;->R()Lr6/i;

    move-result-object p0

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v1, v0}, Lr6/l;->f(Lh6/f;Lq5/b;)Li5/h;

    move-result-object p0

    instance-of v1, p0, Li5/e;

    if-eqz v1, :cond_14e

    check-cast p0, Li5/e;

    goto :goto_14f

    :cond_14e
    move-object p0, v2

    :goto_14f
    if-eqz p0, :cond_153

    goto :goto_129

    :cond_152
    move-object v2, v1

    :cond_153
    :goto_153
    return-object v2
.end method

.method public static final c(Li5/e0;Lh6/b;Li5/g0;)Li5/e;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Li5/w;->a(Li5/e0;Lh6/b;)Li5/e;

    move-result-object p0

    if-eqz p0, :cond_16

    return-object p0

    :cond_16
    sget-object p0, Li5/w$a;->a:Li5/w$a;

    invoke-static {p1, p0}, Lj7/l;->i(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    sget-object v0, Li5/w$b;->a:Li5/w$b;

    invoke-static {p0, v0}, Lj7/p;->p(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    invoke-static {p0}, Lj7/p;->s(Lj7/h;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Li5/g0;->a(Lh6/b;Ljava/util/List;)Li5/e;

    move-result-object p0

    return-object p0
.end method
