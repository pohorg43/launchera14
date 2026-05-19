.class public Lcom/android/common/util/TransitionJankTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/TransitionJankTracker$AnimatorListener;
    }
.end annotation


# static fields
.field private static final BASE_MULTIPLE:I = 0x4

.field private static final DEFAULT_FRAME_INTERVAL:J = 0xc65d40L

.field private static final DELAY_DUMP_TRACE:I = 0xbb8

.field private static final FEATURE_PROP:Ljava/lang/String; = "persist.sys.transition.enable"

.field private static final INTENT_ACTION_TRACEUR_STOP:Ljava/lang/String; = "oplus.intent.action.TRACEUR_STOP_TRACING"

.field private static final INTENT_EXTRA_FROM:Ljava/lang/String; = "from"

.field private static final LAUNCHER_ANIM_JANK:Ljava/lang/String; = "launcher_anim_jank"

.field private static final LOCAL_DEBUG:Z

.field private static final MAX_TRANSITION_THRESHOLD:I = 0x14

.field private static final PACKAGE_NAME_TRACEUR:Ljava/lang/String; = "com.android.traceur"

.field private static final PLUS_MULTIPLE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TransitionJankTracker"

.field private static final TASK_ANIMATION_ATOM_ID:I = 0x18736

.field private static final TRANSIT_MODE:I = 0x2710

.field private static sMinDropFrameCount:I

.field private static sTaskAnimTotalCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mAnimatorListener:Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

.field private mFirstDoFrame:Z

.field private mIsSyncAnimation:Z

.field private mJankCount:I

.field private mJankMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDoFrameTime:J

.field private mRefreshRate:I

.field private mSceneType:I

.field private mTaskAnimJankInterval:J

.field private mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTransitionJankEnable:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "debug.launcher.jank_tracker"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/common/util/TransitionJankTracker;->LOCAL_DEBUG:Z

    sput v1, Lcom/android/common/util/TransitionJankTracker;->sMinDropFrameCount:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/common/util/TransitionJankTracker;->sTaskAnimTotalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(IZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/common/util/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/util/TransitionJankTracker;->mTransitionJankEnable:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/android/common/util/TransitionJankTracker;->mFirstDoFrame:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/common/util/TransitionJankTracker;->mLastDoFrameTime:J

    iput-wide v2, p0, Lcom/android/common/util/TransitionJankTracker;->mTaskAnimJankInterval:J

    iput v1, p0, Lcom/android/common/util/TransitionJankTracker;->mSceneType:I

    iput-boolean v1, p0, Lcom/android/common/util/TransitionJankTracker;->mIsSyncAnimation:Z

    iput-object v0, p0, Lcom/android/common/util/TransitionJankTracker;->mAnimatorListener:Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

    iput v1, p0, Lcom/android/common/util/TransitionJankTracker;->mJankCount:I

    iput-object v0, p0, Lcom/android/common/util/TransitionJankTracker;->mJankMap:Ljava/util/Map;

    iput v1, p0, Lcom/android/common/util/TransitionJankTracker;->mRefreshRate:I

    iput p1, p0, Lcom/android/common/util/TransitionJankTracker;->mSceneType:I

    iput-boolean p2, p0, Lcom/android/common/util/TransitionJankTracker;->mIsSyncAnimation:Z

    new-instance p1, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

    invoke-direct {p1, p0}, Lcom/android/common/util/TransitionJankTracker$AnimatorListener;-><init>(Lcom/android/common/util/TransitionJankTracker;)V

    iput-object p1, p0, Lcom/android/common/util/TransitionJankTracker;->mAnimatorListener:Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

    sget-boolean p1, Lcom/android/common/util/TransitionJankTracker;->LOCAL_DEBUG:Z

    if-eqz p1, :cond_40

    const-string p1, "debug.launcher.min_drop_frame_count"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/android/common/util/TransitionJankTracker;->sMinDropFrameCount:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/TransitionJankTracker;->mJankMap:Ljava/util/Map;

    :cond_40
    return-void
.end method

.method public static synthetic a(Lcom/android/common/util/TransitionJankTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/util/TransitionJankTracker;->dumpTrace()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/common/util/TransitionJankTracker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/common/util/TransitionJankTracker;->mIsSyncAnimation:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/common/util/TransitionJankTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/util/TransitionJankTracker;->taskAnimationBegin()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/common/util/TransitionJankTracker;)I
    .registers 1

    iget p0, p0, Lcom/android/common/util/TransitionJankTracker;->mSceneType:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/common/util/TransitionJankTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/util/TransitionJankTracker;->taskAnimationEnd()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/common/util/TransitionJankTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/util/TransitionJankTracker;->handleDoFrame()V

    return-void
.end method

.method public static synthetic b(Lcom/android/common/util/TransitionJankTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/util/TransitionJankTracker;->lambda$showJankDialog$0()V

    return-void
.end method

.method public static createTransitionJankTracker(IZ)Lcom/android/common/util/TransitionJankTracker;
    .registers 3

    new-instance v0, Lcom/android/common/util/TransitionJankTracker;

    invoke-direct {v0, p0, p1}, Lcom/android/common/util/TransitionJankTracker;-><init>(IZ)V

    return-object v0
.end method

.method private dumpTrace()V
    .registers 4

    const-string p0, "TransitionJankTracker"

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "oplus.intent.action.TRACEUR_STOP_TRACING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.traceur"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/common/util/TransitionJankTracker;->LOCAL_DEBUG:Z

    if-nez v1, :cond_1d

    const-string v1, "from"

    const-string v2, "health"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1d
    const/4 v1, 0x1

    const-string/jumbo v2, "restart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_24
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "async systrace stop"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_31

    goto :goto_37

    :catch_31
    move-exception v0

    const-string v1, "Failed to stop trace service."

    invoke-static {v1, v0, p0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_37
    return-void
.end method

.method private handleDoFrame()V
    .registers 9

    invoke-direct {p0}, Lcom/android/common/util/TransitionJankTracker;->isTransitionJankEnable()Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/common/util/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_90

    :cond_10
    iget-boolean v0, p0, Lcom/android/common/util/TransitionJankTracker;->mFirstDoFrame:Z

    const/4 v1, 0x1

    if-nez v0, :cond_41

    iput-boolean v1, p0, Lcom/android/common/util/TransitionJankTracker;->mFirstDoFrame:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/util/TransitionJankTracker;->mLastDoFrameTime:J

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xc65d40

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2f

    const-wide/16 v2, 0x4

    goto :goto_31

    :cond_2f
    const-wide/16 v2, 0x6

    :goto_31
    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/common/util/TransitionJankTracker;->mTaskAnimJankInterval:J

    sget-boolean v2, Lcom/android/common/util/TransitionJankTracker;->LOCAL_DEBUG:Z

    if-eqz v2, :cond_40

    sget v2, Lcom/android/common/util/TransitionJankTracker;->sMinDropFrameCount:I

    if-lez v2, :cond_40

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/common/util/TransitionJankTracker;->mTaskAnimJankInterval:J

    :cond_40
    return-void

    :cond_41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/common/util/TransitionJankTracker;->mLastDoFrameTime:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/common/util/TransitionJankTracker;->mTaskAnimJankInterval:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_8a

    iget v0, p0, Lcom/android/common/util/TransitionJankTracker;->mJankCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/util/TransitionJankTracker;->mJankCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/common/util/TransitionJankTracker;->mLastDoFrameTime:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    const v2, 0xf4240

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/util/TransitionJankTracker;->traceAnimJank(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/common/util/TransitionJankTracker;->LOCAL_DEBUG:Z

    if-eqz v1, :cond_8a

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/common/util/TransitionJankTracker;->mRefreshRate:I

    iget-object v1, p0, Lcom/android/common/util/TransitionJankTracker;->mJankMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/common/util/TransitionJankTracker;->mJankCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/util/TransitionJankTracker;->mLastDoFrameTime:J

    :cond_90
    :goto_90
    return-void
.end method

.method private isTransitionJankEnable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/common/util/TransitionJankTracker;->mTransitionJankEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    const-string/jumbo v1, "persist.sys.transition.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/TransitionJankTracker;->mTransitionJankEnable:Ljava/lang/Boolean;

    :cond_12
    iget-object p0, p0, Lcom/android/common/util/TransitionJankTracker;->mTransitionJankEnable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$showJankDialog$0()V
    .registers 5

    iget v0, p0, Lcom/android/common/util/TransitionJankTracker;->mSceneType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const-string/jumbo v0, "其他动画"

    goto :goto_13

    :cond_c
    const-string/jumbo v0, "返回动画"

    goto :goto_13

    :cond_10
    const-string/jumbo v0, "启动动画"

    :goto_13
    const-string/jumbo v2, "动画类型："

    const-string v3, "\n屏幕刷新率："

    invoke-static {v2, v0, v3}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/common/util/TransitionJankTracker;->mRefreshRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n卡顿次数："

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/common/util/TransitionJankTracker;->mJankCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n卡顿信息："

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/common/util/TransitionJankTracker;->mJankMap:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n\n3秒后开始抓取systrace..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showToastWhenJank, jankInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TransitionJankTracker"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130400

    invoke-direct {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v2, "卡顿信息"

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v2, "确定"

    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7f6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private reportData(IIJZ)V
    .registers 7

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    const v0, 0x18736

    invoke-virtual {p0, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, p3, p4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, p5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method private showJankDialog()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/common/util/TransitionJankTracker;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private taskAnimationBegin()V
    .registers 2

    iget-object v0, p0, Lcom/android/common/util/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/common/util/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private taskAnimationEnd()V
    .registers 9

    invoke-direct {p0}, Lcom/android/common/util/TransitionJankTracker;->isTransitionJankEnable()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/common/util/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_79

    :cond_f
    iget v0, p0, Lcom/android/common/util/TransitionJankTracker;->mJankCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    move v7, v0

    goto :goto_18

    :cond_17
    move v7, v1

    :goto_18
    const-string/jumbo v0, "taskAnimationEnd LOCAL_DEBUG ="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/android/common/util/TransitionJankTracker;->LOCAL_DEBUG:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",hasJank="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TransitionJankTracker"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/TransitionJankTracker;->sTaskAnimTotalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    if-nez v7, :cond_46

    sget-object v0, Lcom/android/common/util/TransitionJankTracker;->sTaskAnimTotalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v3, 0x14

    if-lt v0, v3, :cond_70

    :cond_46
    if-eqz v2, :cond_5e

    if-eqz v7, :cond_70

    invoke-direct {p0}, Lcom/android/common/util/TransitionJankTracker;->showJankDialog()V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Landroidx/core/app/a;

    invoke-direct {v2, p0}, Landroidx/core/app/a;-><init>(Lcom/android/common/util/TransitionJankTracker;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_70

    :cond_5e
    sget-object v0, Lcom/android/common/util/TransitionJankTracker;->sTaskAnimTotalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-wide v5, p0, Lcom/android/common/util/TransitionJankTracker;->mTaskAnimJankInterval:J

    move-object v2, p0

    move v3, v7

    invoke-direct/range {v2 .. v7}, Lcom/android/common/util/TransitionJankTracker;->reportData(IIJZ)V

    sget-object v0, Lcom/android/common/util/TransitionJankTracker;->sTaskAnimTotalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/android/common/util/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v1, p0, Lcom/android/common/util/TransitionJankTracker;->mFirstDoFrame:Z

    iput v1, p0, Lcom/android/common/util/TransitionJankTracker;->mJankCount:I

    :cond_79
    :goto_79
    return-void
.end method

.method private traceAnimJank(Ljava/lang/String;)V
    .registers 6

    const-string v0, "Scene:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/common/util/TransitionJankTracker;->mSceneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,Cost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,Thread:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/common/util/TransitionJankTracker;->mSceneType:I

    const-wide/16 v1, 0x8

    const-string v3, "launcher_anim_jank"

    invoke-static {v1, v2, v3, p1, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    iget p0, p0, Lcom/android/common/util/TransitionJankTracker;->mSceneType:I

    invoke-static {v1, v2, v3, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getAnimatorListener()Lcom/android/common/util/TransitionJankTracker$AnimatorListener;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/TransitionJankTracker;->mAnimatorListener:Lcom/android/common/util/TransitionJankTracker$AnimatorListener;

    return-object p0
.end method
