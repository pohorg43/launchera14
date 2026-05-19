.class public final Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;
.super Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView$Companion;

.field private static final TAG:Ljava/lang/String; = "CardScaleDrawableView"


# instance fields
.field private originalCardDrawable:Landroid/graphics/drawable/Drawable;

.field private scale:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;->Companion:Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;->scale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;->scale:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;->originalCardDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v2, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    if-eqz v3, :cond_16

    check-cast v2, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lez v3, :cond_44

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_44
    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;->scale:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->drawCardView(Landroid/graphics/Canvas;Ljava/lang/Float;)V

    :cond_4d
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_53
    return-void
.end method

.method public isIconClamped()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public needAdjustCornerRadius()Z
    .registers 1

    const/4 p0, 0x0

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

    iput-object p1, p0, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;->originalCardDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object p2, p0, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;->originalCardDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    const/4 p4, 0x0

    if-eqz p3, :cond_25

    check-cast p2, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    goto :goto_26

    :cond_25
    move-object p2, p4

    :goto_26
    if-eqz p2, :cond_33

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->getCardBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    goto :goto_37

    :cond_33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    :goto_37
    invoke-virtual {p0, p2}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setDesignWidth(I)V

    iget-object p2, p0, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;->originalCardDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    if-eqz p3, :cond_43

    move-object p4, p2

    check-cast p4, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    :cond_43
    if-eqz p4, :cond_50

    invoke-virtual {p4}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->getCardBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_50

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    goto :goto_54

    :cond_50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    :goto_54
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setDesignHeight(I)V

    iget-object p1, p0, Lcom/android/launcher3/anim/floatingdrawable/CardScaleDrawableView;->originalCardDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_5c

    goto :goto_6d

    :cond_5c
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result p0

    const/4 p4, 0x0

    invoke-direct {p2, p4, p4, p3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_6d
    return-void
.end method
