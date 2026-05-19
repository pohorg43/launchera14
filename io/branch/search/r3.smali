.class public final Lio/branch/search/r3;
.super Lio/branch/search/s3;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/s3<",
        "Lio/branch/search/internal/sqlite/NetworkSQLiteDB;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/r3$a;

    invoke-direct {v0}, Lio/branch/search/r3$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/branch/search/s3;-><init>(Landroid/content/Context;Lio/branch/search/k3;)V

    return-void
.end method
