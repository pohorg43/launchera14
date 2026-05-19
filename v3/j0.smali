.class public final Lv3/j0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(La6/a0;Li5/e;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "classDescriptor"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jvmDescriptor"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lh5/c;->a:Lh5/c;

    invoke-static {p1}, Lo6/c;->g(Li5/l;)Lh6/c;

    move-result-object v1

    invoke-virtual {v1}, Lh6/c;->j()Lh6/d;

    move-result-object v1

    const-string v2, "fqNameSafe.toUnsafe()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lh5/c;->h(Lh6/d;)Lh6/b;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-static {v0}, Lp6/c;->b(Lh6/b;)Lp6/c;

    move-result-object p1

    invoke-virtual {p1}, Lp6/c;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "byClassId(it).internalName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3b

    :cond_35
    sget-object v0, La6/c0;->a:La6/c0;

    invoke-static {p1, v0}, La6/g;->a(Li5/e;La6/b0;)Ljava/lang/String;

    move-result-object p1

    :goto_3b
    invoke-virtual {p0, p1, p2}, La6/a0;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
