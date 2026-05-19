.class public Lcom/android/wm/shell/transition/TransitionJankTracker;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BASE_MULTIPLE:I = 0x4

.field private static final BASE_MULTIPLE_UNIT:I = 0xf4240

.field private static final DEFAULT_FRAME_INTERVAL:J = 0xc65d40L

.field private static final FEATURE_PROP:Ljava/lang/String; = "persist.sys.transition.enable"

.field private static final MAX_TRANSITION_THRESHOLD:I = 0x64

.field private static final PLUS_MULTIPLE:I = 0x6

.field private static final TASK_ANIMATION_ATOM_ID:I = 0x18736

.field private static final TASK_OPERATION_ANIMATION_DESC:Ljava/lang/String; = "task_transition_anim"

.field private static volatile sInstance:Lcom/android/wm/shell/transition/TransitionJankTracker;


# instance fields
.field private mFirstDoFrame:Z

.field private mLastDoFrameTime:J

.field private mLastVsyncId:J

.field private mTaskAnimDropFrame:Z

.field private mTaskAnimDuration:J

.field private mTaskAnimEndTime:J

.field private mTaskAnimJankCount:I

.field private mTaskAnimJankInterval:J

.field private mTaskAnimStartTime:J

.field private mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTaskAnimTotalCount:I

.field private mTransitionJankEnable:Z


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v0, "persist.sys.transition.enable"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTransitionJankEnable:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimDropFrame:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mFirstDoFrame:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mLastDoFrameTime:J

    iput-wide v2, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mLastVsyncId:J

    iput-wide v2, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimDuration:J

    iput-wide v2, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimStartTime:J

    iput-wide v2, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimEndTime:J

    iput-wide v2, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimJankInterval:J

    iput v1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimJankCount:I

    iput v1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimTotalCount:I

    return-void
.end method

.method public static getInstance()Lcom/android/wm/shell/transition/TransitionJankTracker;
    .registers 2

    sget-object v0, Lcom/android/wm/shell/transition/TransitionJankTracker;->sInstance:Lcom/android/wm/shell/transition/TransitionJankTracker;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/wm/shell/transition/TransitionJankTracker;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/wm/shell/transition/TransitionJankTracker;->sInstance:Lcom/android/wm/shell/transition/TransitionJankTracker;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/wm/shell/transition/TransitionJankTracker;

    invoke-direct {v1}, Lcom/android/wm/shell/transition/TransitionJankTracker;-><init>()V

    sput-object v1, Lcom/android/wm/shell/transition/TransitionJankTracker;->sInstance:Lcom/android/wm/shell/transition/TransitionJankTracker;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/wm/shell/transition/TransitionJankTracker;->sInstance:Lcom/android/wm/shell/transition/TransitionJankTracker;

    return-object v0
.end method

.method public static reportData(IIIJZ)V
    .registers 8

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    const v1, 0x18736

    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p3, p4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method


# virtual methods
.method public handleDoFrame()V
    .registers 9

    iget-boolean v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTransitionJankEnable:Z

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-wide v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mLastVsyncId:J

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    goto/16 :goto_9a

    :cond_1c
    iget-boolean v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mFirstDoFrame:Z

    const/4 v1, 0x1

    if-nez v0, :cond_67

    iput-boolean v1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mFirstDoFrame:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mLastDoFrameTime:J

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mLastVsyncId:J

    iget-wide v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimJankInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_52

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xc65d40

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4d

    const-wide/16 v2, 0x4

    goto :goto_4f

    :cond_4d
    const-wide/16 v2, 0x6

    :goto_4f
    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimJankInterval:J

    :cond_52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimJankInterval:J

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimStartTime:J

    iget-wide v4, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimDuration:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    add-long/2addr v4, v0

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimEndTime:J

    return-void

    :cond_67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimStartTime:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_8a

    iget-wide v4, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimEndTime:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_8a

    iget-wide v4, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mLastDoFrameTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimJankInterval:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_8a

    iput-boolean v1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimDropFrame:Z

    const-wide/16 v2, 0x8

    const-string/jumbo v0, "task_transition_anim"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    :cond_8a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mLastDoFrameTime:J

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mLastVsyncId:J

    :cond_9a
    :goto_9a
    return-void
.end method

.method public taskAnimationBegin(IJ)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    return-void

    :cond_d
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_1a

    iget-object p1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-wide p2, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimDuration:J

    :cond_1a
    return-void
.end method

.method public taskAnimationEnd(Z)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTransitionJankEnable:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_53

    :cond_d
    const/4 v0, 0x0

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mFirstDoFrame:Z

    return-void

    :cond_18
    iget-boolean v6, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimDropFrame:Z

    const/4 p1, 0x1

    if-eqz v6, :cond_22

    iget v1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimJankCount:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimJankCount:I

    :cond_22
    iget v1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimTotalCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimTotalCount:I

    if-nez v6, :cond_2e

    const/16 v1, 0x64

    if-lt v3, v1, :cond_4a

    :cond_2e
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimJankCount:I

    iget-wide v4, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimJankInterval:J

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/transition/TransitionJankTracker;->reportData(IIIJZ)V

    iput v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimJankCount:I

    iput v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimTotalCount:I

    iget-boolean v1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimDropFrame:Z

    if-eqz v1, :cond_41

    iget-boolean p1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTransitionJankEnable:Z

    goto :goto_48

    :cond_41
    const-string/jumbo v1, "persist.sys.transition.enable"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :goto_48
    iput-boolean p1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTransitionJankEnable:Z

    :cond_4a
    iget-object p1, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mFirstDoFrame:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/transition/TransitionJankTracker;->mTaskAnimDropFrame:Z

    :cond_53
    :goto_53
    return-void
.end method
