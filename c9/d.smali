.class public interface abstract Lc9/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x1f

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lc9/d;->a:I

    return-void
.end method
