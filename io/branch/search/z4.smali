.class public final Lio/branch/search/z4;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(IJLkotlin/jvm/functions/Function0;)Lm7/s1;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)",
            "Lm7/s1;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "work"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v1

    sget-object v2, Lm7/y0;->d:Lm7/f0;

    new-instance v0, Lio/branch/search/z4$a;

    const/4 v8, 0x0

    move-object v3, v0

    move v4, p0

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v3 .. v8}, Lio/branch/search/z4$a;-><init>(ILkotlin/jvm/functions/Function0;JLl4/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    return-object p0
.end method
