.class public Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler$FlexibleFoldSwitchStateObserver;
    }
.end annotation


# static fields
.field public static final ACTIVITY_VISIBLE:Ljava/lang/String; = "isVisible"

.field private static final ANIM_BACK_ENTER_DURATION:I = 0x190

.field private static final ANIM_BACK_ENTER_FROM_XDELTA:F = -0.3f

.field private static final ANIM_BACK_ENTER_TO_XDELTA:F = 0.0f

.field private static final ANIM_BACK_EXIT_DURATION:I = 0x190

.field private static final ANIM_BACK_EXIT_FROM_XDELTA:F = 0.0f

.field private static final ANIM_BACK_EXIT_TO_XDELTA:F = 1.0f

.field private static final ANIM_BACK_NORMAL_ENTER_DURATION:I = 0x13d

.field private static final ANIM_BACK_NORMAL_FROM_SCALE:F = 0.7f

.field private static final ANIM_BACK_NORMAL_TO_SCALE:F = 1.0f

.field private static final ANIM_ENTER_DURATION:I = 0xfa

.field private static final ANIM_EXIT_DURATION:I = 0x96

.field private static final ANIM_FROM_ALPHA:F = 0.0f

.field private static final ANIM_FROM_SCALE:F = 0.8f

.field private static final ANIM_FROM_YDELTA:F = 0.0f

.field private static final ANIM_START_NORMAL_ENTER_ALPHA_DURATION:I = 0x85

.field private static final ANIM_START_NORMAL_ENTER_FROM_ALPHA:F = 0.0f

.field private static final ANIM_START_NORMAL_ENTER_FROM_SCALE:F = 0.7f

.field private static final ANIM_START_NORMAL_ENTER_SCALE_DURATION:I = 0x113

.field private static final ANIM_START_NORMAL_ENTER_TO_ALPHA:F = 1.0f

.field private static final ANIM_START_NORMAL_ENTER_TO_SCALE:F = 1.0f

.field private static final ANIM_START_NORMAL_EXIT_DURATION:I = 0xa7

.field private static final ANIM_START_NORMAL_EXIT_STARTOFFSET:I = 0xa7

.field private static final ANIM_SWITCH_ENTER_DURATION:I = 0x190

.field private static final ANIM_SWITCH_ENTER_FROM_XDELTA:F = 1.0f

.field private static final ANIM_SWITCH_ENTER_TO_XDELTA:F = 0.0f

.field private static final ANIM_SWITCH_EXIT_DURATION:I = 0x190

.field private static final ANIM_SWITCH_EXIT_FROM_XDELTA:F = 0.0f

.field private static final ANIM_SWITCH_EXIT_TO_XDELTA:F = -0.3f

.field private static final ANIM_TO_ALPHA:F = 1.0f

.field private static final ANIM_TO_SCALE:F = 1.0f

.field private static final ANIM_TO_YDELTA:F = 0.0f

.field private static final DEBUG:Z

.field private static final DP_CORNER_RADIUS:I = 0x18

.field private static final DP_SHADOW_RADIUS:I = 0xa

.field public static final FRONT_IS_FLEXIBLE:Ljava/lang/String; = "frontIsFlexibleActivity"

.field public static final IS_FLEXIBLE:Ljava/lang/String; = "isFlexibleActivity"

.field private static final METADATA_FLEXIBLE_ACTIVITY:I = 0xc8

.field public static final TAG:Ljava/lang/String; = "FlexibleActivityTransitionHandler"

.field public static final TOP_IS_FLEXIBLE:Ljava/lang/String; = "topIsFlexibleActivity"

.field private static final TRANSIT_CLOSE_IN_FLEXIBLE:I = 0x44d

.field private static final TRANSIT_OPEN_IN_FLEXIBLE:I = 0x44c


# instance fields
.field private final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;)V
    .registers 6
    .param p1  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mAnimations:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p2, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p3, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p5, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler$FlexibleFoldSwitchStateObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler$FlexibleFoldSwitchStateObserver;-><init>(Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler$1;)V

    invoke-static {p1}, Lcom/oplus/foldswitch/ReflectionHelper;->registerOplusFoldSwitchStateObserver(Lcom/oplus/foldswitch/OplusFoldSwitchStateObserver;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;Ljava/util/ArrayList;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->lambda$startAnimation$0(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic b(Ljava/util/ArrayList;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->lambda$startAnimation$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method private createBackEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 15

    const-string p0, "FlexibleActivityTransitionHandler"

    const-string v0, "**createBackEnterAnimation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a  # 0.3f

    const v3, 0x3e851eb8  # 0.26f

    const v4, 0x3ecccccd  # 0.4f

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, -0x41666666  # -0.3f

    mul-float/2addr v3, v4

    sub-float/2addr v5, v3

    float-to-int v3, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v3, v6, v6, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v2, v3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const v6, -0x41666666  # -0.3f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    return-object p0
.end method

.method private createBackExitAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 15

    const-string p0, "FlexibleActivityTransitionHandler"

    const-string v0, "**createBackExitAnimation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000  # 0.25f

    const v3, 0x3dcccccd  # 0.1f

    const v4, 0x3e99999a  # 0.3f

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v3, v5, v5, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v2, v3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000  # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    return-object p0
.end method

.method private createBackNormalEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 16

    const-string p0, "FlexibleActivityTransitionHandler"

    const-string v0, "**createBackNormalEnterAnimation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v5, v7, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const-wide/16 v5, 0x13d

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000  # 2.0f

    div-float v12, v1, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float v13, p1, v3

    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const v8, 0x3f333333  # 0.7f

    const/high16 v9, 0x3f800000  # 1.0f

    const v10, 0x3f333333  # 0.7f

    const/high16 v11, 0x3f800000  # 1.0f

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v7, 0xa7

    invoke-virtual {p1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    return-object p0
.end method

.method private createBackNormalExitAnimation()Landroid/view/animation/Animation;
    .registers 5

    const-string p0, "FlexibleActivityTransitionHandler"

    const-string v0, "**createBackNormalExitAnimation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xa7

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a  # 0.3f

    invoke-direct {v2, v3, v1, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/AlphaAnimation;->setHasRoundedCorners(Z)V

    return-object p0
.end method

.method private createEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 16

    const-string p0, "FlexibleActivityTransitionHandler"

    const-string v0, "**createEnterAnimation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd  # 0.1f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v2, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v5, v7, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v2, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float v12, v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float v13, p1, v2

    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const v8, 0x3f4ccccd  # 0.8f

    const/high16 v9, 0x3f800000  # 1.0f

    const v10, 0x3f4ccccd  # 0.8f

    const/high16 v11, 0x3f800000  # 1.0f

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {p1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    return-object p0
.end method

.method private createExitAnimation()Landroid/view/animation/Animation;
    .registers 6

    const-string p0, "FlexibleActivityTransitionHandler"

    const-string v0, "**createExitAnimation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd  # 0.1f

    const v4, 0x3f666666  # 0.9f

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setHasRoundedCorners(Z)V

    return-object p0
.end method

.method private createNoAnimation()Landroid/view/animation/Animation;
    .registers 3

    const-string p0, "FlexibleActivityTransitionHandler"

    const-string v0, "createNoAnimation "

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x85

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method private createStartNormalEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 12

    const-string p0, "FlexibleActivityTransitionHandler"

    const-string v0, "**createStartNormalEnterAnimation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float v7, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float v8, p1, v1

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    const v1, 0x3e4ccccd  # 0.2f

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-direct {p1, v0, v0, v1, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f333333  # 0.7f

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3f333333  # 0.7f

    const/high16 v6, 0x3f800000  # 1.0f

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x113

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v2, 0xa7

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const v4, 0x3f2b851f  # 0.67f

    invoke-direct {p1, v1, v0, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x85

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    return-object p0
.end method

.method private createStartNormalExitAnimation()Landroid/view/animation/Animation;
    .registers 5

    const-string p0, "FlexibleActivityTransitionHandler"

    const-string v0, "**createStartNormalExitAnimation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xa7

    invoke-virtual {p0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a  # 0.3f

    invoke-direct {v2, v3, v1, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/AlphaAnimation;->setHasRoundedCorners(Z)V

    return-object p0
.end method

.method private createSwitchEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 15

    const-string p0, "FlexibleActivityTransitionHandler"

    const-string v0, "**createSwitchEnterAnimation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a  # 0.3f

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v3, v4, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v2, v3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    return-object p0
.end method

.method private createSwitchExitAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 16

    const-string p0, "FlexibleActivityTransitionHandler"

    const-string v0, "**createSwitchExitAnimation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a  # 0.3f

    const v3, 0x3e19999a  # 0.15f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, -0x41666666  # -0.3f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v2, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v6, v2, v8, v7, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v5, v6}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    return-object p0
.end method

.method private isTranslucent(Landroid/window/TransitionInfo$Change;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private synthetic lambda$startAnimation$0(Ljava/util/ArrayList;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-interface {p2, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    return-void
.end method

.method private static synthetic lambda$startAnimation$1(Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method private loadActivityClose(ZZZZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 8

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_17

    if-nez p3, :cond_12

    invoke-direct {p0, p5}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createBackNormalEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_2e

    :cond_12
    invoke-direct {p0, p5}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createBackEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_2e

    :cond_17
    invoke-direct {p0}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createNoAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_2e

    :cond_1c
    if-eqz p2, :cond_2a

    if-eqz p4, :cond_25

    invoke-direct {p0, p5}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createBackExitAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_2e

    :cond_25
    invoke-direct {p0}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createExitAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_2e

    :cond_2a
    invoke-direct {p0}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createBackNormalExitAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    :goto_2e
    return-object p0
.end method

.method private loadActivityOpen(ZZZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 8

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz p1, :cond_15

    if-eqz p2, :cond_10

    invoke-direct {p0, p4}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createSwitchEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_27

    :cond_10
    invoke-direct {p0, p5}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createStartNormalEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_27

    :cond_15
    if-eqz p2, :cond_23

    if-eqz p3, :cond_1e

    invoke-direct {p0, p4}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createSwitchExitAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_27

    :cond_1e
    invoke-direct {p0}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createStartNormalExitAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_27

    :cond_23
    invoke-direct {p0}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createNoAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    :goto_27
    return-object p0
.end method

.method private loadAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/view/animation/Animation;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/window/TransitionInfo$Change;",
            "Landroid/util/ArraySet<",
            "Landroid/window/TransitionInfo$Change;",
            ">;",
            "Landroid/util/ArraySet<",
            "Landroid/window/TransitionInfo$Change;",
            ">;)",
            "Landroid/view/animation/Animation;"
        }
    .end annotation

    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v2

    invoke-static/range {p2 .. p2}, Lcom/oplus/transition/FlexibleSubDisplayTransition;->getSubScenarioBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    const-string v4, "isFlexibleActivity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v7, "frontIsFlexibleActivity"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "topIsFlexibleActivity"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v10

    const-string v12, "isVisible"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_40
    :goto_40
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_5a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/window/TransitionInfo$Change;

    if-nez v3, :cond_40

    invoke-direct {p0, v13}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->isTranslucent(Landroid/window/TransitionInfo$Change;)Z

    move-result v10

    if-nez v10, :cond_58

    move v9, v14

    move v10, v9

    goto :goto_40

    :cond_58
    move v10, v14

    goto :goto_40

    :cond_5a
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5e
    :goto_5e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_72

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/window/TransitionInfo$Change;

    invoke-direct {p0, v13}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->isTranslucent(Landroid/window/TransitionInfo$Change;)Z

    move-result v13

    if-nez v13, :cond_5e

    move v11, v14

    goto :goto_5e

    :cond_72
    const-string v12, " loadAnimation, isFlexibleActivity: "

    const-string v13, ", frontIsFlexibleActivity: "

    const-string v14, ", topIsFlexibleActivity: "

    invoke-static {v12, v4, v13, v7, v14}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isVisible: "

    const-string v14, ", bounds: "

    invoke-static {v12, v8, v13, v3, v14}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "FlexibleActivityTransitionHandler"

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9b

    invoke-virtual/range {p3 .. p3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c0

    :cond_9b
    if-eqz v9, :cond_b2

    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b2

    const-string v1, "loadTranslucentOpenAnimation "

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, v2

    move v2, v4

    move v3, v7

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->loadTranslucentOpenAnimation(ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_b2
    if-eqz v11, :cond_c0

    if-eqz v10, :cond_c0

    const-string v1, "loadTranslucentCloseAnimation "

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v4, v7, v5}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->loadTranslucentCloseAnimation(ZZZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_c0
    const/16 v3, 0x44c

    if-ne v1, v3, :cond_d4

    const-string v1, "loadActivityOpen "

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, v2

    move v2, v4

    move v3, v8

    move-object v4, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->loadActivityOpen(ZZZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_d4
    const/16 v3, 0x44d

    if-ne v1, v3, :cond_e7

    const-string v1, "loadActivityClose "

    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, v2

    move v2, v4

    move v3, v8

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->loadActivityClose(ZZZZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_e7
    invoke-direct {p0}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createNoAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private loadTranslucentCloseAnimation(ZZZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 7

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz p1, :cond_17

    if-eqz p3, :cond_29

    if-eqz p2, :cond_12

    invoke-direct {p0, p4}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createBackEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_29

    :cond_12
    invoke-direct {p0, p4}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createBackNormalEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_29

    :cond_17
    if-eqz p2, :cond_25

    if-eqz p3, :cond_20

    invoke-direct {p0, p4}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createBackExitAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_29

    :cond_20
    invoke-direct {p0}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createExitAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_29

    :cond_25
    invoke-direct {p0}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createBackNormalExitAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    :cond_29
    :goto_29
    return-object v0
.end method

.method private loadTranslucentOpenAnimation(ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 9

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_17

    if-eqz p3, :cond_12

    invoke-direct {p0, p5}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createSwitchEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_29

    :cond_12
    invoke-direct {p0, p5}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_29

    :cond_17
    invoke-direct {p0, p6}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createStartNormalEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_29

    :cond_1c
    if-eqz p2, :cond_29

    if-nez p4, :cond_25

    invoke-direct {p0}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createStartNormalExitAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_29

    :cond_25
    invoke-direct {p0, p5}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->createSwitchExitAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    :cond_29
    :goto_29
    return-object v0
.end method

.method private setupAnimHierarchy(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 v0, p0, 0x1

    add-int/lit8 v1, p0, -0x1

    :goto_c
    if-ltz v1, :cond_4c

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_37

    const/4 v5, 0x3

    if-ne v2, v5, :cond_28

    goto :goto_37

    :cond_28
    const/4 v5, 0x2

    if-eq v2, v5, :cond_2e

    const/4 v5, 0x4

    if-ne v2, v5, :cond_46

    :cond_2e
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    const/16 v4, 0x44d

    if-ne v2, v4, :cond_44

    goto :goto_3f

    :cond_37
    :goto_37
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v2

    const/16 v4, 0x44c

    if-ne v2, v4, :cond_44

    :goto_3f
    add-int v2, v0, p0

    sub-int v4, v2, v1

    goto :goto_46

    :cond_44
    sub-int v4, v0, v1

    :cond_46
    :goto_46
    invoke-virtual {p2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_4c
    return-void
.end method

.method private setupStartState(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    invoke-static {p1}, Lcom/oplus/transition/FlexibleSubDisplayTransition;->getSubScenarioBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "isFlexibleActivity"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_23
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/16 v2, 0xc8

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41200000  # 10.0f

    invoke-static {v5, v4}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->dip2px(FLandroid/content/Context;)F

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->dip2px(FLandroid/content/Context;)F

    move-result v0

    invoke-virtual {p3, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p3, p2, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    const/high16 v0, 0x41c00000  # 24.0f

    iget-object p0, p0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->dip2px(FLandroid/content/Context;)F

    move-result p0

    invoke-virtual {p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result p0

    if-eqz p0, :cond_8d

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_8d
    return-void
.end method


# virtual methods
.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 3
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionRequestInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 26
    .param p1  # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/view/SurfaceControl$Transaction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    const/16 v4, 0x44c

    if-eq v3, v4, :cond_18

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    const/16 v4, 0x44d

    if-eq v3, v4, :cond_18

    const/4 v0, 0x0

    return v0

    :cond_18
    invoke-direct {v0, v1, v2}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->setupAnimHierarchy(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/quickstep/f1;

    move-object/from16 v3, p5

    invoke-direct {v14, v0, v13, v3}, Lcom/android/quickstep/f1;-><init>(Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;Ljava/util/ArrayList;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v16, 0x1

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_6a

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_5c
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_6a
    const-string v3, "Flexible Transition startAnimation, type: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", openingApps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", closingApps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FlexibleActivityTransitionHandler"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v11, v3

    :goto_9b
    if-ltz v11, :cond_10d

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    move-object/from16 v10, p4

    invoke-direct {v0, v3, v2, v10}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->setupStartState(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    invoke-direct {v0, v1, v3, v15, v12}, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->loadAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    neg-int v6, v6

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    neg-int v7, v7

    invoke-virtual {v9, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    iget-object v7, v0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v8, v0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v17

    const/high16 v6, 0x41c00000  # 24.0f

    iget-object v1, v0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->dip2px(FLandroid/content/Context;)F

    move-result v1

    invoke-static {v3}, Lcom/oplus/transition/FlexibleSubDisplayTransition;->getSubScenarioBundleFromChange(Landroid/window/TransitionInfo$Change;)Landroid/os/Bundle;

    move-result-object v18

    move-object v3, v13

    move-object v6, v14

    move-object/from16 v19, v9

    move-object/from16 v9, v17

    move v10, v1

    move v1, v11

    move-object/from16 v11, v19

    move-object/from16 v17, v12

    move-object/from16 v12, v18

    invoke-static/range {v3 .. v12}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->buildSurfaceAnimation(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Landroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;)V

    add-int/lit8 v11, v1, -0x1

    move-object/from16 v1, p2

    move-object/from16 v12, v17

    goto :goto_9b

    :cond_10d
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v0, Lcom/oplus/flexibleactivity/FlexibleActivityTransitionHandler;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/quickstep/util/n;

    invoke-direct {v1, v13}, Lcom/android/quickstep/util/n;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Lcom/android/quickstep/f1;->run()V

    return v16
.end method
