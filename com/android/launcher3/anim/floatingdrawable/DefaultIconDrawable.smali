.class public final Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable;
.super Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable$Companion;

.field private static final TAG:Ljava/lang/String; = "DefaultIconDrawable"


# instance fields
.field private originalIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable;->Companion:Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_13
    return-void
.end method

.method public isIconClamped()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public needAdjustCornerRadius()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V
    .registers 8

    const-string/jumbo p4, "originalDrawable"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "background"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "foreground"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dp"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    const/4 p3, 0x0

    if-eqz p2, :cond_31

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget-object p4, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p4

    sget-object p5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p4, p5, :cond_31

    iget-object p4, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object p5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p4, p5, p3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p2, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_31
    iput-object p1, p0, Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_68

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, p4}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_68
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result p4

    invoke-direct {p1, p3, p3, p2, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getContainerSize()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getOriginalWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/DefaultIconDrawable;->originalIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_88

    goto :goto_8b

    :cond_88
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_8b
    return-void
.end method
