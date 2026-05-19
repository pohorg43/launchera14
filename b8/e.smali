.class public final Lb8/e;
.super Lb8/f;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lb8/f;-><init>(Ljava/lang/String;)V

    return-void
.end method
