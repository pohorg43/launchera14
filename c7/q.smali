.class public final Lc7/q;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ly6/e2;)Lc7/t;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    sget-object p0, Lc7/t;->c:Lc7/t;

    goto :goto_1f

    :cond_14
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_1a
    sget-object p0, Lc7/t;->b:Lc7/t;

    goto :goto_1f

    :cond_1d
    sget-object p0, Lc7/t;->d:Lc7/t;

    :goto_1f
    return-object p0
.end method
