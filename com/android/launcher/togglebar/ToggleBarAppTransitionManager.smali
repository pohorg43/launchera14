.class public final Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;

.field public static final LAUNCHER_CONTENT_CLOSING_DURATION:J = 0x12cL

.field public static final LAUNCHER_CONTENT_OPENING_DURATION:J = 0x15eL

.field private static final TAG:Ljava/lang/String; = "ToggleBarAppTransitionManager"

.field public static final TOGGLE_BAR_CLOSE_ANIMATION_DURATION:J = 0x140L

.field public static final TOGGLE_BAR_OPEN_ANIMATION_DURATION:J = 0x226L


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mRemoteAnimFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

.field private mWindowCornerRadius:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->Companion:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mWindowCornerRadius:F

    return-void
.end method

.method public static synthetic a([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->getOpeningWindowAnimators$lambda$0([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getOpeningWindowAnimators(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final createLauncherContentAnim(ZLcom/android/launcher/Launcher;)Landroid/animation/ValueAnimator;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->Companion:Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$Companion;->createLauncherContentAnim(ZLcom/android/launcher/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method private final getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
    .registers 10

    new-instance v0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager$getActivityLaunchOptions$1;-><init>(Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mRemoteAnimFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    new-instance p1, Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mRemoteAnimFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/android/launcher3/LauncherAnimationRunner;-><init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V

    new-instance v0, Landroid/view/RemoteAnimationAdapter;

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v7

    const-wide/16 v3, 0x226

    const-wide/16 v5, 0x14e

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJLandroid/app/IApplicationThread;)V

    new-instance v1, Landroid/window/RemoteTransition;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->toRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, v2, p0}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;Landroid/app/IApplicationThread;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;-><init>(Landroid/app/ActivityOptions;Lcom/android/launcher3/util/RunnableList;)V

    return-object p1
.end method

.method private final getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
    .registers 16

    iget-object p3, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/Launcher;)Landroid/graphics/Rect;

    move-result-object p3

    new-instance v2, Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget p5, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, p5

    iget v1, p3, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    int-to-float p5, p5

    invoke-direct {v2, p4, v0, v1, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3

    if-eqz p3, :cond_4a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getOpeningWindowAnimators, startRect = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", endRect = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/launcher3/anim/light/Utils;->getRemoteTargetsString([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ToggleBarAppTransitionManager"

    invoke-static {p4, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    new-instance p3, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    const/4 v1, 0x0

    const-wide/16 v5, 0x226

    move-object v0, p3

    move-object v3, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;J)V

    invoke-virtual {p3}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p4

    sget-object p5, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WIDGET_SHEET_TRANSLATION:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p4, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v9, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    new-instance p1, Lcom/android/launcher/togglebar/a;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher/togglebar/a;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {p3, p1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->addTransitionUpdateListener(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;)V

    invoke-virtual {p3}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static final getOpeningWindowAnimators$lambda$0([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .registers 16

    const-string p7, "$appTargets"

    invoke-static {p0, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p7, "this$0"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "$matrix"

    invoke-static {p2, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "$mCropRect"

    invoke-static {p3, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "$endRectF"

    invoke-static {p4, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "$surfaceApplier"

    invoke-static {p5, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p7, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {p7}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    array-length p8, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_27
    if-ge v1, p8, :cond_74

    aget-object v2, p0, v1

    iget-object v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p7, v3}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v3

    iget v4, p1, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mWindowCornerRadius:F

    iget v5, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v6, 0x0

    if-nez v5, :cond_4b

    iget v2, p6, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v6, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p3, v0, v0, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_60

    :cond_4b
    iget-object v4, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    if-eqz v4, :cond_58

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p2, v5, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :cond_58
    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_5f

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_5f
    move v4, v6

    :goto_60
    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v3, v2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_74
    invoke-virtual {p5, p7}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method

.method private final getWindowTargetBounds([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher/Launcher;)Landroid/graphics/Rect;
    .registers 6

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_37

    array-length p0, p1

    :goto_15
    if-ge v2, p0, :cond_37

    aget-object p2, p1, v2

    iget v1, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v1, :cond_34

    iget-object p0, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_2a

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_33

    :cond_2a
    iget-object p0, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget p1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_33
    return-object v0

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_37
    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->mRemoteAnimFactory:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    return-void
.end method

.method public final getActivityLaunchOptionsAsBundle(Landroid/view/View;)Landroid/os/Bundle;
    .registers 3

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarAppTransitionManager;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityOptionsWrapper;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
