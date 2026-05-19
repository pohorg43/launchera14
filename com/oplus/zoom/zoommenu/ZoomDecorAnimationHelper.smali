.class public Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper$AnimationUpdater;
    }
.end annotation


# static fields
.field private static final BOUND_ALPHA_ANIM_TIME:I = 0xfa

.field private static final BUTTON_ALPHA_ANIM_1:F = 0.3f

.field private static final BUTTON_ALPHA_ANIM_2:F = 0.1f

.field private static final BUTTON_ALPHA_ANIM_TIME:I = 0xc8

.field private static final COLOR_ALPHA_ANIM_1:F = 0.33f

.field private static final COLOR_ALPHA_ANIM_2:F = 0.67f

.field private static final COLOR_CHANGE_ANIM_TIME:I = 0xd9

.field private static final HANDLE_BACKGROUND_ALPHA_ANIM_1:F = 0.2f

.field private static final HANDLE_BACKGROUND_ALPHA_ANIM_2:F = 0.2f

.field private static final HANDLE_BACKGROUND_ANIM_TIME:J = 0xd9L

.field private static final SCALE_ALPHA_ANIM_1:F = 0.33f

.field private static final SCALE_ALPHA_ANIM_2:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "ZoomDecor"


# instance fields
.field private mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

.field private mHandleColorAnimator:Landroid/animation/ValueAnimator;

.field private mThreeButtonAnimator:Landroid/animation/ValueAnimator;

.field private mZoomTipAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->lambda$updateHandleColorWithAnim$0(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static synthetic lambda$updateHandleColorWithAnim$0(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public updateHandleBackgroundWithAnim(Landroid/view/View;ZLcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper$AnimationUpdater;)V
    .registers 6

    if-eqz p1, :cond_79

    if-nez p3, :cond_5

    goto :goto_79

    :cond_5
    const-string p3, "updateHandleBackgroundWithAnim current state is "

    const-string v0, "ZoomDecor"

    invoke-static {p3, p2, v0}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p3, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_1b

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_1b

    iget-object p3, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1b
    const/4 p3, 0x2

    if-eqz p2, :cond_35

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, p3, [F

    fill-array-data v0, :array_7a

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, p3, [F

    fill-array-data v1, :array_82

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_4b

    :cond_35
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, p3, [F

    fill-array-data v0, :array_8a

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, p3, [F

    fill-array-data v1, :array_92

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_4b
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    new-array p3, p3, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object p2, p3, v1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    invoke-virtual {v0, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0xd9

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000  # 1.0f

    const v1, 0x3e4ccccd  # 0.2f

    invoke-direct {p2, v1, p3, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_79
    :goto_79
    return-void

    :array_7a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_82
    .array-data 4
        0x3f200000  # 0.625f
        0x3f800000  # 1.0f
    .end array-data

    :array_8a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_92
    .array-data 4
        0x3f800000  # 1.0f
        0x3f200000  # 0.625f
    .end array-data
.end method

.method public updateHandleColorWithAnim(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZLcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper$AnimationUpdater;)V
    .registers 10

    if-eqz p1, :cond_8c

    if-eqz p2, :cond_8c

    if-nez p4, :cond_8

    goto/16 :goto_8c

    :cond_8
    const-string p4, "updateHandleColorWithAnim current state is "

    const-string v0, "ZoomDecor"

    invoke-static {p4, p3, v0}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p4, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_1e

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_1e

    iget-object p4, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1e
    const-string p4, "#0A7FFB"

    const/4 v0, 0x1

    const-string v1, "#BDBDBD"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p3, :cond_47

    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v3, v2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v3, v0

    invoke-static {v4, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p4

    goto :goto_66

    :cond_47
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v3, v0

    invoke-static {v4, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p4

    :goto_66
    new-instance v0, Landroidx/core/view/h;

    invoke-direct {v0, p2, p1}, Landroidx/core/view/h;-><init>(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper$1;-><init>(Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;ZLandroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0xd9

    invoke-virtual {p4, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const p1, 0x3ea8f5c3  # 0.33f

    const/4 p2, 0x0

    const p3, 0x3f2b851f  # 0.67f

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, p2, p3, v0, p4}, Lcom/android/launcher/download/m;->a(FFFFLandroid/animation/ValueAnimator;)V

    iput-object p4, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->start()V

    :cond_8c
    :goto_8c
    return-void
.end method

.method public updateScaleBoundWithAnim(Landroid/view/View;ZLcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper$AnimationUpdater;)V
    .registers 7

    if-eqz p1, :cond_50

    if-nez p3, :cond_5

    goto :goto_50

    :cond_5
    const-string p3, "updateScaleBoundWithAnim current state is "

    const-string v0, "ZoomDecor"

    invoke-static {p3, p2, v0}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p3, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_1b

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_1b

    iget-object p3, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1b
    const/4 p3, 0x2

    if-eqz p2, :cond_2a

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, p3, [F

    fill-array-data p3, :array_52

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_35

    :cond_2a
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, p3, [F

    fill-array-data p3, :array_5a

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_35
    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3ea8f5c3  # 0.33f

    const/4 v0, 0x0

    const v1, 0x3f2b851f  # 0.67f

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {p2, p3, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_50
    :goto_50
    return-void

    nop

    :array_52
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_5a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public updateThreeButtonWithAnim(Landroid/view/View;ZLcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper$AnimationUpdater;)V
    .registers 7

    if-eqz p1, :cond_50

    if-nez p3, :cond_5

    goto :goto_50

    :cond_5
    const-string p3, "updateThreeButtonWithAnim change state, current state is "

    const-string v0, "ZoomDecor"

    invoke-static {p3, p2, v0}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p3, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mThreeButtonAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_1b

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_1b

    iget-object p3, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mThreeButtonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1b
    const/4 p3, 0x2

    if-eqz p2, :cond_2a

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, p3, [F

    fill-array-data p3, :array_52

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_35

    :cond_2a
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, p3, [F

    fill-array-data p3, :array_5a

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_35
    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3e99999a  # 0.3f

    const/4 v0, 0x0

    const v1, 0x3dcccccd  # 0.1f

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {p2, p3, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mThreeButtonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_50
    :goto_50
    return-void

    nop

    :array_52
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_5a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public updateZoomTipWithAnim(Landroid/view/View;ZLcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper$AnimationUpdater;)V
    .registers 7

    if-eqz p1, :cond_50

    if-nez p3, :cond_5

    goto :goto_50

    :cond_5
    const-string p3, "updateZoomTipWithAnim current state is "

    const-string v0, "ZoomDecor"

    invoke-static {p3, p2, v0}, Lcom/android/launcher/c0;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p3, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mZoomTipAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_1b

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    if-eqz p3, :cond_1b

    iget-object p3, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mZoomTipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1b
    const/4 p3, 0x2

    if-eqz p2, :cond_2a

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, p3, [F

    fill-array-data p3, :array_52

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_35

    :cond_2a
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, p3, [F

    fill-array-data p3, :array_5a

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_35
    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3ea8f5c3  # 0.33f

    const/4 v0, 0x0

    const v1, 0x3f2b851f  # 0.67f

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {p2, p3, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lcom/oplus/zoom/zoommenu/ZoomDecorAnimationHelper;->mZoomTipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_50
    :goto_50
    return-void

    nop

    :array_52
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_5a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method
