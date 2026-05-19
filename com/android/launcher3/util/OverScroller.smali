.class public Lcom/android/launcher3/util/OverScroller;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/OverScroller$SplineOverScroller;,
        Lcom/android/launcher3/util/OverScroller$SpringParams;,
        Lcom/android/launcher3/util/OverScroller$SplineOverScrollerSpringProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OverScroller"


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mMode:I

.field private final mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/util/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_a

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/launcher3/util/OverScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_c

    :cond_a
    iput-object p2, p0, Lcom/android/launcher3/util/OverScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    :goto_c
    iput-boolean p3, p0, Lcom/android/launcher3/util/OverScroller;->mFlywheel:Z

    new-instance p2, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    return-void
.end method

.method public static getBackSpringParams(Landroid/content/Context;)[F
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-static {p0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object p0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-eqz v1, :cond_1c

    const v1, 0x7f07016b

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v1

    const v2, 0x7f070168

    invoke-interface {p0, v2}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p0

    goto :goto_3f

    :cond_1c
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_31

    const v1, 0x7f07016c

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v1

    const v2, 0x7f070169

    invoke-interface {p0, v2}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p0

    goto :goto_3f

    :cond_31
    const v1, 0x7f07016a

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v1

    const v2, 0x7f070167

    invoke-interface {p0, v2}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p0

    :goto_3f
    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public static getFlingSpringParams(Landroid/content/Context;)[F
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-static {p0}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object p0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    if-eqz v1, :cond_1c

    const v1, 0x7f07080c

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v1

    const v2, 0x7f070809

    invoke-interface {p0, v2}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p0

    goto :goto_3f

    :cond_1c
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_31

    const v1, 0x7f07080d

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v1

    const v2, 0x7f07080a

    invoke-interface {p0, v2}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p0

    goto :goto_3f

    :cond_31
    const v1, 0x7f07080b

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v1

    const v2, 0x7f070808

    invoke-interface {p0, v2}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result p0

    :goto_3f
    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method


# virtual methods
.method public abortAnimation()V
    .registers 4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverScroller"

    const-string v2, "abortAnimation"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget v0, p0, Lcom/android/launcher3/util/OverScroller;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    if-eq v0, v1, :cond_10

    goto :goto_64

    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller;->isSpringing()Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$000(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->finish()V

    goto :goto_64

    :cond_35
    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller;->isSpringing()Z

    move-result v0

    if-eqz v0, :cond_3c

    return v1

    :cond_3c
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$800(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$700(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_61

    iget-object v4, p0, Lcom/android/launcher3/util/OverScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_64

    :cond_61
    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller;->abortAnimation()V

    :cond_64
    :goto_64
    return v1
.end method

.method public extendDuration(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->extendDuration(I)V

    return-void
.end method

.method public fling(IIII)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/OverScroller;->fling(IIIII)V

    return-void
.end method

.method public fling(IIIII)V
    .registers 12

    iget-boolean v0, p0, Lcom/android/launcher3/util/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$400(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)F

    move-result v0

    int-to-float v1, p2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1f

    add-float/2addr v1, v0

    float-to-int p2, v1

    :cond_1f
    move v2, p2

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/launcher3/util/OverScroller;->mMode:I

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 17

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/OverScroller;->fling(IIIII)V

    return-void
.end method

.method public flingSpring()V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/OverScroller;->mMode:I

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$902(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;I)I

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->startFlingSpring()V

    return-void
.end method

.method public flingSpringPrepare(IIIII)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/util/OverScroller;->fling(IIIII)V

    return-void
.end method

.method public final forceFinished(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    const-string v0, "forceFinished"

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$100(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;ZLjava/lang/String;)V

    return-void
.end method

.method public getCurrVelocity()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$400(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)F

    move-result p0

    return p0
.end method

.method public final getCurrX()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$200(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final getCurrXAfterOffset()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$200(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)F

    move-result v0

    float-to-int v0, v0

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$300(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final getCurrXF()F
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$200(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)F

    move-result p0

    return p0
.end method

.method public final getDuration()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$700(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final getFinalX()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$600(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public getSpring()Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$1000(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public final getStartPos()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$500(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I

    move-result p0

    return p0
.end method

.method public final isFinished()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$000(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)Z

    move-result p0

    return p0
.end method

.method public isInFling()Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/util/OverScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$000(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public final isInScrollMode()Z
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OverScroller;->mMode:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isOverScrolled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$000(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$900(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isSpringing()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {v0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$900(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/util/OverScroller;->isFinished()Z

    move-result p0

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public notifyEdgeReached(III)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public setCaller(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$1102(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setFinalX(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public final setFriction(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->setFriction(F)V

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    if-nez p1, :cond_7

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/launcher3/util/OverScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_9

    :cond_7
    iput-object p1, p0, Lcom/android/launcher3/util/OverScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    :goto_9
    return-void
.end method

.method public setScrollOffset(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$302(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;I)I

    return-void
.end method

.method public setSplineOverScrollerSpringProvider(Lcom/android/launcher3/util/OverScroller$SplineOverScrollerSpringProvider;)V
    .registers 2
    .param p1  # Lcom/android/launcher3/util/OverScroller$SplineOverScrollerSpringProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$1202(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;Lcom/android/launcher3/util/OverScroller$SplineOverScrollerSpringProvider;)Lcom/android/launcher3/util/OverScroller$SplineOverScrollerSpringProvider;

    return-void
.end method

.method public springBack(III)Z
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/OverScroller;->mMode:I

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->springback(III)Z

    move-result p0

    return p0
.end method

.method public springBack(IIIIII)Z
    .registers 7

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/launcher3/util/OverScroller;->springBack(III)Z

    move-result p0

    return p0
.end method

.method public startBackSpring(IIF)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/OverScroller;->mMode:I

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$902(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;I)I

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->startBackSpring(IIF)V

    return-void
.end method

.method public startScroll(II)V
    .registers 4

    const/16 v0, 0xfa

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/util/OverScroller;->startScroll(III)V

    return-void
.end method

.method public startScroll(III)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/OverScroller;->mMode:I

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->startScroll(III)V

    return-void
.end method

.method public startScroll(IIII)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/OverScroller;->startScroll(II)V

    return-void
.end method

.method public startScroll(IIIII)V
    .registers 6

    invoke-virtual {p0, p1, p3, p5}, Lcom/android/launcher3/util/OverScroller;->startScroll(III)V

    return-void
.end method

.method public startScrollSpring(IIIF)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/OverScroller;->mMode:I

    iget-object v0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$902(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;I)I

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->startScroll(IIIF)V

    return-void
.end method

.method public timePassed()I
    .registers 5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-static {p0}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->access$800(Lcom/android/launcher3/util/OverScroller$SplineOverScroller;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public final useFrictionCoefficient(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/OverScroller;->mScroller:Lcom/android/launcher3/util/OverScroller$SplineOverScroller;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OverScroller$SplineOverScroller;->useFrictionCoefficient(Z)V

    return-void
.end method
