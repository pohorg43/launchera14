.class public final Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;
.super Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView$Companion;

.field private static final TAG:Ljava/lang/String; = "CardDrawableView"


# instance fields
.field private originalCardDrawable:Landroid/graphics/drawable/Drawable;

.field private scale:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;->Companion:Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;->scale:F

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

    iput p1, p0, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;->scale:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getRealBtmBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;->originalCardDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v2, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    if-eqz v3, :cond_1f

    check-cast v2, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_56

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lez v3, :cond_4d

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

    :cond_4d
    iget p0, p0, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;->scale:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->drawCardView(Landroid/graphics/Canvas;Ljava/lang/Float;)V

    :cond_56
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5c
    return-void
.end method

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

.method public setDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLcom/android/launcher3/OplusDeviceProfile;ZLjava/lang/String;)V
    .registers 21

    move-object v9, p0

    move-object v0, p1

    const-string/jumbo v1, "originalDrawable"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "background"

    move-object v2, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "foreground"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dp"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;->originalCardDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object v2, v9, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;->originalCardDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v2, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    const/4 v10, 0x0

    if-eqz v3, :cond_2c

    check-cast v2, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    goto :goto_2d

    :cond_2c
    move-object v2, v10

    :goto_2d
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_3e

    :cond_3a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    :goto_3e
    iget-object v3, v9, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;->originalCardDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v3, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    if-eqz v4, :cond_47

    check-cast v3, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    goto :goto_48

    :cond_47
    move-object v3, v10

    :goto_48
    if-eqz v3, :cond_55

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_59

    :cond_55
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_59
    if-eqz p6, :cond_65

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, v9, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;->scale:F

    goto :goto_6e

    :cond_65
    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, v9, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;->scale:F

    :goto_6e
    iget-object v0, v9, Lcom/android/launcher3/anim/floatingdrawable/CardDrawableView;->originalCardDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    if-eqz v2, :cond_78

    check-cast v0, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;

    move-object v11, v0

    goto :goto_79

    :cond_78
    move-object v11, v10

    :goto_79
    if-eqz v11, :cond_111

    const/4 v12, 0x0

    if-eqz p6, :cond_bd

    const/4 v2, 0x0

    invoke-virtual {v11}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v11}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v11

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getRowExtendedDrawable$default(Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;Landroid/graphics/drawable/Drawable;IIIILjava/lang/String;ILjava/lang/Object;)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    move-result-object v0

    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_a2
    invoke-virtual {p0, v10}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setRealBtmBgDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getRealBtmBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_ac

    goto :goto_111

    :cond_ac
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result v3

    invoke-direct {v1, v12, v12, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_111

    :cond_bd
    invoke-virtual {v11}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-virtual {v11}, Lcom/android/launcher3/dragndrop/LauncherCardDrawable;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v11

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getColumnExtendedDrawable$default(Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;Landroid/graphics/drawable/Drawable;IIIILjava/lang/String;ILjava/lang/Object;)Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;

    move-result-object v0

    if-eqz v0, :cond_e2

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_e3

    :cond_e2
    move-object v1, v10

    :goto_e3
    if-eqz v1, :cond_eb

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_111

    :cond_eb
    if-eqz v0, :cond_f1

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/ExtentedDrawableSet;->getMiddleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_f1
    invoke-virtual {p0, v10}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->setRealBtmBgDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getRealBtmBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_fb

    goto :goto_111

    :cond_fb
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableView;->getDesignHeight()I

    move-result v4

    invoke-direct {v1, v2, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_111
    :goto_111
    return-void
.end method
