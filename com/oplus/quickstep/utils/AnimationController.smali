.class public final Lcom/oplus/quickstep/utils/AnimationController;
.super Lcom/oplus/quickstep/utils/DefaultAnimationController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/AnimationController$AnimationState;,
        Lcom/oplus/quickstep/utils/AnimationController$WhenMappings;,
        Lcom/oplus/quickstep/utils/AnimationController$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimationController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationController.kt\ncom/oplus/quickstep/utils/AnimationController\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,604:1\n13309#2,2:605\n13309#2,2:607\n1#3:609\n1855#4,2:610\n*S KotlinDebug\n*F\n+ 1 AnimationController.kt\ncom/oplus/quickstep/utils/AnimationController\n*L\n208#1:605,2\n216#1:607,2\n596#1:610,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/utils/AnimationController$Companion;

.field private static final LAND_SPACE_RECENT_ANIM_TIME_OUT_DURATION:J = 0x9c4L

.field private static final MESSAGE_RELEASE_TOUCH:I = 0x65

.field private static final RECENT_ANIM_FINISH_TIME_OUT_DURATION:J = 0x5dcL

.field private static final SPLIT_SCREEN_RECENT_ANIM_TIME_OUT_DURATION:J = 0x5dcL

.field private static final SUPPORT_TWO_APP_ONLY:Z

.field private static final TAG:Ljava/lang/String; = "AnimationController"


# instance fields
.field private displayController:Lcom/android/launcher3/util/DisplayController;

.field private isLandscapeActivity:Z

.field private mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

.field private mAppLaunchAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mClickAppView:Landroid/view/View;

.field private mForbidSwipeUpWhileStartingLandApp:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsBetweenTransitionEndAndFinish:Z

.field private mIsCloseWidgetRemoteAnim:Z

.field private mIsLandScapeGesture:Z

.field private mIsMultiLaunchForceFinish:Z

.field private mIsSplitScreenGesture:Z

.field private mOnceGestureProcessing:Z

.field private mOpenWindowAnimRunning:Z

.field private mOpeningRemoteAnimWidgetId:I

.field private mRecentsAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsMainFinishCallback:Ljava/lang/Runnable;

.field private mRemoteMergeFinishCallback:Ljava/lang/Runnable;

.field private mRunningTask:Landroid/app/TaskInfo;

.field private mSpecialSceneExitTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

.field private mSwipingUpActivityPkg:Ljava/lang/String;

.field private mTransitionFinishTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

.field private startActivityRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/AnimationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationController;->Companion:Lcom/oplus/quickstep/utils/AnimationController$Companion;

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportStartingSurface()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "support_two_app_only"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/quickstep/utils/AnimationController;->SUPPORT_TWO_APP_ONLY:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;-><init>()V

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->NONE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAppLaunchAnims:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mOpeningRemoteAnimWidgetId:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/oplus/quickstep/utils/a;

    invoke-direct {v2, p0}, Lcom/oplus/quickstep/utils/a;-><init>(Lcom/oplus/quickstep/utils/AnimationController;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/utils/AnimationController;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AnimationController;->registerSpecialSceneExitTimeOutListener$lambda$6$lambda$5(Lcom/oplus/quickstep/utils/AnimationController;)V

    return-void
.end method

.method public static final synthetic access$executeRecentMainFinishCallback(Lcom/oplus/quickstep/utils/AnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationController;->executeRecentMainFinishCallback()V

    return-void
.end method

.method public static final synthetic access$getMAnimState$p(Lcom/oplus/quickstep/utils/AnimationController;)Lcom/oplus/quickstep/utils/AnimationController$AnimationState;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    return-object p0
.end method

.method public static final synthetic access$getMAppLaunchAnims$p(Lcom/oplus/quickstep/utils/AnimationController;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAppLaunchAnims:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMRecentsAnims$p(Lcom/oplus/quickstep/utils/AnimationController;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/oplus/quickstep/utils/AnimationController;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AnimationController;->registerSpecialSceneExitTimeOutListener$lambda$6(Lcom/oplus/quickstep/utils/AnimationController;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/utils/AnimationController;Landroid/os/Message;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->mHandler$lambda$0(Lcom/oplus/quickstep/utils/AnimationController;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private final checkAllAnimationFinished()V
    .registers 4

    const-string v0, "checkAllAnimationFinished, openAnim.size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAppLaunchAnims:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recentsAnim.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAppLaunchAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "all anim finish"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->setRecentsAnimEndState(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationController;->executeRemoteMergeFinishCallback()V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationController;->executeRecentMainFinishCallback()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/AnimationController;->reset()V

    :cond_4e
    return-void
.end method

.method private final checkMainThread()Z
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/oplus/quickstep/utils/AnimationController;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AnimationController;->registerTransitionFinishListener$lambda$12$lambda$11(Lcom/oplus/quickstep/utils/AnimationController;)V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/quickstep/utils/AnimationController;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AnimationController;->registerTransitionFinishListener$lambda$12(Lcom/oplus/quickstep/utils/AnimationController;)V

    return-void
.end method

.method private final executeRecentMainFinishCallback()V
    .registers 3

    const-string v0, "executeRecentMainFinishCallback, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsMainFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsMainFinishCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_19

    return-void

    :cond_19
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationController;->checkMainThread()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_28

    :cond_23
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsMainFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private final executeRemoteMergeFinishCallback()V
    .registers 5

    const-string v0, "executeRemoteMergeFinishCallback, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRemoteMergeFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRemoteMergeFinishCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_19

    return-void

    :cond_19
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationController;->checkMainThread()Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/oplus/quickstep/utils/c;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/oplus/quickstep/utils/c;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2e

    :cond_2b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRemoteMergeFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private static final executeRemoteMergeFinishCallback$lambda$3(Ljava/lang/Runnable;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public static synthetic f(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AnimationController;->executeRemoteMergeFinishCallback$lambda$3(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final handleMessage(Landroid/os/Message;)Z
    .registers 4

    const-string v0, "handleMessage, msg.what = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_f

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_20

    return v0

    :cond_20
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne p1, v1, :cond_28

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mOpenWindowAnimRunning:Z

    :cond_28
    const/4 p0, 0x1

    return p0
.end method

.method private final isSpecialAppScene(Landroid/content/Intent;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    const-string v0, "com.oppo.quicksearchbox.action.Dispatch"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "android.search.action.DOCK_SEARCH"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_19
    const/4 p0, 0x1

    :cond_1a
    return p0
.end method

.method private static final mHandler$lambda$0(Lcom/oplus/quickstep/utils/AnimationController;Landroid/os/Message;)Z
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private final registerSpecialSceneExitTimeOutListener(J)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSpecialSceneExitTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->dispose()V

    :cond_7
    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;->ON_LAND_SCAPE_SCENE_EXIT:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    new-instance v2, Lcom/oplus/quickstep/utils/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oplus/quickstep/utils/b;-><init>(Lcom/oplus/quickstep/utils/AnimationController;I)V

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;JLjava/lang/Runnable;)V

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->addGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSpecialSceneExitTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    return-void
.end method

.method private static final registerSpecialSceneExitTimeOutListener$lambda$6(Lcom/oplus/quickstep/utils/AnimationController;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsLandScapeGesture:Z

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsSplitScreenGesture:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationController;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSpecialSceneExitTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    goto :goto_27

    :cond_1d
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/util/n;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/oplus/quickstep/utils/AnimationController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_27
    return-void
.end method

.method private static final registerSpecialSceneExitTimeOutListener$lambda$6$lambda$5(Lcom/oplus/quickstep/utils/AnimationController;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSpecialSceneExitTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    return-void
.end method

.method private final registerTransitionFinishListener(J)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mTransitionFinishTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->dispose()V

    :cond_7
    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;->ON_TRANSITION_FINISH:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    new-instance v2, Lcom/oplus/quickstep/dock/e;

    invoke-direct {v2, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lcom/oplus/quickstep/utils/AnimationController;)V

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;JLjava/lang/Runnable;)V

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->addGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mTransitionFinishTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    return-void
.end method

.method private static final registerTransitionFinishListener$lambda$12(Lcom/oplus/quickstep/utils/AnimationController;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationController;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mTransitionFinishTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsBetweenTransitionEndAndFinish:Z

    goto :goto_25

    :cond_1b
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/quickstep/utils/AnimationController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_25
    return-void
.end method

.method private static final registerTransitionFinishListener$lambda$12$lambda$11(Lcom/oplus/quickstep/utils/AnimationController;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mTransitionFinishTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsBetweenTransitionEndAndFinish:Z

    return-void
.end method

.method private final updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAnimState, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oldState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->displayController:Lcom/android/launcher3/util/DisplayController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    if-eqz v0, :cond_34

    iget v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-nez v0, :cond_34

    move v0, v2

    goto :goto_35

    :cond_34
    move v0, v3

    :goto_35
    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->isLandscapeActivity:Z

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/AnimationController;->isOpeningAnim()Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->NONE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne p1, v0, :cond_46

    goto :goto_47

    :cond_46
    move v2, v3

    :goto_47
    iput-boolean v2, p0, Lcom/oplus/quickstep/utils/AnimationController;->mForbidSwipeUpWhileStartingLandApp:Z

    sget-object p0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->UNKNOWN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne p1, p0, :cond_52

    const-string p0, "Error animation state"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void
.end method

.method private final updateRunningRemoteTarget([Landroid/view/RemoteAnimationTarget;)V
    .registers 7

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    iget-object v3, v2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    iget-object p1, v2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRunningTask:Landroid/app/TaskInfo;

    return-void

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method private final updateRunningRemoteTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 7

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    iget-object v3, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    iget-object p1, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRunningTask:Landroid/app/TaskInfo;

    return-void

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method


# virtual methods
.method public addRecentsAnim(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/android/quickstep/RecentsAnimationController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)V
    .registers 8

    const-string v0, "recentAnim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentsController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targets"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRecentsAnim, recentAnim = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAnimState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/oplus/quickstep/utils/AnimationController;->updateRunningRemoteTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_41

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v0, v1, :cond_41

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne v0, v1, :cond_4c

    :cond_41
    if-eqz p4, :cond_48

    invoke-virtual {p4}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->getContentAnimParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    move-result-object p4

    goto :goto_49

    :cond_48
    move-object p4, v2

    :goto_49
    invoke-virtual {p1, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->copyContentParamFromOpenAnim(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;)V

    :cond_4c
    sget-object p4, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p4}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object p4

    const/4 v0, 0x0

    const-string v1, "add recents anim"

    invoke-virtual {p4, v0, v1}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->setRecentsAnimEndState(ZLjava/lang/String;)Z

    iget-object p4, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsMultiLaunchForceFinish:Z

    new-instance p4, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;

    invoke-direct {p4, p1, p0, p3, p2}, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/quickstep/utils/AnimationController;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-virtual {p1, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsMainFinishCallback:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    sget-object p2, Lcom/oplus/quickstep/utils/AnimationController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_88

    :pswitch_76  #0x4, 0x5
    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->UNKNOWN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V

    goto :goto_87

    :pswitch_7c  #0x2, 0x6, 0x7
    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V

    goto :goto_87

    :pswitch_82  #0x1, 0x3, 0x8, 0x9
    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V

    :goto_87
    return-void

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_82  #00000001
        :pswitch_7c  #00000002
        :pswitch_82  #00000003
        :pswitch_76  #00000004
        :pswitch_76  #00000005
        :pswitch_7c  #00000006
        :pswitch_7c  #00000007
        :pswitch_82  #00000008
        :pswitch_82  #00000009
    .end packed-switch
.end method

.method public allRecentsAnimationEnd()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public appLaunchAnimStartOrEnd(ZLcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;[Landroid/view/RemoteAnimationTarget;)V
    .registers 8

    const-string v0, "appLaunchAnimFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appTargets"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appLaunchAnimStartOrEnd, isEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appLaunchAnimFactory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x65

    if-eqz p1, :cond_70

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3a
    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAppLaunchAnims:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAppLaunchAnims:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c6

    iget-boolean p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mOnceGestureProcessing:Z

    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    sget-object p2, Lcom/oplus/quickstep/utils/AnimationController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v0, :cond_66

    const/4 p2, 0x2

    if-eq p1, p2, :cond_60

    goto :goto_c6

    :cond_60
    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V

    goto :goto_c6

    :cond_66
    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V

    goto :goto_c6

    :cond_6c
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationController;->checkAllAnimationFinished()V

    goto :goto_c6

    :cond_70
    invoke-direct {p0, p3}, Lcom/oplus/quickstep/utils/AnimationController;->updateRunningRemoteTarget([Landroid/view/RemoteAnimationTarget;)V

    sget-object p1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;->clearFinishRecentsRunnable()V

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mOpenWindowAnimRunning:Z

    iget-object p3, p0, Lcom/oplus/quickstep/utils/AnimationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_8b

    iget-object p3, p0, Lcom/oplus/quickstep/utils/AnimationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8b
    iget-object p3, p0, Lcom/oplus/quickstep/utils/AnimationController;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/launcher3/anim/AppTransitionAnimator;->Companion:Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppTransitionAnimator$Companion;->getAnimDuration()J

    move-result-wide v2

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->multiAppOpenAnimStart()V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAppLaunchAnims:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    sget-object p2, Lcom/oplus/quickstep/utils/AnimationController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_c1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_bb

    const/4 p2, 0x5

    if-eq p1, p2, :cond_bb

    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->UNKNOWN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V

    goto :goto_c6

    :cond_bb
    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V

    goto :goto_c6

    :cond_c1
    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V

    :cond_c6
    :goto_c6
    return-void
.end method

.method public canFinishRecentsAnim(Lcom/android/quickstep/util/OplusRectFSpringAnim;)Z
    .registers 5

    const-string v0, "curRecentsAnim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canFinishRecentsAnim, openAnimSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAppLaunchAnims:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recentsAnimSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAppLaunchAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    return v2

    :cond_3b
    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;->canFinishRecent()Z

    move-result v0

    if-nez v0, :cond_48

    return v2

    :cond_48
    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    return v1

    :cond_51
    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_66

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_66

    return v1

    :cond_66
    return v2
.end method

.method public cleanUpRecentsAnim()Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAppLaunchAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "cleanUpRecentsAnim, hasOpeningAnim = "

    const-string v3, "AnimationController"

    invoke-static {v2, v0, v3}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/quickstep/utils/AnimationController;->mOnceGestureProcessing:Z

    sget-object v3, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->INSTANCE:Lcom/android/launcher3/anim/RemoteAnimInterrupter$INSTANCE;

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-virtual {v3}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->resetRecentsAnimProgress()V

    if-nez v0, :cond_28

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationController;->checkAllAnimationFinished()V

    return v1

    :cond_28
    return v2
.end method

.method public delayStartActivityIfNeed(Landroid/content/Context;Landroid/content/Intent;Ljava/util/function/Supplier;Ljava/lang/Runnable;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            ")Z"
        }
    .end annotation

    const-string v0, "runnable"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_19

    invoke-static {p2}, Lcom/android/launcher3/util/PackageManagerHelper;->isLandscapeIntent(Landroid/content/Intent;)Z

    move-result v2

    goto :goto_1a

    :cond_19
    move v2, v1

    :goto_1a
    iput-boolean v2, p0, Lcom/oplus/quickstep/utils/AnimationController;->isLandscapeActivity:Z

    iget-object v2, p0, Lcom/oplus/quickstep/utils/AnimationController;->displayController:Lcom/android/launcher3/util/DisplayController;

    if-nez v2, :cond_2e

    if-eqz p1, :cond_2b

    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    goto :goto_2c

    :cond_2b
    move-object p1, v0

    :goto_2c
    iput-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->displayController:Lcom/android/launcher3/util/DisplayController;

    :cond_2e
    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSpecialSceneExitTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    const-string v2, ", isSplitScreenGesture = "

    const/4 v3, 0x1

    const-string v4, "Launcher"

    if-eqz p1, :cond_73

    const-string p1, "startActivitySafely: isLandScapeGesture = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsLandScapeGesture:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isLandscapeActivity = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oplus/quickstep/utils/AnimationController;->isLandscapeActivity:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsSplitScreenGesture:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isSplitScreenActivity = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsLandScapeGesture:Z

    if-nez p1, :cond_6b

    iget-boolean p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsSplitScreenGesture:Z

    if-eqz p1, :cond_c7

    :cond_6b
    const-string p1, "startActivitySafely: Wait for special scene exit."

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    return v3

    :cond_73
    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mTransitionFinishTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    if-eqz p1, :cond_c7

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/utils/AnimationController;->isSpecialAppScene(Landroid/content/Intent;)Z

    move-result p1

    const-string p2, "startActivitySafely: isSpecialAppScene = "

    const-string v5, ", isBetweenTransitionEndAndFinish = "

    invoke-static {p2, p1, v5}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v5, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsBetweenTransitionEndAndFinish:Z

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsSplitScreenGesture:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", call = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_9e

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_9f

    :cond_9e
    move-object v2, v0

    :goto_9f
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_bf

    iget-boolean p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsSplitScreenGesture:Z

    if-nez p1, :cond_bf

    if-eqz p3, :cond_bc

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_bd

    :cond_bc
    move p1, v1

    :goto_bd
    if-eqz p1, :cond_c7

    :cond_bf
    const-string p1, "startActivitySafely: Wait for transition finish."

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    return v3

    :cond_c7
    iput-boolean v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsBetweenTransitionEndAndFinish:Z

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSpecialSceneExitTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    if-eqz p1, :cond_d0

    invoke-virtual {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->dispose()V

    :cond_d0
    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSpecialSceneExitTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mTransitionFinishTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    if-eqz p1, :cond_d9

    invoke-virtual {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->dispose()V

    :cond_d9
    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mTransitionFinishTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    return v1
.end method

.method public enableSwipeUp()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mForbidSwipeUpWhileStartingLandApp:Z

    return-void
.end method

.method public forbidSwipeUp()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mForbidSwipeUpWhileStartingLandApp:Z

    return p0
.end method

.method public forbidTouch()Z
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mOpenWindowAnimRunning:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_WAITING:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v0, v1, :cond_15

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v0, v1, :cond_15

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public forceStopAllRecentAnim()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    invoke-virtual {v1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->end()V

    goto :goto_6

    :cond_16
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mOpeningRemoteAnimWidgetId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsCloseWidgetRemoteAnim:Z

    return-void
.end method

.method public getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;
    .registers 3

    const-string v0, "getAnimState, curState = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    return-object p0
.end method

.method public getClickedAppView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mClickAppView:Landroid/view/View;

    return-object p0
.end method

.method public getOpeningRemoteAnimWidgetId()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mOpeningRemoteAnimWidgetId:I

    return p0
.end method

.method public getRunningTaskInfo()Landroid/app/TaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRunningTask:Landroid/app/TaskInfo;

    return-object p0
.end method

.method public getSwipingUpActivityPkg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSwipingUpActivityPkg:Ljava/lang/String;

    return-object p0
.end method

.method public isAppWindowAnimRunning()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->NONE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->UNKNOWN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isCloseWidgetRemoteAnim()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsCloseWidgetRemoteAnim:Z

    return p0
.end method

.method public isClosingAnimAndAnimClosed()Z
    .registers 3

    const-string v0, "isClosingAnimAndAnimClosed Current animation state = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq p0, v0, :cond_21

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne p0, v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public isMultiLaunchForceFinish()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsMultiLaunchForceFinish:Z

    return p0
.end method

.method public isMultiOpen()Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isOnceGestureProcessing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mOnceGestureProcessing:Z

    return p0
.end method

.method public isOpeningAnim()Z
    .registers 3

    const-string v0, "Current animation state = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq p0, v0, :cond_29

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq p0, v0, :cond_29

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq p0, v0, :cond_29

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne p0, v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p0, 0x1

    :goto_2a
    return p0
.end method

.method public isStartActivityBetweenTransitionEndAndFinish()Z
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsBetweenTransitionEndAndFinish:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->startActivityRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public needFinishByTwoApp()Z
    .registers 4

    sget-boolean v0, Lcom/oplus/quickstep/utils/AnimationController;->SUPPORT_TWO_APP_ONLY:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_CLOSE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v0, v1, :cond_12

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-eq v0, v1, :cond_12

    sget-object v1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsMultiLaunchForceFinish:Z

    const-string v0, "needFinishByTwoApp:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsMultiLaunchForceFinish:Z

    const-string v2, "AnimationController"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsMultiLaunchForceFinish:Z

    return p0
.end method

.method public reset()V
    .registers 3

    const-string v0, "AnimationController"

    const-string v1, "Reset"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->NONE:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/utils/AnimationController;->updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRemoteMergeFinishCallback:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsMainFinishCallback:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsMultiLaunchForceFinish:Z

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSwipingUpActivityPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAppLaunchAnims:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsAnims:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mClickAppView:Landroid/view/View;

    return-void
.end method

.method public revertRecentsAnimation(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V
    .registers 4

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertToHomeAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnimationController"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mAnimState:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_37

    const/4 v0, 0x5

    if-eq p1, v0, :cond_31

    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->UNKNOWN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V

    goto :goto_3c

    :cond_31
    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->MULTI_REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V

    goto :goto_3c

    :cond_37
    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->REVERSE_OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/AnimationController;->updateAnimState(Lcom/oplus/quickstep/utils/AnimationController$AnimationState;)V

    :goto_3c
    return-void
.end method

.method public setAppLaunchAnimFinishCallback(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRemoteMergeFinishCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setBetweenTransitionEndAndFinish(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsBetweenTransitionEndAndFinish:Z

    return-void
.end method

.method public setClickAppView(Landroid/view/View;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClickAppView, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mClickAppView:Landroid/view/View;

    return-void
.end method

.method public setCloseWidgetRemoteAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsCloseWidgetRemoteAnim:Z

    return-void
.end method

.method public setOnceGestureProcessing(Lcom/oplus/quickstep/gesture/OplusGestureState;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSwipingUpActivityPkg:Ljava/lang/String;

    const-string v4, "AnimationController"

    if-eqz v2, :cond_a4

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_25

    invoke-virtual {v5}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_25

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_25

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_26

    :cond_25
    move-object v5, v3

    :goto_26
    iput-object v5, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSwipingUpActivityPkg:Ljava/lang/String;

    if-nez v5, :cond_44

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_41

    invoke-virtual {v5}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_41

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_41

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_42

    :cond_41
    move-object v5, v3

    :goto_42
    iput-object v5, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSwipingUpActivityPkg:Ljava/lang/String;

    :cond_44
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isLandScape()Z

    move-result v5

    goto :goto_4c

    :cond_4b
    move v5, v1

    :goto_4c
    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    if-eqz p1, :cond_6a

    sget-object v6, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object p1

    array-length p1, p1

    if-le p1, v0, :cond_6a

    goto :goto_6b

    :cond_6a
    move v0, v1

    :goto_6b
    const-string p1, "setOnceGestureProcessing: true, isLandScape = "

    const-string v6, ", isSplitScreen = "

    const-string v7, ", mSwipingUpActivityPkg = "

    invoke-static {p1, v5, v6, v0, v7}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v6, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSwipingUpActivityPkg:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSpecialSceneExitTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    if-eqz p1, :cond_88

    invoke-virtual {p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->dispose()V

    :cond_88
    iput-object v3, p0, Lcom/oplus/quickstep/utils/AnimationController;->mSpecialSceneExitTimeOutListener:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;

    iput-boolean v5, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsLandScapeGesture:Z

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsSplitScreenGesture:Z

    iput-boolean v1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsBetweenTransitionEndAndFinish:Z

    const-wide/16 v3, 0x5dc

    if-eqz v0, :cond_9e

    if-eqz v5, :cond_9a

    invoke-direct {p0, v3, v4}, Lcom/oplus/quickstep/utils/AnimationController;->registerSpecialSceneExitTimeOutListener(J)V

    goto :goto_b6

    :cond_9a
    invoke-direct {p0, v3, v4}, Lcom/oplus/quickstep/utils/AnimationController;->registerTransitionFinishListener(J)V

    goto :goto_b6

    :cond_9e
    if-nez v5, :cond_b6

    invoke-direct {p0, v3, v4}, Lcom/oplus/quickstep/utils/AnimationController;->registerTransitionFinishListener(J)V

    goto :goto_b6

    :cond_a4
    const-string p1, "setOnceGestureProcessing: false."

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsSplitScreenGesture:Z

    if-nez p1, :cond_b6

    iget-boolean p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mIsLandScapeGesture:Z

    if-eqz p1, :cond_b6

    const-wide/16 v0, 0x9c4

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/utils/AnimationController;->registerSpecialSceneExitTimeOutListener(J)V

    :cond_b6
    :goto_b6
    iput-boolean v2, p0, Lcom/oplus/quickstep/utils/AnimationController;->mOnceGestureProcessing:Z

    return-void
.end method

.method public setOpeningRemoteAnimWidgetId(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mOpeningRemoteAnimWidgetId:I

    return-void
.end method

.method public setRecentsAnimFinishCallback(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AnimationController;->mRecentsMainFinishCallback:Ljava/lang/Runnable;

    return-void
.end method
