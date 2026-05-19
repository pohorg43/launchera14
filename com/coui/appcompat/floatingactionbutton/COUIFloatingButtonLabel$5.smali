.class Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$5;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/high16 p2, 0x40000000  # 2.0f

    const/high16 v0, 0x3f800000  # 1.0f

    const-string v1, "The given view is empty. Please provide a valid view."

    const/4 v2, 0x1

    if-eqz p1, :cond_61

    if-eq p1, v2, :cond_14

    const/4 v3, 0x3

    if-eq p1, v3, :cond_14

    goto/16 :goto_d3

    :cond_14
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$5;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    sget p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->m:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->e:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2a
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    iget p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->d:F

    sget-object v3, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->a:Landroid/view/animation/PathInterpolator;

    if-eqz p1, :cond_5b

    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p2

    invoke-direct {v1, p0, v0, v3, v4}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x154

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    sget-object p0, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p0, v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_d3

    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$5;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;

    iget-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->a:Z

    if-eqz p1, :cond_6c

    const/16 p1, 0x12e

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    :cond_6c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->e:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7e

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7e
    iget-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    sget-object v3, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->a:Landroid/view/animation/PathInterpolator;

    if-eqz p1, :cond_d5

    new-instance v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;

    const v3, 0x3f666666  # 0.9f

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, p2

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    sget-object p2, Lcom/coui/appcompat/floatingactionbutton/COUIFABPressFeedbackUtil;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonTouchAnimation;->a:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_dc

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->e:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$6;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$6;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$7;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel$7;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;)V

    invoke-virtual {v1, p1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButtonLabel;->g:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_d3
    const/4 p0, 0x0

    return p0

    :cond_d5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_dc
    .array-data 4
        0x3f800000  # 1.0f
        0x3f666666  # 0.9f
    .end array-data
.end method
