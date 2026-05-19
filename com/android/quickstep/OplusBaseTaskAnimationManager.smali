.class public Lcom/android/quickstep/OplusBaseTaskAnimationManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

.field private static final MSG_RESET_RECENTS_ANIM_REAL_FINISH:I = 0x3e9

.field private static final MSG_RESET_RECENTS_ANIM_REAL_FINISH_DELAY:J = 0x3e8L

.field private static final SECOND_MILLS:I = 0x3e8

.field private static final START_TIMEOUT:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "OplusBaseTaskAnimationManager"

.field private static volatile mLastStartTime:J

.field private static volatile mRecentsAnimationCount:I


# instance fields
.field private final finishImmediatelyHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

.field public mIsRecentsAnimRealFinish:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private final mOpm$delegate:Lh4/f;

.field private mStartRecentsActivity:Ljava/lang/Runnable;

.field private final resetRecentsAnimRealFinishHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->Companion:Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    sget-object v1, Lcom/android/quickstep/OplusBaseTaskAnimationManager$mOpm$2;->INSTANCE:Lcom/android/quickstep/OplusBaseTaskAnimationManager$mOpm$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mOpm$delegate:Lh4/f;

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    const-string v1, "TaskAnimationManager"

    invoke-direct {v0, v1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->finishImmediatelyHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mIsRecentsAnimRealFinish:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/r0;

    invoke-direct {v2, p0}, Lcom/android/quickstep/r0;-><init>(Lcom/android/quickstep/OplusBaseTaskAnimationManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimRealFinishHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$1;-><init>(Lcom/android/quickstep/OplusBaseTaskAnimationManager;)V

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->addGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RecentsAnimationCallbacks;Landroid/content/Intent;Landroid/app/ActivityOptions;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->startRecentsActivityWithCallback$lambda$3(Lcom/android/quickstep/RecentsAnimationCallbacks;Landroid/content/Intent;Landroid/app/ActivityOptions;J)V

    return-void
.end method

.method public static final synthetic access$getMLastStartTime$cp()J
    .registers 2

    sget-wide v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mLastStartTime:J

    return-wide v0
.end method

.method public static final synthetic access$getMRecentsAnimationCount$cp()I
    .registers 1

    sget v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mRecentsAnimationCount:I

    return v0
.end method

.method public static final synthetic access$setMLastStartTime$cp(J)V
    .registers 2

    sput-wide p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mLastStartTime:J

    return-void
.end method

.method public static final synthetic access$setMRecentsAnimationCount$cp(I)V
    .registers 1

    sput p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mRecentsAnimationCount:I

    return-void
.end method

.method public static synthetic b(Lz4/h;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->finishRunningRecentsAnimationInCallback$lambda$1(Lz4/h;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/OplusBaseTaskAnimationManager;Landroid/os/Message;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimRealFinishHandler$lambda$0(Lcom/android/quickstep/OplusBaseTaskAnimationManager;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic cancelRecentsAnimation$default(Lcom/android/quickstep/OplusBaseTaskAnimationManager;ZZILjava/lang/Object;)V
    .registers 6

    if-nez p4, :cond_11

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    move p1, v0

    :cond_8
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_d

    move p2, v0

    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->cancelRecentsAnimation(ZZ)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: cancelRecentsAnimation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final cleanRecentsAnimaitonCount()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->Companion:Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;->cleanRecentsAnimaitonCount()V

    return-void
.end method

.method public static synthetic d(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->interceptPreloadRecentsAnimation$lambda$2(Landroid/content/Intent;)V

    return-void
.end method

.method private static final finishRunningRecentsAnimationInCallback$lambda$1(Lz4/h;)V
    .registers 2

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final getMOpm()Landroid/content/pm/OplusPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mOpm$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/OplusPackageManager;

    return-object p0
.end method

.method public static final increaseRecentsAnimaiton()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->Companion:Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;->increaseRecentsAnimaiton()V

    return-void
.end method

.method private static final interceptPreloadRecentsAnimation$lambda$2(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "$intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method public static final isRecentsAnimPendingRunning()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->Companion:Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;->isRecentsAnimPendingRunning()Z

    move-result v0

    return v0
.end method

.method public static final maybeForceCancelRecentsAnimation()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->Companion:Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;->maybeForceCancelRecentsAnimation()Z

    move-result v0

    return v0
.end method

.method public static final reduceRecentsAnimaiton()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->Companion:Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;->reduceRecentsAnimaiton()V

    return-void
.end method

.method public static final refreshLastStartTime()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->Companion:Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;->refreshLastStartTime()V

    return-void
.end method

.method private static final resetRecentsAnimRealFinishHandler$lambda$0(Lcom/android/quickstep/OplusBaseTaskAnimationManager;Landroid/os/Message;)Z
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "execute resetRecentsAnimRealFinishForSafe pre: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mIsRecentsAnimRealFinish:Z

    const-string v1, "OplusBaseTaskAnimationManager"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mIsRecentsAnimRealFinish:Z

    return p1
.end method

.method public static final resetRecentsAnimStartTime()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->Companion:Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;->resetRecentsAnimStartTime()V

    return-void
.end method

.method private static final startRecentsActivityWithCallback$lambda$3(Lcom/android/quickstep/RecentsAnimationCallbacks;Landroid/content/Intent;Landroid/app/ActivityOptions;J)V
    .registers 14

    const-string v0, "$callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x8

    const-string v2, "OplusBaseTaskAnimationManager#startRecentsActivity"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecentsAnimation(), callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickStep"

    const-string v4, "OplusBaseTaskAnimationManager"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v2, :cond_35

    sget-object p3, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/quickstep/SystemUiProxy;->startRecentsActivity(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/quickstep/RecentsAnimationCallbacks;)Z

    goto :goto_41

    :cond_35
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    :goto_41
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public final cancelRecentsAnimation(ZZ)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->cancelRecentsAnimationIfNeed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->getCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    iget-boolean v0, v0, Lcom/android/quickstep/RecentsAnimationCallbacks;->isAnimationStarted:Z

    if-nez v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    if-eqz v0, :cond_64

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->getCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-boolean v0, v0, Lcom/android/quickstep/RecentsAnimationCallbacks;->isReuseLastAnimation:Z

    if-ne v0, v2, :cond_27

    move v1, v2

    :cond_27
    if-eqz v1, :cond_2b

    if-eqz p2, :cond_64

    :cond_2b
    const-string p2, "cancelRecentsAnimation(), toRecents="

    const-string v0, ", callback="

    invoke-static {p2, p1, v0}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->getCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OplusBaseTaskAnimationManager"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->finishImmediatelyHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    invoke-virtual {p2, p1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->setToRecents(Z)V

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->finishImmediatelyHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->setPostTime(J)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->getCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object p1

    if-eqz p1, :cond_64

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->finishImmediatelyHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    goto :goto_64

    :cond_5d
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->cancelRecentsAnimation(Z)V

    :cond_64
    :goto_64
    return-void
.end method

.method public cancelRecentsAnimationByWmShell()V
    .registers 1

    return-void
.end method

.method public final cancelRecentsAnimationIfNeed()Z
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mStartRecentsActivity:Ljava/lang/Runnable;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mStartRecentsActivity:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_27

    :cond_13
    const-string v1, "QuickStep"

    const-string v2, "OplusBaseTaskAnimationManager"

    const-string v3, "cancelRecentsAnimationIfNeed"

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mStartRecentsActivity:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x0

    return p0
.end method

.method public cleanUpRecentsAnimation()V
    .registers 1

    return-void
.end method

.method public continueRecentsAnimation(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/RecentsAnimationCallbacks;
    .registers 3

    const-string v0, "gestureState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->getCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->finishImmediatelyHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public final finishRunningRecentsAnimationInCallback(Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->getCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getController()Lcom/android/quickstep/RecentsAnimationController;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishRunningRecentsAnimationInCallback(), controller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", toHome="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseTaskAnimationManager"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->getCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v1, v0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->notifyAnimationCanceled(Lcom/android/quickstep/RecentsAnimationController;Z)V

    :cond_38
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_46

    new-instance p1, Lcom/android/quickstep/OplusBaseTaskAnimationManager$finishRunningRecentsAnimationInCallback$1;

    invoke-direct {p1, v0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$finishRunningRecentsAnimationInCallback$1;-><init>(Ljava/lang/Object;)V

    goto :goto_4b

    :cond_46
    new-instance p1, Lcom/android/quickstep/OplusBaseTaskAnimationManager$finishRunningRecentsAnimationInCallback$2;

    invoke-direct {p1, v0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$finishRunningRecentsAnimationInCallback$2;-><init>(Ljava/lang/Object;)V

    :goto_4b
    new-instance v0, Lcom/android/launcher3/folder/t;

    invoke-direct {v0, p1}, Lcom/android/launcher3/folder/t;-><init>(Lz4/h;)V

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->cleanUpRecentsAnimation()V

    return-void
.end method

.method public getCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final interceptPreloadRecentsAnimation(Landroid/content/Intent;)Z
    .registers 3

    const-string p0, "intent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/t;

    invoke-direct {v0, p1}, Lcom/android/quickstep/t;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final removeFinishListener()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->getCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->finishImmediatelyHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->hasListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFinishListener(), callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "OplusBaseTaskAnimationManager"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->finishImmediatelyHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    :cond_2d
    return-void
.end method

.method public final resetRecentsAnimRealFinishForSafe()V
    .registers 5

    const-string v0, "OplusBaseTaskAnimationManager"

    const-string/jumbo v1, "resetRecentsAnimRealFinishForSafe"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimRealFinishHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->resetRecentsAnimRealFinishHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final startRecentsActivityWithCallback(Landroid/content/Intent;JLandroid/app/ActivityOptions;Lcom/android/quickstep/RecentsAnimationCallbacks;)V
    .registers 13

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/s0;

    move-object v1, v0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p4

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/s0;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Landroid/content/Intent;Landroid/app/ActivityOptions;J)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mStartRecentsActivity:Ljava/lang/Runnable;

    sget-object p1, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->Companion:Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;

    invoke-virtual {p1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager$Companion;->isRecentsAnimPendingRunning()Z

    move-result p1

    if-nez p1, :cond_21

    sget-object p1, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mStartRecentsActivity:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_38

    :cond_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "startRecentsActivityWithCallback: we will use last recents-anim, callback="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBaseTaskAnimationManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    return-void
.end method
