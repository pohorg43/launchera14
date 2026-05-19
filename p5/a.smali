.class public final Lp5/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Lq5/c;Lq5/b;Li5/e;Lh6/f;)V
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lq5/c$a;->a:Lq5/c$a;

    if-ne p0, v0, :cond_19

    return-void

    :cond_19
    invoke-interface {p1}, Lq5/b;->d()Lq5/a;

    move-result-object p1

    if-nez p1, :cond_20

    return-void

    :cond_20
    invoke-interface {p0}, Lq5/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Lq5/a;->getPosition()Lq5/e;

    move-result-object v0

    goto :goto_2d

    :cond_2b
    sget-object v0, Lq5/e;->c:Lq5/e;

    :goto_2d
    move-object v3, v0

    invoke-interface {p1}, Lq5/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lk6/i;->g(Li5/l;)Lh6/d;

    move-result-object p1

    invoke-virtual {p1}, Lh6/d;->b()Ljava/lang/String;

    move-result-object v4

    const-string p1, "getFqName(scopeOwner).asString()"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lq5/f;->b:Lq5/f;

    invoke-virtual {p3}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v6

    const-string p1, "name.asString()"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lq5/c;->b(Ljava/lang/String;Lq5/e;Ljava/lang/String;Lq5/f;Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Lq5/c;Lq5/b;Li5/h0;Lh6/f;)V
    .registers 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "from"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "scopeOwner"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "name"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Li5/h0;->e()Lh6/c;

    move-result-object p2

    invoke-virtual {p2}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v6

    const-string p2, "scopeOwner.fqName.asString()"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v8

    const-string p2, "name.asString()"

    invoke-static {v8, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "packageFqName"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lq5/c$a;->a:Lq5/c$a;

    if-ne p0, p2, :cond_3d

    goto :goto_5c

    :cond_3d
    invoke-interface {p1}, Lq5/b;->d()Lq5/a;

    move-result-object p1

    if-nez p1, :cond_44

    goto :goto_5c

    :cond_44
    invoke-interface {p0}, Lq5/c;->a()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p1}, Lq5/a;->getPosition()Lq5/e;

    move-result-object p2

    goto :goto_51

    :cond_4f
    sget-object p2, Lq5/e;->c:Lq5/e;

    :goto_51
    move-object v5, p2

    invoke-interface {p1}, Lq5/a;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lq5/f;->a:Lq5/f;

    move-object v3, p0

    invoke-interface/range {v3 .. v8}, Lq5/c;->b(Ljava/lang/String;Lq5/e;Ljava/lang/String;Lq5/f;Ljava/lang/String;)V

    :goto_5c
    return-void
.end method
