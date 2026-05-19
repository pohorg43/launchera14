.class public final Lu6/z;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Le6/c;I)Lh6/b;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le6/c;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1}, Le6/c;->a(I)Z

    move-result p0

    invoke-static {v0, p0}, Lh6/b;->f(Ljava/lang/String;Z)Lh6/b;

    move-result-object p0

    const-string p1, "fromString(getQualifiedC… isLocalClassName(index))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Le6/c;I)Lh6/f;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->e(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    const-string p1, "guessByFirstCharacter(getString(index))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
