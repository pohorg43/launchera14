.class public Lcom/android/wm/shell/back/BackAnimationBackground;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BACKGROUND_LAYER:I = -0x1

.field private static final NO_APPEARANCE:I


# instance fields
.field private mBackgroundIsDark:Z

.field private mBackgroundSurface:Landroid/view/SurfaceControl;

.field private mCustomizer:Lcom/android/wm/shell/back/StatusBarCustomizer;

.field private mIsRequestingStatusBarAppearance:Z

.field private final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private mStartBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    return-void
.end method


# virtual methods
.method public ensureBackground(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p2}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundIsDark:Z

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000  # 255.0f

    div-float/2addr v3, v4

    aput v3, v0, v2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    aput v3, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v4

    aput p2, v0, v1

    new-instance p2, Landroid/view/SurfaceControl$Builder;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v1, "back-animation-background"

    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string v1, "BackAnimationBackground"

    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v1, v2, p2}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p3, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mStartBounds:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    return-void
.end method

.method public onBackProgressed(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/wm/shell/back/StatusBarCustomizer;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3a

    :cond_d
    const v0, 0x3e4ccccd  # 0.2f

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-lez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    move p1, v0

    :goto_18
    iget-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    if-ne p1, v1, :cond_1d

    return-void

    :cond_1d
    iput-boolean p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    if-eqz p1, :cond_34

    new-instance p1, Lcom/android/internal/view/AppearanceRegion;

    iget-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundIsDark:Z

    if-nez v1, :cond_29

    const/16 v0, 0x8

    :cond_29
    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mStartBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v0, v1}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/wm/shell/back/StatusBarCustomizer;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/back/StatusBarCustomizer;->customizeStatusBarAppearance(Lcom/android/internal/view/AppearanceRegion;)V

    goto :goto_3a

    :cond_34
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/wm/shell/back/StatusBarCustomizer;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/back/StatusBarCustomizer;->customizeStatusBarAppearance(Lcom/android/internal/view/AppearanceRegion;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public removeBackground(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_10
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    return-void
.end method

.method public setStatusBarCustomizer(Lcom/android/wm/shell/back/StatusBarCustomizer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/wm/shell/back/StatusBarCustomizer;

    return-void
.end method
