.class Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CHANGE_ANIMATION_DURATION:I = 0x205

.field private static final CHANGE_ANIMATION_FADE_DURATION:I = 0x50

.field private static final CHANGE_ANIMATION_FADE_OFFSET:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "ActivityEmbeddingAnimSpec"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

.field private mTransitionAnimationScaleSetting:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/policy/TransitionAnimation;

    const/4 v1, 0x0

    const-string v2, "ActivityEmbeddingAnimSpec"

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const v0, 0x10c001a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public static createNoopAnimation(Landroid/window/TransitionInfo$Change;)Landroid/view/animation/Animation;
    .registers 2
    .param p0  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    goto :goto_e

    :cond_c
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_e
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v0
.end method

.method public static createShowSnapshotForClosingAnimation()Landroid/view/animation/Animation;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v0
.end method

.method private shouldShowBackdrop(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z
    .registers 4
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p0, v0}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->loadAttributeAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method


# virtual methods
.method public createChangeBoundsChangeAnimations(Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)[Landroid/view/animation/Animation;
    .registers 16
    .param p1  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000  # 1.0f

    div-float v4, v3, v1

    div-float v5, v3, v2

    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    invoke-direct {v8, v3, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v10, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v8, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v10, 0x50

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v10, 0x1e

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v6, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v8, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v8, v4, v4, v5, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iget-object v4, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x205

    invoke-virtual {v8, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v6, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v6, v8, v10, v11, v12}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    iget v8, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v6, v8}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v11, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v11}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v11, v1, v3, v2, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v8, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v11, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v11

    int-to-float v3, v3

    invoke-direct {v1, v2, v9, v3, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v2, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance p1, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {p1, v1, v2}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v8, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {v8, p1, v0, v1, p2}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    iget p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v8, p0}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/view/animation/Animation;

    aput-object v6, p0, v7

    aput-object v8, p0, v10

    return-object p0
.end method

.method public createChangeBoundsCloseAnimation(Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 9
    .param p1  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_25

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v4, :cond_25

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ne p2, v0, :cond_1d

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    neg-int p2, p2

    goto :goto_21

    :cond_1d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    :goto_21
    move v5, v2

    move v2, p2

    move p2, v5

    goto :goto_2c

    :cond_25
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-ne v0, v1, :cond_2c

    neg-int p2, p2

    :cond_2c
    :goto_2c
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v2

    int-to-float p2, p2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x205

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object v0
.end method

.method public createChangeBoundsOpenAnimation(Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 9
    .param p1  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_25

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v4, :cond_25

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ne p2, v0, :cond_1d

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    neg-int p2, p2

    goto :goto_21

    :cond_1d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    :goto_21
    move v5, v2

    move v2, p2

    move p2, v5

    goto :goto_2c

    :cond_25
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-ne v0, v1, :cond_2c

    neg-int p2, p2

    :cond_2c
    :goto_2c
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v2

    int-to-float p2, p2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x205

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object v0
.end method

.method public loadCloseAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 6
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->shouldShowBackdrop(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-eqz v0, :cond_15

    sget p2, Lcom/android/internal/R$anim;->task_fragment_clear_top_close_enter:I

    goto :goto_17

    :cond_15
    sget p2, Lcom/android/internal/R$anim;->task_fragment_clear_top_close_exit:I

    :goto_17
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_3e

    :cond_1c
    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->canUseCustomCloseTaskFragmentAnimation(Landroid/window/TransitionInfo$Change;)Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->HookTaskFragmentCloseAnimation(Landroid/window/TransitionInfo$Change;Lcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_3e

    :cond_31
    iget-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-eqz v0, :cond_38

    sget p2, Lcom/android/internal/R$anim;->activity_close_enter:I

    goto :goto_3a

    :cond_38
    sget p2, Lcom/android/internal/R$anim;->activity_close_exit:I

    :goto_3a
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object p1

    :goto_3e
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object p1
.end method

.method public loadOpenAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 6
    .param p1  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo$Change;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->canUseCustomOpenTaskFragmentAnimation(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {p1, p2, p3, v0, p0}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->loadSettingsTaskFragmentOpenAnimation(Landroid/window/TransitionInfo$Change;Landroid/graphics/Rect;Lcom/android/internal/policy/TransitionAnimation;F)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    :cond_17
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->shouldShowBackdrop(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-eqz v0, :cond_2c

    sget p2, Lcom/android/internal/R$anim;->task_fragment_clear_top_open_enter:I

    goto :goto_2e

    :cond_2c
    sget p2, Lcom/android/internal/R$anim;->task_fragment_clear_top_open_exit:I

    :goto_2e
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_55

    :cond_33
    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->needHookTaskFragmentOpenAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-static {}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->getInstance()Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    invoke-virtual {p1, p2, v0}, Lcom/android/wm/shell/activityembedding/OplusActivityEmbeddingAnimationRunner;->hookTaskFragmentOpenAnimation(Lcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_55

    :cond_48
    iget-object p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    if-eqz v0, :cond_4f

    sget p2, Lcom/android/internal/R$anim;->activity_open_enter:I

    goto :goto_51

    :cond_4f
    sget p2, Lcom/android/internal/R$anim;->activity_open_exit:I

    :goto_51
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    move-result-object p1

    :goto_55
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget p0, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    return-object p1
.end method

.method public setAnimScaleSetting(F)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    return-void
.end method
