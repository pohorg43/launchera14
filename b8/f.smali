.class public Lb8/f;
.super Lw7/g;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lw7/g;-><init>(Ljava/lang/String;)V

    return-void
.end method
