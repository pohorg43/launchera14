.class public final Lb1/g;
.super Lb1/d;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lb1/f;

    const-string v1, "image_manager_disk_cache"

    invoke-direct {v0, p1, v1}, Lb1/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/32 v1, 0xfa00000

    invoke-direct {p0, v0, v1, v2}, Lb1/d;-><init>(Lb1/d$a;J)V

    return-void
.end method
