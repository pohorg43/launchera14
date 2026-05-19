.class public Lcom/oplus/zoom/ui/tips/TipsContainerView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/oplus/zoom/ui/baseview/IView;


# static fields
.field private static final ANGLE_135:F = 135.0f

.field private static final ANGLE_225:F = 225.0f

.field private static final ANGLE_45:F = 45.0f

.field public static final PRESS_ANIMATE_WIDTH:I = 0xcc

.field public static final SLIDE_ANIMATE_HEIGHT:I = 0x1a4

.field public static final SLIDE_ANIMATE_WIDTH:I = 0x84


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragAnimationViewRight:Lcom/oplus/anim/EffectiveAnimationView;

.field private mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

.field private mTipsView:Landroid/widget/FrameLayout;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsContainerView;->initView(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/tips/TipsContainerView;->initLayoutParam()V

    return-void
.end method


# virtual methods
.method public animAdd(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 2

    return-void
.end method

.method public animRemove(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 2

    return-void
.end method

.method public getDragAnimationViewRight()Lcom/oplus/anim/EffectiveAnimationView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mDragAnimationViewRight:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method public getTipsView()Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mTipsView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public initLayoutParam()V
    .registers 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x90e

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x1000118

    or-int/2addr p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p0, 0x10

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 p0, 0x1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string p0, "ZoomTipsContainer"

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .registers 5

    sget v0, Lcom/android/wm/shell/R$layout;->zoom_tips_container:I

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/android/wm/shell/R$id;->tips_base_pixel:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mTipsView:Landroid/widget/FrameLayout;

    sget p1, Lcom/android/wm/shell/R$id;->animate_drag_right:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mDragAnimationViewRight:Lcom/oplus/anim/EffectiveAnimationView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mTipsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomUtil;->isRTL()Z

    move-result v0

    const v1, 0x800005

    const v2, 0x800003

    if-eqz v0, :cond_32

    move v0, v1

    goto :goto_33

    :cond_32
    move v0, v2

    :goto_33
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mTipsView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mDragAnimationViewRight:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomUtil;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_4d

    :cond_4c
    move v1, v2

    :goto_4d
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mDragAnimationViewRight:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mDragAnimationViewRight:Lcom/oplus/anim/EffectiveAnimationView;

    sget v0, Lcom/android/wm/shell/R$raw;->animation_slide:I

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomUtil;->isFoldDevice()Z

    move-result p1

    if-nez p1, :cond_67

    invoke-static {}, Lcom/oplus/zoom/common/ZoomUtil;->isTabletDevice()Z

    move-result p1

    if-eqz p1, :cond_75

    :cond_67
    invoke-static {}, Lcom/oplus/zoom/common/ZoomUtil;->isFlipDevice()Z

    move-result p1

    if-nez p1, :cond_75

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mDragAnimationViewRight:Lcom/oplus/anim/EffectiveAnimationView;

    const/high16 p1, 0x43610000  # 225.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_7c

    :cond_75
    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mDragAnimationViewRight:Lcom/oplus/anim/EffectiveAnimationView;

    const/high16 p1, 0x43070000  # 135.0f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_7c
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/oplus/zoom/ui/baseview/ViewHook;->onAttachedToWindow()V

    :cond_a
    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/oplus/zoom/ui/baseview/ViewHook;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    :cond_d
    return-void
.end method

.method public setHook(Lcom/oplus/zoom/ui/baseview/ViewHook;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsContainerView;->mHook:Lcom/oplus/zoom/ui/baseview/ViewHook;

    return-void
.end method
