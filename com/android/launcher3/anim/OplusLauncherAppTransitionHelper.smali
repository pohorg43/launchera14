.class public final Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;
.super Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;

.field private static final END_TIME_OUT:J = 0x64L

.field public static final FACTOR:F = 0.5f

.field public static final FACTOR_CUSTOM:F = 1.0f

.field public static final FACTOR_DOCK:F = 0.45f

.field private static final TAG:Ljava/lang/String; = "OplusLauncherAppTransitionHelper"


# instance fields
.field private final closeEndTimeOurRunnable:Ljava/lang/Runnable;

.field private final isIconSurfaceForOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

.field private final mainThreadHandler:Landroid/os/Handler;

.field private final openEndTimeOutRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/DeviceProfile;)V
    .registers 4

    const-string/jumbo v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mDeviceProfile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;-><init>(Lcom/android/launcher3/BaseQuickstepLauncher;Lcom/android/launcher3/DeviceProfile;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    iput-object p2, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mainThreadHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->isIconSurfaceForOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Landroidx/recyclerview/widget/a;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->openEndTimeOutRunnable:Ljava/lang/Runnable;

    new-instance p1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->closeEndTimeOurRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->getClosingWindowSpringAnim$lambda$2(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCloseEndTimeOurRunnable$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->closeEndTimeOurRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getMDeviceProfile$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Lcom/android/launcher3/DeviceProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    return-object p0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    return-object p0
.end method

.method public static final synthetic access$getMainThreadHandler$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getOpenEndTimeOutRunnable$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->openEndTimeOutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$isIconSurfaceForOpen$p(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->isIconSurfaceForOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/anim/AppTransitionAnimator;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->getClosingWindowSpringAnim$lambda$3(Lcom/android/launcher3/anim/AppTransitionAnimator;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->openEndTimeOutRunnable$lambda$0(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)V

    return-void
.end method

.method private static final closeEndTimeOurRunnable$lambda$1(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeEndTimeOurRunnable running, con1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->isIconSurfaceForOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", con2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getLastClickedView()Landroid/view/View;

    move-result-object v2

    goto :goto_31

    :cond_30
    move-object v2, v3

    :goto_31
    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isAnimRunning(Landroid/view/View;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherAppTransitionHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->isIconSurfaceForOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getLastClickedView()Landroid/view/View;

    move-result-object v1

    goto :goto_5a

    :cond_59
    move-object v1, v3

    :goto_5a
    invoke-interface {v0, v1, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isViewAnimRunning(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseIconSurface()V

    :cond_69
    invoke-virtual {p0, v3}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->setIconSurfaceHolder(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V

    :cond_6c
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->closeEndTimeOurRunnable$lambda$1(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)V

    return-void
.end method

.method public static final finishAnimImmediately(Landroid/animation/Animator;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;->finishAnimImmediately(Landroid/animation/Animator;Z)V

    return-void
.end method

.method private static final getClosingWindowSpringAnim$lambda$2(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Boolean;
    .registers 2

    const-string v0, "$getIconImmediately"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final getClosingWindowSpringAnim$lambda$3(Lcom/android/launcher3/anim/AppTransitionAnimator;Z)V
    .registers 3

    const-string v0, "$anim"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->getAnimator()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;->finishAnimImmediately(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public static final hasParent(Landroid/view/View;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;->hasParent(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final openEndTimeOutRunnable$lambda$0(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "openEndTimeOutRunnable running, con1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->isIconSurfaceForOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", con2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getLastClickedView()Landroid/view/View;

    move-result-object v2

    goto :goto_30

    :cond_2f
    move-object v2, v3

    :goto_30
    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isAnimRunning(Landroid/view/View;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusLauncherAppTransitionHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->isIconSurfaceForOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->getLastClickedView()Landroid/view/View;

    move-result-object v1

    goto :goto_59

    :cond_58
    move-object v1, v3

    :goto_59
    invoke-interface {v0, v1, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isViewAnimRunning(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseIconSurface()V

    :cond_68
    invoke-virtual {p0, v3}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->setIconSurfaceHolder(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V

    :cond_6b
    return-void
.end method

.method private final releaseIconSurfaceAndGetFIV(ZLandroid/view/View;ZLandroid/graphics/RectF;ZZZ)Lcom/android/launcher3/views/FloatingIconView;
    .registers 10

    const-string/jumbo v0, "releaseIconSurface, isMultiInterruptOpen: "

    const-string v1, "OplusLauncherAppTransitionHelper"

    invoke-static {v0, p7, v1}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p7, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object p7

    if-eqz p7, :cond_13

    invoke-virtual {p7, p1, p2, p6}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    :cond_13
    const-string/jumbo p7, "releaseIconSurface, currentFloatingIconSurface set to null"

    invoke-static {v1, p7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p7, 0x0

    invoke-virtual {p0, p7}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->setIconSurfaceHolder(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V

    invoke-virtual/range {p0 .. p6}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getFloatingIconView(ZLandroid/view/View;ZLandroid/graphics/RectF;ZZ)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic releaseIconSurfaceAndGetFIV$default(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;ZLandroid/view/View;ZLandroid/graphics/RectF;ZZZILjava/lang/Object;)Lcom/android/launcher3/views/FloatingIconView;
    .registers 20

    and-int/lit8 v0, p8, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v8, v1

    goto :goto_9

    :cond_7
    move/from16 v8, p6

    :goto_9
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_f

    move v9, v1

    goto :goto_11

    :cond_f
    move/from16 v9, p7

    :goto_11
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->releaseIconSurfaceAndGetFIV(ZLandroid/view/View;ZLandroid/graphics/RectF;ZZZ)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getClosingWindowSpringAnim([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;Lcom/android/systemui/shared/system/AppTransitionParam;)Lcom/android/launcher3/anim/AppTransitionAnimator;
    .registers 56

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    const-string v0, "appTargets"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wallpaperTargets"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "nonAppTargets"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowRectF"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    move-object/from16 v9, p5

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->openEndTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->closeEndTimeOurRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const-string/jumbo v8, "mLauncher.deviceProfile"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->getLauncherIconView()Landroid/view/View;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isViewSupportAsync(Landroid/view/View;)Z

    move-result v6

    sget-object v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->getLauncherIconView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v2, v3}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->getWindowAnimStartProgress([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;Z)F

    move-result v5

    new-instance v4, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iput v5, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const-string v2, "OplusLauncherAppTransitionHelper"

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_97

    cmpg-float v16, v5, v1

    if-nez v16, :cond_76

    move v3, v9

    :cond_76
    if-nez v3, :cond_97

    if-eqz v13, :cond_82

    invoke-virtual/range {p6 .. p6}, Lcom/android/systemui/shared/system/AppTransitionParam;->isFromFolder()Z

    move-result v3

    if-ne v3, v9, :cond_82

    move v3, v9

    goto :goto_83

    :cond_82
    const/4 v3, 0x0

    :goto_83
    if-eqz v3, :cond_97

    const-string v3, "getClosingWindowSpringAnim, get current opening anim rect while closing folder app."

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->getCurrentOpeningAnimRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_9c

    :cond_97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    :goto_9c
    move-object v3, v0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v0

    if-nez v0, :cond_b7

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b7

    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iput v1, v3, Landroid/graphics/RectF;->right:F

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    :cond_b7
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->getViewId(Landroid/view/View;)I

    move-result v34

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x40

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v26, v1

    move/from16 v1, v16

    move-object/from16 v35, v2

    move-object v2, v7

    move-object/from16 v27, v3

    move/from16 v3, v17

    move-object/from16 v36, v4

    move-object/from16 v4, v26

    move/from16 v28, v5

    move/from16 v5, v18

    move/from16 v37, v6

    move-object/from16 v38, v7

    move/from16 v7, v19

    move-object/from16 v39, v8

    move/from16 v8, v20

    move v10, v9

    move-object/from16 v9, v21

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->releaseIconSurfaceAndGetFIV$default(Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;ZLandroid/view/View;ZLandroid/graphics/RectF;ZZZILjava/lang/Object;)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v9

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10c

    move v0, v10

    goto :goto_10d

    :cond_10c
    const/4 v0, 0x0

    :goto_10d
    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->isIconSurfaceForOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iget-object v3, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    move-object/from16 v5, v39

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusDeviceProfile;)V

    invoke-virtual {v15, v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->setIconSurfaceHolder(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v1

    move-object/from16 v8, v38

    if-eqz v1, :cond_131

    invoke-virtual {v1, v8}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setViewSupportAsync(Landroid/view/View;)V

    :cond_131
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_13a

    invoke-virtual {v1, v8, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->startWindowAnim(Landroid/view/View;Z)V

    :cond_13a
    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/launcher3/QuickstepTransitionManager;->setIsAppCloseAsyncAniRunning(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v16

    if-eqz v16, :cond_15a

    xor-int/lit8 v19, v0, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x10

    const/16 v23, 0x0

    move-object/from16 v17, v9

    move-object/from16 v18, v8

    move/from16 v20, v34

    invoke-static/range {v16 .. v23}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setUpFloatingIconSurface$default(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;ZIZILjava/lang/Object;)V

    :cond_15a
    if-eqz v8, :cond_161

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_162

    :cond_161
    const/4 v0, 0x0

    :goto_162
    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    if-eqz v0, :cond_17b

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v0, v3, :cond_17b

    move/from16 v30, v10

    goto :goto_17d

    :cond_17b
    move/from16 v30, v2

    :goto_17d
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->getLauncherIconView()Landroid/view/View;

    move-result-object v0

    instance-of v7, v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->getLauncherIconView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18e

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_18f

    :cond_18e
    const/4 v0, 0x0

    :goto_18f
    instance-of v0, v0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez v0, :cond_199

    if-eqz v7, :cond_196

    goto :goto_199

    :cond_196
    move/from16 v29, v2

    goto :goto_19b

    :cond_199
    :goto_199
    move/from16 v29, v10

    :goto_19b
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->getLauncherIconView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-nez v0, :cond_1af

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$CloseWindowAnimParam;->getLauncherIconView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v0, :cond_1ac

    goto :goto_1af

    :cond_1ac
    move/from16 v31, v2

    goto :goto_1b1

    :cond_1af
    :goto_1af
    move/from16 v31, v10

    :goto_1b1
    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.OplusDeviceProfile"

    if-nez v31, :cond_1cc

    if-nez v29, :cond_1cc

    iget-object v2, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    instance-of v3, v2, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v3, :cond_1cc

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/OplusDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    int-to-float v2, v2

    move-object/from16 v10, v26

    invoke-virtual {v10, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_1ce

    :cond_1cc
    move-object/from16 v10, v26

    :goto_1ce
    move/from16 v6, v37

    if-eqz v6, :cond_1e8

    instance-of v2, v8, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v2, :cond_1da

    move-object v2, v8

    check-cast v2, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    goto :goto_1db

    :cond_1da
    const/4 v2, 0x0

    :goto_1db
    if-eqz v2, :cond_1e3

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getBigFolderItemStyleBoundOffset()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1e5

    :cond_1e3
    move/from16 v2, v24

    :goto_1e5
    invoke-virtual {v10, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    :cond_1e8
    iget-object v2, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    instance-of v4, v2, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v4, :cond_20e

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/OplusDeviceProfile;

    iget v3, v2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClosingWindowSpringAnim--VisualSize, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v35

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_210

    :cond_20e
    move-object/from16 v2, v35

    :goto_210
    if-eqz v29, :cond_217

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v0

    goto :goto_218

    :cond_217
    int-to-float v0, v3

    :goto_218
    move v5, v0

    if-eqz v29, :cond_223

    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    int-to-float v3, v3

    invoke-static {v0, v3}, Lcom/android/common/util/IconUtils;->getBigFolderOrCardRadius(Landroid/content/Context;F)F

    move-result v0

    goto :goto_229

    :cond_223
    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0, v5, v8}, Lcom/android/common/util/IconUtils;->getIconRadius(Landroid/content/Context;FLandroid/view/View;)F

    move-result v0

    :goto_229
    move v4, v0

    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_236

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_23c

    :cond_236
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v0

    if-eqz v0, :cond_23f

    :cond_23c
    move/from16 v3, v24

    goto :goto_245

    :cond_23f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getMWindowCornerRadius()I

    move-result v0

    int-to-float v0, v0

    move v3, v0

    :goto_245
    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    move/from16 v26, v7

    new-instance v7, Lcom/android/quickstep/util/TaskViewSimulator;

    iget-object v11, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-direct {v7, v11, v0}, Lcom/android/quickstep/util/TaskViewSimulator;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v11, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v11}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget v11, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {v7, v11, v11}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setLayoutRotation(II)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v16

    if-eqz v16, :cond_296

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->height()F

    move-result v16

    cmpl-float v7, v7, v16

    if-lez v7, :cond_293

    sget-object v7, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_29e

    :cond_293
    sget-object v7, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_29e

    :cond_296
    invoke-virtual {v7}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v7

    :goto_29e
    move-object/from16 p5, v0

    const/4 v0, 0x2

    if-nez v29, :cond_2b0

    sget-boolean v16, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    if-eqz v16, :cond_2ae

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getTheme()I

    move-result v14

    if-ne v14, v0, :cond_2ae

    goto :goto_2b0

    :cond_2ae
    const/4 v0, 0x0

    goto :goto_2b1

    :cond_2b0
    :goto_2b0
    const/4 v0, 0x1

    :goto_2b1
    invoke-interface {v7, v12, v5, v4}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F

    move-result v7

    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move/from16 v32, v4

    invoke-static {v12, v10}, Lcom/android/common/config/AnimationConstant;->getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;

    move-result-object v4

    iput-object v4, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v29, :cond_2f4

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v4

    if-nez v4, :cond_2f4

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v16

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v17

    div-float v16, v16, v17

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->width()F

    move-result v17

    mul-float v17, v17, v16

    sub-float v4, v4, v17

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move/from16 v33, v5

    new-instance v5, Landroid/util/Pair;

    sget-object v12, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v5, v12, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_2f6

    :cond_2f4
    move/from16 v33, v5

    :goto_2f6
    iget-object v4, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v5, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-eq v4, v5, :cond_303

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    :cond_303
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v12, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v4, Lcom/android/launcher/layout/f;

    invoke-direct {v4, v5}, Lcom/android/launcher/layout/f;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    move-object/from16 v35, v4

    sget-object v4, Lcom/oplus/quickstep/gesture/TransitionManager;->Companion:Lcom/oplus/quickstep/gesture/TransitionManager$Companion;

    invoke-virtual {v4, v8}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;->isHotseatIcon(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_34e

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v16

    if-eqz v16, :cond_328

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->getIconAlignmentRunner()Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    move-result-object v16

    goto :goto_32a

    :cond_328
    const/16 v16, 0x0

    :goto_32a
    if-eqz v16, :cond_34e

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarLauncherStateController()Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;

    move-result-object v16

    if-eqz v16, :cond_34e

    move-object/from16 v37, v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/taskbar/OplusTaskbarLauncherStateController;->getIconAlignmentRunner()Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;

    move-result-object v5

    if-eqz v5, :cond_350

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v38, v12

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v5, v1}, Lcom/android/launcher3/taskbar/TaskbarIconAlignmentRunner;->setHotseatIndex(I)V

    goto :goto_352

    :cond_34e
    move-object/from16 v37, v5

    :cond_350
    move-object/from16 v38, v12

    :goto_352
    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v39

    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/OplusWorkspace;->updateWorkSpaceScrollX()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getMAppTransitionManagerImpl()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/QuickstepTransitionManager;->getContentAnimFactory()Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    move-result-object v1

    cmpg-float v5, v28, v24

    if-nez v5, :cond_373

    const/4 v5, 0x1

    goto :goto_374

    :cond_373
    const/4 v5, 0x0

    :goto_374
    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setInterruptScene(Z)V

    new-instance v12, Lcom/android/launcher3/anim/AppTransitionAnimator;

    const/16 v21, 0x0

    move-object/from16 v5, v36

    iget v1, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v5, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    move-object/from16 v16, v12

    move-object/from16 v17, v27

    move-object/from16 v18, v10

    move-object/from16 v19, v27

    move-object/from16 v20, v10

    move/from16 v22, v1

    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v4

    invoke-direct/range {v16 .. v25}, Lcom/android/launcher3/anim/AppTransitionAnimator;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;ZFLcom/android/launcher3/Launcher;ZZ)V

    if-eqz v9, :cond_3a2

    new-instance v1, Lcom/android/common/util/q;

    invoke-direct {v1, v12, v6}, Lcom/android/common/util/q;-><init>(Lcom/android/launcher3/anim/AppTransitionAnimator;Z)V

    invoke-virtual {v9, v1}, Lcom/android/launcher3/views/FloatingIconView;->setFastFinishRunnable(Ljava/lang/Runnable;)V

    :cond_3a2
    if-eqz v13, :cond_3aa

    invoke-virtual {v13, v4}, Lcom/android/systemui/shared/system/AppTransitionParam;->setHotSeatIcon(Z)V

    invoke-virtual {v12, v13}, Lcom/android/launcher3/anim/AppTransitionAnimator;->setAppTransitionParam(Lcom/android/systemui/shared/system/AppTransitionParam;)V

    :cond_3aa
    new-instance v21, Landroid/graphics/RectF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/RectF;-><init>()V

    instance-of v1, v9, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz v1, :cond_3c2

    move-object v1, v9

    check-cast v1, Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/views/OplusFloatingIconView;->createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    const-string v5, "floatingIconView.createAnimatorListener()"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Lcom/android/launcher3/anim/AppTransitionAnimator;->addAppTransitionListener(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_3c2
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_40a

    const-string v1, "getCloseWindowSpringAnim, targets = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/anim/light/Utils;->getRemoteTargetsString([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", startCornerRadius = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", endCornerRadius = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", rotation = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isViewSupportAsync = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", transitionInAnimThread = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;

    invoke-virtual {v5}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;->supportAsyncTransition()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40a
    const/4 v1, 0x2

    invoke-static {v1, v6}, Lcom/android/common/util/TransitionJankTracker;->createTransitionJankTracker(IZ)Lcom/android/common/util/TransitionJankTracker;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/common/util/TransitionJankTracker;->getAnimatorListener()Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

    move-result-object v1

    const-string/jumbo v2, "tracker.animatorListener"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Lcom/android/launcher3/anim/AppTransitionAnimator;->addAppTransitionListener(Landroid/animation/AnimatorListenerAdapter;)V

    new-instance v5, Lcom/android/quickstep/RemoteAnimationTargets;

    const/4 v1, 0x1

    move-object/from16 v2, p1

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v5, v2, v3, v4, v1}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v3, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v3}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-boolean v2, v1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v2, :cond_47a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p2, v3

    const-string v3, "Current error state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", correct it to NORMAL"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherRemoteAnim"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    goto :goto_48f

    :cond_47a
    move-object/from16 p2, v3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v2

    if-nez v2, :cond_48f

    iget-object v2, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setState(Lcom/android/launcher3/LauncherState;)V

    :cond_48f
    :goto_48f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v40

    xor-int/lit8 v41, v0, 0x1

    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncherOrNull(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_4a2

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconSurfaceContainerView()Landroid/view/SurfaceView;

    move-result-object v0

    goto :goto_4a3

    :cond_4a2
    const/4 v0, 0x0

    :goto_4a3
    move-object/from16 v42, v0

    new-instance v3, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;

    move-object/from16 v18, p5

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v43, p2

    move-object/from16 v44, v3

    move/from16 v24, v16

    move-object/from16 v3, v43

    move-object/from16 v46, v4

    move/from16 v45, v17

    move/from16 v4, v24

    move/from16 v23, v33

    move-object/from16 v16, v36

    move-object/from16 v19, v37

    move-object/from16 v36, v5

    move v5, v7

    move v7, v6

    move-object v6, v14

    move v14, v7

    move/from16 v17, v26

    move v7, v11

    move-object/from16 v37, v8

    move-object/from16 v8, v18

    move-object/from16 v47, v9

    move/from16 v9, v17

    move-object/from16 v20, v10

    move-object/from16 v10, v16

    move/from16 v11, v28

    move-object/from16 v48, v12

    move-object/from16 v17, v38

    move-object v12, v13

    move-object/from16 v13, v46

    move/from16 p2, v14

    move-object/from16 v14, p0

    move-object/from16 v15, v37

    move/from16 v16, p2

    move-object/from16 v18, v19

    move-object/from16 v19, v47

    move-object/from16 v22, v27

    move/from16 v24, v31

    move/from16 v25, v29

    move/from16 v26, v32

    move-object/from16 v27, v35

    move/from16 v28, v45

    move/from16 v29, v39

    move-object/from16 v31, v40

    move/from16 v32, v41

    move-object/from16 v33, v42

    invoke-direct/range {v0 .. v33}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$2;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;FFLkotlin/jvm/internal/Ref$ObjectRef;ILandroid/graphics/Matrix;ZLkotlin/jvm/internal/Ref$FloatRef;FLcom/android/common/util/TransitionJankTracker;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;Landroid/view/View;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;FZZFLjava/util/function/Supplier;ZIZLcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;ZLandroid/view/SurfaceView;)V

    move-object/from16 v0, v44

    move-object/from16 v7, v48

    invoke-virtual {v7, v0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->setUpdateListener(Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;)V

    const/4 v6, 0x0

    new-instance v8, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;

    move-object v0, v8

    move/from16 v1, v34

    move-object/from16 v2, v46

    move-object/from16 v3, p0

    move-object/from16 v4, v47

    move-object/from16 v5, v37

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$3;-><init>(ILjava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v43

    move-object/from16 v3, v36

    move/from16 v4, p2

    move-object v5, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getCloseSpringAnimListener([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteAnimationTargets;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->addAppTransitionListener(Landroid/animation/AnimatorListenerAdapter;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$4;

    move/from16 v3, p2

    invoke-direct {v2, v7, v3, v0}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getClosingWindowSpringAnim$4;-><init>(Lcom/android/launcher3/anim/AppTransitionAnimator;ZLcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setRemoteInterruptOpts(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;)V

    return-object v7
.end method

.method public final getOpeningWindowSpringAnim(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZILcom/android/systemui/shared/system/AppTransitionParam;)Lcom/android/launcher3/anim/AppTransitionAnimator;
    .registers 50

    move-object/from16 v15, p0

    move-object/from16 v8, p1

    move-object/from16 v14, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p8

    const-string v0, "appTargets"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wallpaperTargets"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "nonAppTargets"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowTargetBounds"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->openEndTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->closeEndTimeOurRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const-string/jumbo v13, "mLauncher.deviceProfile"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    sget-object v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->setMWindowCornerRadius(I)V

    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_5f

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_5f

    :cond_5d
    const/4 v0, 0x0

    goto :goto_60

    :cond_5f
    :goto_5f
    const/4 v0, 0x1

    :goto_60
    move/from16 v16, v0

    const/16 v17, 0x0

    if-eqz v16, :cond_6b

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_73

    :cond_6b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getMWindowCornerRadius()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_73
    move-object v7, v0

    if-eqz v8, :cond_84

    instance-of v0, v8, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez v0, :cond_84

    sget-object v0, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$Companion;->hasParent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_84

    const/4 v0, 0x1

    goto :goto_85

    :cond_84
    const/4 v0, 0x0

    :goto_85
    move v6, v0

    const-string v0, "findClickedView = "

    const-string v1, ", nullV = "

    invoke-static {v0, v6, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v8, :cond_92

    const/4 v1, 0x1

    goto :goto_93

    :cond_92
    const/4 v1, 0x0

    :goto_93
    const-string v5, "OplusLauncherAppTransitionHelper"

    invoke-static {v0, v1, v5}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-object v18, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual/range {v18 .. v18}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object v4

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    const/16 v19, 0x0

    if-eqz v6, :cond_ad

    move-object v2, v8

    goto :goto_af

    :cond_ad
    move-object/from16 v2, v19

    :goto_af
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->getViewId(Landroid/view/View;)I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isViewSupportAsync(Landroid/view/View;)Z

    move-result v1

    if-eqz v2, :cond_c8

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move/from16 p7, v1

    goto :goto_cc

    :cond_c8
    move/from16 p7, v1

    move-object/from16 v0, v19

    :goto_cc
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_d3

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_d5

    :cond_d3
    move-object/from16 v0, v19

    :goto_d5
    if-eqz v0, :cond_df

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_df

    const/4 v0, 0x1

    goto :goto_e0

    :cond_df
    const/4 v0, 0x0

    :goto_e0
    move v1, v0

    invoke-virtual/range {v18 .. v18}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v0

    if-eqz v0, :cond_ed

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->NONE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v4, v0, :cond_ed

    const/4 v0, 0x1

    goto :goto_ee

    :cond_ed
    const/4 v0, 0x0

    :goto_ee
    const/16 v20, 0x1

    const/16 v26, 0x0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v31, p7

    move/from16 p7, v1

    move v1, v6

    move-object/from16 v32, v2

    move-object/from16 v2, p1

    move-object/from16 v33, v3

    move/from16 v3, p6

    move-object v9, v4

    move-object/from16 v4, v33

    move-object v10, v5

    move/from16 v5, v20

    move/from16 v27, v6

    move/from16 v6, v31

    move-object/from16 p6, v9

    move-object v9, v7

    move/from16 v7, v30

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->releaseIconSurfaceAndGetFIV(ZLandroid/view/View;ZLandroid/graphics/RectF;ZZZ)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v7

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v0

    if-eqz v0, :cond_128

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_128

    const/4 v0, 0x1

    goto :goto_12a

    :cond_128
    move/from16 v0, v26

    :goto_12a
    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->isIconSurfaceForOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    iget-object v3, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusDeviceProfile;)V

    invoke-virtual {v15, v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->setIconSurfaceHolder(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v1

    move-object/from16 v13, v32

    if-eqz v1, :cond_14c

    invoke-virtual {v1, v13}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setViewSupportAsync(Landroid/view/View;)V

    :cond_14c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_155

    invoke-virtual {v1, v13, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->startWindowAnim(Landroid/view/View;Z)V

    :cond_155
    iget-object v1, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->setIsAppCloseAsyncAniRunning(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceHolder()Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;

    move-result-object v20

    if-eqz v20, :cond_174

    xor-int/lit8 v23, v0, 0x1

    move/from16 v6, v30

    xor-int/lit8 v25, v6, 0x1

    move-object/from16 v21, v7

    move-object/from16 v22, v13

    move/from16 v24, v29

    invoke-virtual/range {v20 .. v25}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setUpFloatingIconSurface(Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;ZIZ)V

    goto :goto_176

    :cond_174
    move/from16 v6, v30

    :goto_176
    if-nez v27, :cond_182

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getCenterTargetBounds()Landroid/graphics/RectF;

    move-result-object v0

    move-object/from16 v1, v33

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_184

    :cond_182
    move-object/from16 v1, v33

    :goto_184
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v3

    if-nez v3, :cond_1a8

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1a8

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iput v4, v0, Landroid/graphics/RectF;->right:F

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    :cond_1a8
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v4

    if-nez v4, :cond_1c7

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v11

    cmpg-float v4, v4, v11

    if-gez v4, :cond_1c7

    iget v4, v5, Landroid/graphics/RectF;->right:F

    iget v11, v5, Landroid/graphics/RectF;->bottom:F

    iput v11, v5, Landroid/graphics/RectF;->right:F

    iput v4, v5, Landroid/graphics/RectF;->bottom:F

    :cond_1c7
    new-instance v30, Landroid/graphics/RectF;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/RectF;-><init>()V

    if-eqz v8, :cond_1d3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1d5

    :cond_1d3
    move-object/from16 v4, v19

    :goto_1d5
    instance-of v4, v4, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez v4, :cond_1dd

    instance-of v4, v8, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_1df

    :cond_1dd
    move/from16 v26, v2

    :cond_1df
    iget-object v2, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    instance-of v11, v2, Lcom/android/launcher3/OplusDeviceProfile;

    move/from16 v20, v4

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.OplusDeviceProfile"

    if-eqz v11, :cond_20a

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/OplusDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v13

    const-string v13, "getOpeningWindowSpringAnim--VisualSize, "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20e

    :cond_20a
    move-object/from16 v32, v13

    move/from16 v2, v20

    :goto_20e
    if-eqz v26, :cond_215

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v11

    goto :goto_216

    :cond_215
    int-to-float v11, v2

    :goto_216
    move v13, v11

    instance-of v11, v8, Lcom/android/launcher3/folder/FolderIcon;

    if-nez v11, :cond_222

    instance-of v11, v8, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v11, :cond_220

    goto :goto_222

    :cond_220
    const/4 v11, 0x0

    goto :goto_223

    :cond_222
    :goto_222
    const/4 v11, 0x1

    :goto_223
    if-nez v11, :cond_237

    iget-object v11, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    move/from16 v33, v6

    instance-of v6, v11, Lcom/android/launcher3/OplusDeviceProfile;

    if-eqz v6, :cond_239

    if-nez v26, :cond_239

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/android/launcher3/OplusDeviceProfile;

    iget v4, v11, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    goto :goto_23a

    :cond_237
    move/from16 v33, v6

    :cond_239
    const/4 v4, 0x0

    :goto_23a
    move v11, v4

    int-to-float v4, v11

    invoke-virtual {v1, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    move/from16 v6, v31

    if-eqz v6, :cond_258

    instance-of v4, v8, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v4, :cond_24b

    move-object/from16 v19, v8

    check-cast v19, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    :cond_24b
    if-eqz v19, :cond_253

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getBigFolderItemStyleBoundOffset()I

    move-result v4

    int-to-float v4, v4

    goto :goto_255

    :cond_253
    move/from16 v4, v17

    :goto_255
    invoke-virtual {v1, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_258
    if-eqz v26, :cond_262

    iget-object v4, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    int-to-float v2, v2

    invoke-static {v4, v2}, Lcom/android/common/util/IconUtils;->getBigFolderOrCardRadius(Landroid/content/Context;F)F

    move-result v2

    goto :goto_268

    :cond_262
    iget-object v2, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v2, v13, v8}, Lcom/android/common/util/IconUtils;->getIconRadius(Landroid/content/Context;FLandroid/view/View;)F

    move-result v2

    :goto_268
    move/from16 v31, v2

    if-eqz v16, :cond_26f

    move/from16 v4, v17

    goto :goto_277

    :cond_26f
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, v31

    div-float/2addr v2, v13

    move v4, v2

    :goto_277
    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    move/from16 v16, v11

    iget-object v11, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2, v11}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v2

    iget v11, v2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget-object v2, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    move/from16 p5, v13

    new-instance v13, Lcom/android/quickstep/util/TaskViewSimulator;

    move-object/from16 v34, v10

    iget-object v10, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    invoke-direct {v13, v10, v2}, Lcom/android/quickstep/util/TaskViewSimulator;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    iget-object v2, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    invoke-virtual {v13, v11, v11}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->setLayoutRotation(II)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v13, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    invoke-virtual {v13}, Lcom/android/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {v3, v1}, Lcom/android/common/config/AnimationConstant;->getAnimOrientationHandler(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/util/Pair;

    move-result-object v10

    iput-object v10, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v26, :cond_2e2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v10

    if-nez v10, :cond_2e2

    new-instance v10, Landroid/util/Pair;

    move-object/from16 v35, v2

    sget-object v2, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    move/from16 v36, v11

    iget-object v11, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v10, v2, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v10, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_2e6

    :cond_2e2
    move-object/from16 v35, v2

    move/from16 v36, v11

    :goto_2e6
    if-nez v26, :cond_2f6

    sget-boolean v2, Lcom/android/launcher/theme/LauncherIconConfig;->sIsDefaultTheme:Z

    if-eqz v2, :cond_2f4

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getTheme()I

    move-result v2

    const/4 v10, 0x2

    if-ne v2, v10, :cond_2f4

    goto :goto_2f6

    :cond_2f4
    const/4 v2, 0x0

    goto :goto_2f7

    :cond_2f6
    :goto_2f6
    const/4 v2, 0x1

    :goto_2f7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getMAppTransitionManagerImpl()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v10

    iget-object v11, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v11, Landroid/util/Pair;

    iput-object v11, v10, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->mAnimHandler:Landroid/util/Pair;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getMAppTransitionManagerImpl()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v10

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setIsHotSeatIcon(Ljava/lang/Boolean;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getMAppTransitionManagerImpl()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setIsIconClamp(Ljava/lang/Boolean;)V

    sget-object v10, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {v10}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    move-object/from16 v37, v13

    const/4 v13, 0x1

    move-object/from16 v38, v3

    new-array v3, v13, [Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    sget-object v19, Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;->CLOSE_ANIM:Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;

    const/16 v20, 0x0

    aput-object v19, v3, v20

    invoke-virtual {v11, v3}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->isInterruptAnimation([Lcom/android/launcher3/anim/RemoteAnimInterrupter$AnimationType;)Z

    move-result v3

    invoke-virtual {v10}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {v11, v14, v8, v13}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->getWindowAnimStartProgress([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/View;Z)F

    move-result v25

    cmpg-float v8, v25, v17

    if-nez v8, :cond_34c

    const/4 v8, 0x1

    goto :goto_34d

    :cond_34c
    const/4 v8, 0x0

    :goto_34d
    if-eqz v8, :cond_354

    if-eqz v3, :cond_352

    goto :goto_354

    :cond_352
    const/4 v3, 0x0

    goto :goto_355

    :cond_354
    :goto_354
    const/4 v3, 0x1

    :goto_355
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getMAppTransitionManagerImpl()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/QuickstepTransitionManager;->getContentAnimFactory()Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->setInterruptScene(Z)V

    new-instance v13, Lcom/android/launcher3/anim/AppTransitionAnimator;

    const/16 v24, 0x1

    iget-object v3, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    move-object/from16 v19, v13

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    move-object/from16 v22, v1

    move-object/from16 v23, v0

    move-object/from16 v26, v3

    move/from16 v27, v6

    move/from16 v28, p7

    invoke-direct/range {v19 .. v28}, Lcom/android/launcher3/anim/AppTransitionAnimator;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;ZFLcom/android/launcher3/Launcher;ZZ)V

    if-eqz v12, :cond_383

    move/from16 v0, p7

    invoke-virtual {v12, v0}, Lcom/android/systemui/shared/system/AppTransitionParam;->setHotSeatIcon(Z)V

    invoke-virtual {v13, v12}, Lcom/android/launcher3/anim/AppTransitionAnimator;->setAppTransitionParam(Lcom/android/systemui/shared/system/AppTransitionParam;)V

    :cond_383
    instance-of v0, v7, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz v0, :cond_396

    move-object v0, v7

    check-cast v0, Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/views/OplusFloatingIconView;->createAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    const-string v3, "floatingIconView.createAnimatorListener()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->addAppTransitionListener(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_396
    invoke-virtual {v13}, Lcom/android/launcher3/anim/AppTransitionAnimator;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v19

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3ee

    const-string v0, "getOpenWindowSpringAnim, targets = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/anim/light/Utils;->getRemoteTargetsString([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", startCornerRadius = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", targetCornerRadius = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isViewSupportAsync = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", transitionInAnimThread = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->Companion:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;

    invoke-virtual {v3}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$Companion;->supportAsyncTransition()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", animationState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", isMultiOpen = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v33

    move-object/from16 v8, v34

    invoke-static {v0, v11, v8}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_3f4

    :cond_3ee
    move-object/from16 v3, p6

    move/from16 v11, v33

    move-object/from16 v8, v34

    :goto_3f4
    const/4 v0, 0x1

    invoke-static {v0, v6}, Lcom/android/common/util/TransitionJankTracker;->createTransitionJankTracker(IZ)Lcom/android/common/util/TransitionJankTracker;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/common/util/TransitionJankTracker;->getAnimatorListener()Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

    move-result-object v0

    move-object/from16 p6, v3

    const-string/jumbo v3, "tracker.animatorListener"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->addAppTransitionListener(Landroid/animation/AnimatorListenerAdapter;)V

    new-instance v3, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v0, v15, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 p7, v5

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v15, Lcom/android/quickstep/RemoteAnimationTargets;

    move-object/from16 p1, v0

    move/from16 v33, v11

    move-object/from16 v0, p4

    move-object/from16 v11, p6

    move-object/from16 p6, v7

    move-object v7, v8

    move-object/from16 v8, p3

    invoke-direct {v15, v14, v8, v0, v5}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    invoke-virtual {v15, v3}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->NONE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne v11, v0, :cond_43b

    invoke-virtual/range {v18 .. v18}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;->setAppOpenRemoteTargets(Lcom/android/quickstep/RemoteAnimationTargets;)V

    :cond_43b
    if-eqz v6, :cond_463

    if-eqz v12, :cond_446

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/shared/system/AppTransitionParam;->getHasInterrupted()Z

    move-result v0

    if-nez v0, :cond_446

    const/4 v5, 0x1

    :cond_446
    if-eqz v5, :cond_463

    const-string/jumbo v0, "update params immediately, because of the anim is async"

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getMAppTransitionManagerImpl()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setNeedAnimateToCurrent(Z)V

    invoke-virtual {v10}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->updateCurrentRectF(Landroid/graphics/RectF;)V

    :cond_463
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v0

    move-object/from16 v12, v32

    invoke-interface {v0, v12}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isViewInterruptEnable(Landroid/view/View;)Z

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getIconSurfaceManager()Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    move-result-object v24

    xor-int/lit8 v25, v2, 0x1

    new-instance v11, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;

    move-object/from16 v26, p1

    move-object v0, v11

    move-object/from16 v1, p2

    move-object/from16 v7, v35

    move-object/from16 v2, v38

    move-object/from16 v27, v3

    move-object/from16 v18, p7

    move-object/from16 v5, v37

    move/from16 v28, v6

    move/from16 v32, v33

    move/from16 v6, v36

    move-object/from16 v21, p6

    move-object/from16 v8, v17

    move/from16 v9, v32

    move-object/from16 v39, v11

    move/from16 v22, v16

    move-object/from16 v11, p0

    move-object/from16 v16, v12

    move/from16 v34, p5

    move-object/from16 v40, v13

    move-object/from16 v33, v16

    move-object/from16 v13, v26

    move/from16 v14, v28

    move-object/from16 v35, v15

    move-wide/from16 v15, v19

    move-object/from16 v17, v18

    move-object/from16 v18, v30

    move/from16 v19, v34

    move/from16 v20, v22

    move/from16 v22, v31

    invoke-direct/range {v0 .. v25}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$1;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/RectF;Lcom/android/quickstep/util/SurfaceTransactionApplier;FLkotlin/jvm/internal/Ref$ObjectRef;ILandroid/graphics/Matrix;Lcom/android/common/util/TransitionJankTracker;ZZLcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicBoolean;ZJLandroid/graphics/RectF;Landroid/graphics/RectF;FILcom/android/launcher3/views/FloatingIconView;FFLcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;Z)V

    move-object/from16 v0, v39

    move-object/from16 v7, v40

    invoke-virtual {v7, v0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->setUpdateListener(Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;)V

    const/4 v5, 0x0

    new-instance v6, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;

    move-object/from16 p3, v6

    move/from16 p4, v29

    move-object/from16 p5, v26

    move-object/from16 p6, p0

    move/from16 p7, v32

    move-object/from16 p8, v33

    invoke-direct/range {p3 .. p8}, Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper$getOpeningWindowSpringAnim$2;-><init>(ILjava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/anim/OplusLauncherAppTransitionHelper;ZLandroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v2, v27

    move-object/from16 v3, v35

    move/from16 v4, v28

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getOpenSpringAnimListener([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteAnimationTargets;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher3/anim/AppTransitionAnimator;->addAppTransitionListener(Landroid/animation/AnimatorListenerAdapter;)V

    return-object v7
.end method
