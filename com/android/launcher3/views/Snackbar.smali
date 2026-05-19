.class public Lcom/android/launcher3/views/Snackbar;
.super Lcom/android/launcher3/AbstractFloatingView;
.source ""


# static fields
.field private static final HIDE_DURATION_MS:J = 0xb4L

.field private static final SHOW_DURATION_MS:J = 0xb4L

.field private static final TIMEOUT_DURATION_MS:I = 0xfa0


# instance fields
.field private final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mOnDismissed:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/Snackbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/views/ActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const p2, 0x7f0d0221

    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/views/Snackbar;->lambda$show$0(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/views/Snackbar;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/views/Snackbar;->lambda$show$1(Lcom/android/launcher3/views/Snackbar;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/views/Snackbar;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/views/Snackbar;->onClosed()V

    return-void
.end method

.method private static synthetic lambda$show$0(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private static synthetic lambda$show$1(Lcom/android/launcher3/views/Snackbar;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private onClosed()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_10
    return-void
.end method

.method public static show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 20
    .param p4  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;II",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p2

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    const/4 v3, 0x1

    const/16 v4, 0x80

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    new-instance v2, Lcom/android/launcher3/views/Snackbar;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/launcher3/views/Snackbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070eaa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setElevation(F)V

    const v6, 0x7f070eb2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v7, 0x7f08093a

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iput-boolean v3, v2, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/16 v9, 0x51

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v9, 0x7f070eab

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v9, 0x7f070ead

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f070eb0

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f070eac

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f070eaf

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v13

    const/4 v14, 0x2

    mul-int/2addr v10, v14

    sub-int/2addr v13, v10

    iget v10, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v10

    iget v10, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v10

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    mul-int/2addr v9, v14

    sub-int/2addr v7, v9

    iget v9, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v9

    iget v9, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v9

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v3

    invoke-virtual {v8, v4, v4, v4, v11}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const v3, 0x7f0a036e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move/from16 v7, p1

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0a003e

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eq v1, v12, :cond_ea

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/launcher3/allapps/a;

    move-object/from16 v13, p4

    invoke-direct {v1, v13, v2}, Lcom/android/launcher3/allapps/a;-><init>(Ljava/lang/Runnable;Lcom/android/launcher3/views/Snackbar;)V

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_f0

    :cond_ea
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move v12, v11

    :goto_f0
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, v12

    float-to-int v1, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v7

    mul-int/2addr v6, v14

    add-int/2addr v6, v1

    iget v1, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-le v6, v1, :cond_13b

    if-gt v6, v10, :cond_10f

    iput v6, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_13b

    :cond_10f
    const v1, 0x7f070ea9

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v6, 0x7f070eb1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    mul-int/lit8 v7, v1, 0x2

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v9, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v3, v1

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_13b
    :goto_13b
    move-object/from16 v1, p3

    iput-object v1, v2, Lcom/android/launcher3/views/Snackbar;->mOnDismissed:Ljava/lang/Runnable;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const v1, 0x3f4ccccd  # 0.8f

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/16 v1, 0xfa0

    const/4 v3, 0x6

    invoke-static {p0, v1, v3}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->getRecommendedTimeoutMillis(Landroid/content/Context;II)I

    move-result v0

    new-instance v1, Lcom/android/launcher3/folder/t;

    invoke-direct {v1, v2}, Lcom/android/launcher3/folder/t;-><init>(Lcom/android/launcher3/views/Snackbar;)V

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static show(Landroid/content/Context;ILjava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handleClose(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_3f

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/model/c1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/launcher3/views/Snackbar;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3c

    :cond_32
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Lcom/android/launcher3/views/Snackbar;->onClosed()V

    :goto_3c
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    :cond_3f
    return-void
.end method

.method public isOfType(I)Z
    .registers 2

    and-int/lit16 p0, p1, 0x80

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/views/Snackbar;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_16
    const/4 p0, 0x0

    return p0
.end method
