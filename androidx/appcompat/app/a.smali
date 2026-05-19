.class public final synthetic Landroidx/appcompat/app/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(DDD)D
    .registers 6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, p2

    add-double/2addr p0, p4

    return-wide p0
.end method
