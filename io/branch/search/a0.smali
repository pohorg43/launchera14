.class public final Lio/branch/search/a0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/a0$a;,
        Lio/branch/search/a0$b;
    }
.end annotation


# direct methods
.method public static final a(Landroid/content/Context;Landroid/os/UserHandle;)Lio/branch/search/a0$a;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/a0$a;

    invoke-direct {v0, p0, p1}, Lio/branch/search/a0$a;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)Lio/branch/search/a0$b;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/a0$b;

    invoke-direct {v0, p0}, Lio/branch/search/a0$b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
