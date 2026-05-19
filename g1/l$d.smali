.class public Lg1/l$d;
.super Lg1/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method
