.class public Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;,
        Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;

.field public static final SPRING_DISABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "OplusBaseAppTransitionHelper"

.field private static final supportAsync$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

.field private final iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

.field private final mAppTransitionManagerImpl$delegate:Lh4/f;

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

.field private mWindowCornerRadius:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;

    sget-object v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion$supportAsync$2;->INSTANCE:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion$supportAsync$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->supportAsync$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/DeviceProfile;)V
    .registers 4

    const-string/jumbo v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mDeviceProfile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iput-object p2, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    new-instance p1, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$mAppTransitionManagerImpl$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$mAppTransitionManagerImpl$2;-><init>(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mAppTransitionManagerImpl$delegate:Lh4/f;

    sget-object p1, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    iget-object p2, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mWindowCornerRadius:I

    sget-object p1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    return-void
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    return-object p0
.end method

.method public static final synthetic access$getSupportAsync$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->supportAsync$delegate:Lh4/f;

    return-object v0
.end method

.method public static synthetic getCloseSpringAnimListener$default(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteAnimationTargets;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/animation/AnimatorListenerAdapter;
    .registers 18

    if-nez p8, :cond_1b

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v7, v1

    goto :goto_a

    :cond_9
    move-object v7, p5

    :goto_a
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_10

    move-object v8, v1

    goto :goto_11

    :cond_10
    move-object v8, p6

    :goto_11
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getCloseSpringAnimListener([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteAnimationTargets;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: getCloseSpringAnimListener"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic getFloatingIconView$default(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;ZLandroid/view/View;ZLandroid/graphics/RectF;ZZILjava/lang/Object;)Lcom/android/launcher3/views/FloatingIconView;
    .registers 16

    if-nez p8, :cond_13

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_7

    const/4 p6, 0x0

    :cond_7
    move v6, p6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getFloatingIconView(ZLandroid/view/View;ZLandroid/graphics/RectF;ZZ)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getFloatingIconView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getOpenSpringAnimListener$default(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteAnimationTargets;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/animation/AnimatorListenerAdapter;
    .registers 18

    if-nez p8, :cond_1b

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v7, v1

    goto :goto_a

    :cond_9
    move-object v7, p5

    :goto_a
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_10

    move-object v8, v1

    goto :goto_11

    :cond_10
    move-object v8, p6

    :goto_11
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getOpenSpringAnimListener([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteAnimationTargets;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: getOpenSpringAnimListener"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final isCloseFromSplitScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .registers 7

    const/4 p0, 0x0

    if-eqz p1, :cond_21

    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, p0

    :goto_a
    if-eqz v0, :cond_d

    goto :goto_21

    :cond_d
    array-length v0, p1

    move v2, p0

    move v3, v2

    :goto_10
    if-ge v2, v0, :cond_1e

    aget-object v4, p1, v2

    iget v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-eq v4, v1, :cond_19

    goto :goto_1b

    :cond_19
    add-int/lit8 v3, v3, 0x1

    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    if-le v3, v1, :cond_21

    move p0, v1

    :cond_21
    :goto_21
    return p0
.end method


# virtual methods
.method public final createCloseWindowAnimParams([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/QuickstepTransitionManager;)Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "appTargets"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "managerImpl"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClosingWindowAnimators createCloseWindowAnimParams, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/anim/light/Utils;->getRemoteTargetsString([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusBaseAppTransitionHelper"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    const/4 v5, 0x0

    if-eqz v3, :cond_49

    iget-object v3, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v3

    const-string/jumbo v6, "null cannot be cast to non-null type com.android.launcher3.OplusQuickstepTransitionManagerImpl"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    invoke-virtual {v3}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v3

    goto :goto_4a

    :cond_49
    move-object v3, v5

    :goto_4a
    const/4 v6, 0x0

    if-eqz v3, :cond_50

    invoke-virtual {v3, v6}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setIsSpringWindowAnima(Z)V

    :cond_50
    new-instance v7, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;

    invoke-direct {v7}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->findClosingAppPackage([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v10, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v9}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v9

    iget v9, v9, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget-object v10, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v8, v9, v10}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->getBackToCapsuleParamIfSupport(Ljava/lang/String;ILandroid/content/Context;)Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;

    move-result-object v10

    iget-object v11, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v8, v9, v11}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->isSupportCapsule(Ljava/lang/String;ILandroid/content/Context;)Z

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setCapsuleNeed(Z)V

    invoke-virtual {v7, v10}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setBackToCapsuleParam(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;)V

    invoke-virtual {v7}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isCapsuleNeed()Z

    move-result v9

    if-eqz v9, :cond_92

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    if-eqz v1, :cond_88

    invoke-virtual {v1, v6, v5, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_88
    iput-object v5, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iput-boolean v6, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mStartFromToggleBarBefore:Z

    const-string v0, "create close window anim params, isCapsuleNeed"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_92
    sget-object v9, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v9}, Lcom/android/common/util/AppFeatureUtils;->isSupportGameBounce()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_a9

    if-eqz v8, :cond_a9

    invoke-static {}, Lcom/android/launcher/custom/OplusGameBounceUtils;->getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isGameOpenPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a9

    move v8, v10

    goto :goto_aa

    :cond_a9
    move v8, v6

    :goto_aa
    invoke-virtual {v7, v8}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setGameOpenNeed(Z)V

    invoke-virtual {v7}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isGameOpenNeed()Z

    move-result v8

    if-eqz v8, :cond_c4

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    if-eqz v1, :cond_ba

    invoke-virtual {v1, v6, v5, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_ba
    iput-object v5, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iput-boolean v6, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mStartFromToggleBarBefore:Z

    const-string v0, "create close window anim params, isGameOpenNeed"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_c4
    iget-object v8, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v8}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->canGoBackToTaskView(Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setGoBackToTaskView(Z)V

    invoke-virtual {v7}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isGoBackToTaskView()Z

    move-result v8

    if-eqz v8, :cond_e4

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    if-eqz v1, :cond_da

    invoke-virtual {v1, v6, v5, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_da
    iput-object v5, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iput-boolean v6, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mStartFromToggleBarBefore:Z

    const-string v0, "create close window anim params, isGoBackToTaskView"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_e4
    iget-object v8, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v8

    const-string/jumbo v9, "null cannot be cast to non-null type com.android.quickstep.views.OplusRecentsViewImpl<*, *>"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v8}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v8

    iget-boolean v9, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mStartFromToggleBarBefore:Z

    iget-object v11, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v12, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v11, v12}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v11

    if-eqz v11, :cond_108

    if-nez v8, :cond_108

    if-eqz v9, :cond_108

    move v11, v10

    goto :goto_109

    :cond_108
    move v11, v6

    :goto_109
    invoke-virtual {v7, v11}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setToggleBarStateAnim(Z)V

    iget-object v11, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const-string/jumbo v12, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/android/launcher/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher/togglebar/ToggleBarManager;->getNeedLightWindowAnimatorFlag()Z

    move-result v11

    const-string/jumbo v13, "sLightAnimWhenDragCardToLauncher = "

    const-string v14, ", isLauncherSpringToRecent = "

    const-string v15, ", startFromToggleBarBefore = "

    invoke-static {v13, v11, v14, v8, v15}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v8, v9, v4}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput-boolean v6, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mStartFromToggleBarBefore:Z

    invoke-virtual {v7}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isToggleBarStateAnim()Z

    move-result v8

    if-eqz v8, :cond_145

    if-nez v11, :cond_145

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    if-eqz v1, :cond_13d

    invoke-virtual {v1, v6, v5, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_13d
    iput-object v5, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    const-string v0, "create close window anim params, isToggleBarState"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_145
    iget-object v8, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v8}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isHiddenAppsFolderOpen()Z

    move-result v8

    iget-object v9, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lcom/android/launcher/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher/togglebar/ToggleBarManager;->hasPendingState()Z

    move-result v9

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->isCloseFromSplitScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v11

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->isFinishUpdateExpandItems()Z

    move-result v13

    xor-int/2addr v10, v13

    iget-object v13, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v13}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v13

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v14

    if-eqz v14, :cond_1a5

    const-string v14, ", closeFromSplitScreen = "

    const-string v15, ", isNotFinishUpdateExpandItems = "

    const-string v5, ", isHiddenAppsFolderOpen = "

    invoke-static {v14, v11, v15, v10, v5}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ",isToggleBarPending = "

    const-string v15, ", pageTransitionWithEffect = "

    invoke-static {v5, v8, v14, v9, v15}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " .isAssistantScreenVisible = "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Lcom/android/launcher/Launcher;

    invoke-virtual {v14}, Lcom/android/launcher/Launcher;->isAssistantScreenVisible()Z

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a5
    sget-object v5, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v5}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v5

    if-nez v5, :cond_1ba

    if-nez v8, :cond_1ba

    if-nez v9, :cond_1ba

    if-nez v11, :cond_1ba

    if-nez v10, :cond_1ba

    if-eqz v13, :cond_1b8

    goto :goto_1ba

    :cond_1b8
    move v5, v6

    goto :goto_1bb

    :cond_1ba
    :goto_1ba
    const/4 v5, 0x1

    :goto_1bb
    invoke-virtual {v7, v5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setLightAnimation(Z)V

    invoke-virtual {v7}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->isLightAnimation()Z

    move-result v5

    if-eqz v5, :cond_1d4

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1cc

    invoke-virtual {v1, v6, v2, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_1cc
    iput-object v2, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    const-string v0, "do Light Animation when anima level B or flag"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_1d4
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result v5

    if-eqz v5, :cond_20a

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v5

    if-eqz v5, :cond_20a

    iget-object v5, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v5}, Lcom/android/launcher3/allapps/branch/BranchManager;->launcherSupport(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_20a

    iget-object v5, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v8, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v8}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-eqz v5, :cond_20a

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setLightAnimation(Z)V

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_202

    invoke-virtual {v1, v6, v2, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_202
    iput-object v2, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    const-string v0, "do Light Animation when in all apps !"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_20a
    instance-of v5, v2, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    if-eqz v5, :cond_252

    invoke-virtual {v2, v1}, Lcom/android/launcher3/QuickstepTransitionManager;->isAppStartFromAssistantScreen([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result v5

    if-eqz v5, :cond_225

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_21c

    invoke-virtual {v1, v6, v2, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_21c
    iput-object v2, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    const-string/jumbo v0, "start form AssistantScreen with launcherViewInfo !!"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_225
    iget-object v8, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/android/launcher/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher/Launcher;->isAssistantScreenVisible()Z

    move-result v8

    if-eqz v8, :cond_246

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setLightAnimation(Z)V

    const-string v1, "do Light Animation when launcherViewInfo not found!"

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_243

    invoke-virtual {v1, v6, v2, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_243
    iput-object v2, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    return-object v7

    :cond_246
    iget-object v8, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v8

    if-eqz v8, :cond_253

    invoke-virtual {v8, v1, v11, v6, v6}, Lcom/android/launcher3/OplusWorkspace;->jumpToAppIconPageIfNeeded([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZZZ)V

    goto :goto_253

    :cond_252
    move v5, v6

    :cond_253
    :goto_253
    invoke-virtual {v2, v1}, Lcom/android/launcher3/QuickstepTransitionManager;->findLauncherView([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v2

    if-eqz v2, :cond_298

    if-nez v5, :cond_298

    if-eqz v1, :cond_298

    iget-object v2, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    instance-of v5, v2, Lcom/android/launcher/Launcher;

    if-eqz v5, :cond_26a

    check-cast v2, Lcom/android/launcher/Launcher;

    goto :goto_26b

    :cond_26a
    const/4 v2, 0x0

    :goto_26b
    if-eqz v2, :cond_276

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_276

    const/4 v2, 0x1

    goto :goto_277

    :cond_276
    move v2, v6

    :goto_277
    if-eqz v2, :cond_298

    const-string v2, "close assist overlay and reset DragLayer scale, cause not appStartFromAssistantScreen"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->hideAssistScreenIfShown()V

    iget-object v2, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    if-eqz v2, :cond_298

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_298
    if-nez v1, :cond_2ae

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setLightAnimation(Z)V

    const-string v1, "do Light Animation when target view not found!"

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_2ab

    invoke-virtual {v1, v6, v2, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_2ab
    iput-object v2, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    return-object v7

    :cond_2ae
    invoke-virtual {v7, v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setLauncherIconView(Landroid/view/View;)V

    invoke-virtual {v7}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->getLauncherIconView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_2e7

    invoke-virtual {v7}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->getLauncherIconView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_2d3

    invoke-virtual {v7}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->getLauncherIconView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_2e7

    :cond_2d3
    const-string v1, "do Light Animation when target BTV hasn\'t layout yet !"

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setLightAnimation(Z)V

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e4

    invoke-virtual {v1, v6, v2, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_2e4
    iput-object v2, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    return-object v7

    :cond_2e7
    const/4 v2, 0x0

    sget-object v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->isEvaluationDurationValid()Z

    move-result v1

    if-eqz v1, :cond_303

    invoke-virtual {v7, v6}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setTransitionBySpringAnim(Z)V

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    if-eqz v1, :cond_2fa

    invoke-virtual {v1, v6, v2, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_2fa
    iput-object v2, v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    const-string/jumbo v0, "transition by springanim false !"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_303
    const/4 v0, 0x1

    if-eqz v3, :cond_309

    invoke-virtual {v3, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setIsSpringWindowAnima(Z)V

    :cond_309
    invoke-virtual {v7, v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->setTransitionBySpringAnim(Z)V

    const-string/jumbo v0, "transition by springanim true !"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public final getCenterTargetBounds()Landroid/graphics/RectF;
    .registers 6

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float v3, v1, v0

    sub-float v4, p0, v0

    add-float/2addr v1, v0

    add-float/2addr p0, v0

    invoke-direct {v2, v3, v4, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public final getCloseSpringAnimListener([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteAnimationTargets;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Landroid/animation/AnimatorListenerAdapter;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Lcom/android/quickstep/util/SurfaceTransactionApplier;",
            "Lcom/android/quickstep/RemoteAnimationTargets;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)",
            "Landroid/animation/AnimatorListenerAdapter;"
        }
    .end annotation

    const-string v0, "appTargets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceApplier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "remoteAnimationTargets"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;

    move-object v1, v0

    move v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object v5, p5

    move-object v6, p0

    move-object v7, p6

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;-><init>(ZLcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lkotlin/jvm/functions/Function0;Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;Lkotlin/jvm/functions/Function1;Lcom/android/quickstep/RemoteAnimationTargets;)V

    return-object v0
.end method

.method public final getFloatingIconView(ZLandroid/view/View;ZLandroid/graphics/RectF;ZZ)Lcom/android/launcher3/views/FloatingIconView;
    .registers 8

    const-string/jumbo v0, "startRect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_18

    if-eqz p6, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p0, p2, p3, p4, p5}, Lcom/android/launcher3/views/FloatingIconView;->getFakeFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object p0

    goto :goto_19

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {p0, p2, p3, p4, p5}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method public final getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    return-object p0
.end method

.method public final getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    return-object p0
.end method

.method public final getMAppTransitionManagerImpl()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mAppTransitionManagerImpl$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    return-object p0
.end method

.method public final getMWindowCornerRadius()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mWindowCornerRadius:I

    return p0
.end method

.method public final getOpenSpringAnimListener([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteAnimationTargets;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroid/animation/AnimatorListenerAdapter;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Lcom/android/quickstep/util/SurfaceTransactionApplier;",
            "Lcom/android/quickstep/RemoteAnimationTargets;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)",
            "Landroid/animation/AnimatorListenerAdapter;"
        }
    .end annotation

    const-string v0, "appTargets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceApplier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "remoteAnimationTargets"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;

    move-object v1, v0

    move-object v2, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p5

    move-object v7, p3

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;-><init>(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;ZLcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lkotlin/jvm/functions/Function0;Lcom/android/quickstep/RemoteAnimationTargets;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final openAnimWithSpring(Landroid/view/View;)Z
    .registers 4

    sget-object v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->isEvaluationDurationValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_22

    instance-of p1, p1, Lcom/android/quickstep/views/TaskView;

    if-eqz p1, :cond_11

    goto :goto_22

    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result p0

    if-nez p0, :cond_22

    sget-object p0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result p0

    if-nez p0, :cond_22

    const/4 v1, 0x1

    :cond_22
    :goto_22
    return v1
.end method

.method public final setIconSurfaceHolder(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->iconSurfaceHolder:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    return-void
.end method

.method public final setMWindowCornerRadius(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mWindowCornerRadius:I

    return-void
.end method

.method public final updateWallPaperScrim(FZ)V
    .registers 9

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000  # 0.5f

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p1

    if-eqz p2, :cond_10

    goto :goto_14

    :cond_10
    const/high16 p2, 0x3f000000  # 0.5f

    sub-float p1, p2, p1

    :goto_14
    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/views/WorkSpaceScrimView;->getMWorkspaceScrim()Lcom/android/launcher3/graphics/Scrim;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/launcher3/graphics/Scrim;->setScrimProgressAsync(Lcom/android/launcher3/graphics/Scrim;F)V

    return-void
.end method
