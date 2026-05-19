.class public Lg1/l$b;
.super Lg1/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lg1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)I
    .registers 5

    const/4 p0, 0x2

    return p0
.end method

.method public b(IIII)F
    .registers 5

    int-to-float p0, p3

    int-to-float p1, p1

    div-float/2addr p0, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method
