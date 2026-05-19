.class public Lg1/l$a;
.super Lg1/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lg1/l$a;->b(IIII)F

    move-result p0

    const/high16 p1, 0x3f800000  # 1.0f

    cmpl-float p0, p0, p1

    if-nez p0, :cond_b

    goto :goto_f

    :cond_b
    sget-boolean p0, Lg1/l;->g:Z

    if-eqz p0, :cond_11

    :goto_f
    const/4 p0, 0x2

    goto :goto_12

    :cond_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public b(IIII)F
    .registers 5

    sget-object p0, Lg1/l;->a:Lg1/l;

    invoke-virtual {p0, p1, p2, p3, p4}, Lg1/l;->b(IIII)F

    move-result p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
