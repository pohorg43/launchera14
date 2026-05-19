.class public final Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView;
.super Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView$Companion;

.field private static final TAG:Ljava/lang/String; = "IconBackgroundDrawableView"


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private foregroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView;->Companion:Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView$Companion;

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

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_10
    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_17

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_17
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1a
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V
    .registers 8

    const-string/jumbo p4, "originalDrawable"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "background"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "foreground"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dp"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p3, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;

    const/4 p4, 0x0

    if-eqz p1, :cond_31

    move-object p1, p3

    check-cast p1, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;

    iget-object p5, p1, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p5

    sget-object p6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p5, p6, :cond_31

    iget-object p5, p1, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object p6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p5, p6, p4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p5

    iput-object p5, p1, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_31
    instance-of p1, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_64

    move-object p1, p3

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p6

    iget p6, p6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p5, p6}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_64
    instance-of p1, p2, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;

    if-eqz p1, :cond_7f

    move-object p1, p2

    check-cast p1, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;

    iget-object p5, p1, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p5

    sget-object p6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p5, p6, :cond_7f

    iget-object p5, p1, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object p6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p5, p6, p4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p5

    iput-object p5, p1, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_7f
    instance-of p1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_b2

    move-object p1, p2

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p6

    iget p6, p6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p5, p6}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_b2
    iput-object p2, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result p3

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p2, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_c8

    goto :goto_cb

    :cond_c8
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_cb
    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderScaleIconDrawableView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_d0

    goto :goto_d3

    :cond_d0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_d3
    return-void
.end method
