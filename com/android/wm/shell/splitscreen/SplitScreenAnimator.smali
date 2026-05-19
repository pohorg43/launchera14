.class public Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;,
        Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;
    }
.end annotation


# static fields
.field private static final SWAP_ANIMATOR_DURATION:J = 0x1e0L

.field private static final SWAP_ANIMATOR_SCALE:F = 0.9f


# instance fields
.field private mSwapAnimator:Landroid/animation/ValueAnimator;

.field private final mSwapInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Ljava/util/List;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->lambda$startSwapAnimation$0(Ljava/util/List;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private cancelAllAnimator()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method private createSwapAnimationAdapter(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;
    .registers 6

    new-instance v0, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p0, 0x1e0

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;

    invoke-direct {p0, p3, v0, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;-><init>(Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Z)V

    return-object p0
.end method

.method private synthetic lambda$startSwapAnimation$0(Ljava/util/List;Landroid/animation/ValueAnimator;)V
    .registers 7

    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;JF)V

    goto :goto_9

    :cond_25
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method


# virtual methods
.method public startSwapAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 10

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->cancelAllAnimator()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, p5, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->createSwapAnimationAdapter(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p2, p4, p6, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->createSwapAnimationAdapter(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Z)Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$SwapAnimationAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_70

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 p2, 0x0

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;

    invoke-virtual {p4}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$AnimationAdapter;->getDurationHint()J

    move-result-wide p4

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_2f

    :cond_44
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/splitscreen/h;

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/splitscreen/h;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;

    invoke-direct {p2, p0, p6, p7}, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;Landroid/view/SurfaceControl;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 p2, -0x1

    invoke-virtual {p1, p6, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenAnimator;->mSwapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_70
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
