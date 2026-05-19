.class public Lcom/android/quickstep/OplusBaseRecentsAnimationController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusBaseRecentsAnimationController$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusBaseRecentsAnimationController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusBaseRecentsAnimationController.kt\ncom/android/quickstep/OplusBaseRecentsAnimationController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusBaseRecentsAnimationController$Companion;

.field private static final DISABLE_INPUT_PROXY_DELAY:J = 0x190L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusBaseRecentsAnimationController"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

.field public mFinishTargetIsLauncher:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mFirst:Z

.field private mIgnoreDisableInputProxy:Z

.field private mWillFinishToHome:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusBaseRecentsAnimationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusBaseRecentsAnimationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->Companion:Lcom/android/quickstep/OplusBaseRecentsAnimationController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mFirst:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishZoomController$lambda$1(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishOnePuttController$lambda$3(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final finishOnePuttController$lambda$3(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V
    .registers 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "finishOnePuttController"

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setInputConsumerEnabled(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;ZLjava/lang/String;)V

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_1d

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishOnePuttCore(ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;)V

    goto :goto_33

    :cond_1d
    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getTaskId()I

    move-result v0

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getType()I

    move-result v1

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getOption()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {v0, v1, p3}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;->startOnePutt(IILandroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    :goto_33
    if-eqz p4, :cond_3a

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3a
    sget-object p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->Companion:Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;->reduceRecentsAnimaiton()V

    return-void
.end method

.method private final finishOnePuttCore(ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;)V
    .registers 16

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseRecentsAnimationController"

    const-string v2, "finishOnePuttCore: switch to external screen"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "finishPutt"

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v9, Landroid/graphics/Rect;

    const/4 v10, 0x2

    aput-object v9, v5, v10

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-class v6, Landroid/os/Bundle;

    const/4 v11, 0x4

    aput-object v6, v5, v11

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getTaskId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getOrientation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getOption()Landroid/os/Bundle;

    move-result-object p3

    aput-object p3, v4, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_67
    .catchall {:try_start_9 .. :try_end_67} :catchall_68

    goto :goto_6d

    :catchall_68
    move-exception p3

    invoke-static {p3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    :goto_6d
    invoke-static {p3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_74

    goto :goto_8f

    :cond_74
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "finishOnePuttCore(), e="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8f
    return-void
.end method

.method private static final finishZoomController$lambda$1(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V
    .registers 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "finishZoomController"

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setInputConsumerEnabled(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;ZLjava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishZoomCore(ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;)V

    if-eqz p4, :cond_1f

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1f
    return-void
.end method

.method private final finishZoomCore(ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;)V
    .registers 17

    const-string v1, "OplusBaseRecentsAnimationController"

    :try_start_2
    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishZoomCore - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInterceptKeyEventEnabled(Z)V

    if-eqz v0, :cond_53

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getTaskId()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getType()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getOrientation()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getOption()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v0

    iget-object v9, v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    move v10, p1

    move v11, p2

    invoke-static/range {v4 .. v11}, Lcom/oplus/zoom/common/ReflectionHelper;->OplusZoomTaskManager_recentAnimationFinished(IILandroid/graphics/Rect;ILandroid/os/Bundle;Landroid/view/IRecentsAnimationController;ZZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_ca

    :cond_53
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "finishZoom"

    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-class v10, Landroid/graphics/Rect;

    const/4 v11, 0x4

    aput-object v10, v5, v11

    const/4 v10, 0x5

    aput-object v6, v5, v10

    const-class v6, Landroid/os/Bundle;

    const/4 v12, 0x6

    aput-object v6, v5, v12

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v7

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getTaskId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v9

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v4, v11

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getOrientation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v10

    invoke-virtual/range {p3 .. p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getOption()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v4, v12

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c4
    .catchall {:try_start_2 .. :try_end_c4} :catchall_c5

    goto :goto_ca

    :catchall_c5
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_ca
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_d1

    goto :goto_f0

    :cond_d1
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v2

    move v3, p1

    move v4, p2

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishZoomCore(), e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickStep"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f0
    sget-object v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->Companion:Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;->reduceRecentsAnimaiton()V

    return-void
.end method


# virtual methods
.method public final finishOnePuttController(ZLjava/lang/Runnable;ZLcom/oplus/quickstep/rapidreaction/OnePuttData;)V
    .registers 13

    const-string v0, "data"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->notifyFinishedListener()V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/launcher/filter/a;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/filter/a;-><init>(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final finishZoomController(ZLjava/lang/Runnable;ZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;)V
    .registers 13

    const-string v0, "data"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mFinishTargetIsLauncher:Z

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->notifyFinishedListener()V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/launcher/filter/a;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/filter/a;-><init>(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMFirst()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mFirst:Z

    return p0
.end method

.method public final getMWillFinishToHome()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mWillFinishToHome:Z

    return p0
.end method

.method public notifyFinishedListener()V
    .registers 1

    return-void
.end method

.method public final onFinishControllerDone()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "onFinishControllerDone"

    invoke-static {p0, v0, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setInputConsumerEnabled(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;ZLjava/lang/String;)V

    const/4 p0, 0x3

    invoke-static {p0, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->updateRecentsOrRemoteAnimationRunningFlags(IZ)V

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setSplitTaskLaunchRunning(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setRecentsAnimationFinishTime(J)V

    return-void
.end method

.method public final setMController(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    return-void
.end method

.method public final setMFirst(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mFirst:Z

    return-void
.end method

.method public final setMWillFinishToHome(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mWillFinishToHome:Z

    return-void
.end method
