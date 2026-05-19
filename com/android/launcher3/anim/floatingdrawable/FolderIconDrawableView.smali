.class public final Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;
.super Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView$Companion;

.field private static final TAG:Ljava/lang/String; = "IconBackgroundDrawableView"


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private foregroundDrawable:Landroid/graphics/drawable/Drawable;

.field private isFolderIcon:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;->Companion:Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView$Companion;

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

    const/4 p0, 0x1

    return p0
.end method

.method public needAdjustCornerRadius()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getRealBtmBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    iget-object v1, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_19
    iget-object p0, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_20

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_20
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_23
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V
    .registers 9

    const-string/jumbo p4, "originalDrawable"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "background"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "foreground"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "dp"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p1, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    iput-boolean p1, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;->isFolderIcon:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_37

    instance-of p1, p3, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;

    if-eqz p1, :cond_37

    move-object p1, p3

    check-cast p1, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;

    iget-object p7, p1, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p7

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p7, v0, :cond_37

    iget-object p7, p1, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p7, v0, p4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p7

    iput-object p7, p1, Lcom/android/launcher3/graphics/ShiftedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    :cond_37
    iput-object p2, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    const-string p1, "folder old design size is: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "IconBackgroundDrawableView"

    invoke-static {p3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p6, :cond_73

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result p6

    int-to-float p6, p6

    iget p7, p5, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    mul-float/2addr p6, p7

    float-to-int p6, p6

    if-ge p1, p6, :cond_6f

    move p1, p6

    :cond_6f
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setDesignWidth(I)V

    goto :goto_86

    :cond_73
    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result p6

    int-to-float p6, p6

    iget p7, p5, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    mul-float/2addr p6, p7

    float-to-int p6, p6

    if-ge p1, p6, :cond_83

    move p1, p6

    :cond_83
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setDesignHeight(I)V

    :goto_86
    const-string p1, "folder ratio is: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p5, p5, Lcom/android/launcher3/DeviceProfile;->aspectRatio:F

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p5, ", design size is: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getOriginalWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getOriginalHeight()I

    move-result p3

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_c3

    goto :goto_c6

    :cond_c3
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_c6
    iget-object p2, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_cb

    goto :goto_ce

    :cond_cb
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_ce
    iget-object p1, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p1, Landroid/graphics/drawable/ColorDrawable;

    if-nez p2, :cond_d8

    iget-boolean p2, p0, Lcom/android/launcher3/anim/floatingdrawable/FolderIconDrawableView;->isFolderIcon:Z

    if-eqz p2, :cond_eb

    :cond_d8
    if-nez p1, :cond_db

    goto :goto_eb

    :cond_db
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result p0

    invoke-direct {p2, p4, p4, p3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_eb
    :goto_eb
    return-void
.end method
