.class public final Lpantanal/app/TimeoutExtKt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final createTimeOutLoadCallback(Ljava/lang/String;ILpantanal/app/OnLoadCallback;)Lpantanal/app/TimeOutLoadCallback;
    .registers 4

    const-string v0, "cardLogMsg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpantanal/app/TimeOutLoadCallback;

    invoke-direct {v0, p0, p1, p2}, Lpantanal/app/TimeOutLoadCallback;-><init>(Ljava/lang/String;ILpantanal/app/OnLoadCallback;)V

    return-object v0
.end method
