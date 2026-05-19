.class public La6/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:Z


# direct methods
.method public static a(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, La6/m;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "IDHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
