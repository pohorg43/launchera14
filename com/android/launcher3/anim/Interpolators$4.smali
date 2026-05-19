.class Lcom/android/launcher3/anim/Interpolators$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/Interpolators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 2

    const/high16 p0, 0x3f800000  # 1.0f

    sub-float/2addr p1, p0

    invoke-static {p1, p1, p1, p0}, Landroidx/core/content/res/b;->a(FFFF)F

    move-result p0

    return p0
.end method
