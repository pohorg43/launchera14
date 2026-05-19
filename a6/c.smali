.class public final synthetic La6/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Le6/b$b;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Le6/b$b;->c(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
