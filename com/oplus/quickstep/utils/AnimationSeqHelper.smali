.class public final Lcom/oplus/quickstep/utils/AnimationSeqHelper;
.super Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/AnimationSeqHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/utils/AnimationSeqHelper$Companion;

.field private static final KEY_INTERRUPT_TRANSITION_START_ACTIVITY_SEQ_ID:Ljava/lang/String; = "interrupt.transition.startActivity.seqId"

.field private static final MAX_DELAY_TIME:J = 0x1f4L

.field public static final MAX_INTERCEPT_GESTURE_DELAY_TIME:J = 0x12cL

.field private static final MSG_EXC_RUNNABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimationSeqHelper"

.field private static final USE_SEQ:Z = true


# instance fields
.field private delayRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private nextFinishSeqId:Lh4/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/j<",
            "+",
            "Lcom/android/quickstep/RecentsAnimationController;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private seqId:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationSeqHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/AnimationSeqHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->Companion:Lcom/oplus/quickstep/utils/AnimationSeqHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/oplus/quickstep/utils/d;

    invoke-direct {v2, p0}, Lcom/oplus/quickstep/utils/d;-><init>(Lcom/oplus/quickstep/utils/AnimationSeqHelper;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/utils/AnimationSeqHelper;Landroid/os/Message;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->handler$lambda$0(Lcom/oplus/quickstep/utils/AnimationSeqHelper;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private static final handler$lambda$0(Lcom/oplus/quickstep/utils/AnimationSeqHelper;Landroid/os/Message;)Z
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    const-wide/16 v1, 0x8

    const-string p1, "exc delayRunnable"

    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->delayRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_18

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_18
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->delayRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1e
    return v0
.end method

.method private final updateSeqId()J
    .registers 5

    iget-wide v0, p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->seqId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->seqId:J

    return-wide v0
.end method


# virtual methods
.method public addSeqId(Landroid/app/ActivityOptions;)V
    .registers 7

    const-string v0, "activityOption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportStartingSurface()Z

    move-result v0

    const-string v1, "AnimationSeqHelper"

    if-eqz v0, :cond_41

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->updateSeqId()J

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add start activity seqId: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "interrupt.transition.startActivity.seqId"

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->setExtraBundle(Landroid/app/ActivityOptions;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_46

    :cond_41
    const-string p0, "addSeqId, return directly due to fail to support multi apps interruption"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_46
    return-void
.end method

.method public canFinishRecent()Z
    .registers 6

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isSupportStartingSurface()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_20

    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_RECENT_FINISH_TIMESTAMP:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long p0, v1, v3

    if-lez p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    :goto_20
    return v0
.end method

.method public canInterceptGesture()Z
    .registers 6

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isSupportStartingSurface()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_20

    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_START_TIMESTAMP:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long p0, v1, v3

    if-lez p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    :goto_20
    return v0
.end method

.method public clearFinishRecentsRunnable()V
    .registers 5

    const-wide/16 v0, 0x8

    const-string v2, "clearFinishRecentsRunnable"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->delayRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public delayFinishRecents(Ljava/lang/Runnable;)Z
    .registers 12

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->canFinishRecent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    goto :goto_2f

    :cond_11
    const-wide/16 v2, 0x8

    const-string v0, "delayFinishRecents"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->clearFinishRecentsRunnable()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->delayRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_RECENT_FINISH_TIMESTAMP:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :goto_2f
    return v1
.end method

.method public getNextFinishSeqId(Lcom/android/quickstep/RecentsAnimationController;)J
    .registers 3

    const-string v0, "recentsAnimationController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->nextFinishSeqId:Lh4/j;

    if-eqz p0, :cond_1a

    iget-object v0, p0, Lh4/j;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lh4/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_1a
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public resetInterceptState()V
    .registers 3

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_START_TIMESTAMP:J

    return-void
.end method

.method public updateNextFinishSeqIdIfNeed(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 7

    const-string v0, "recentsAnimationController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportStartingSurface()Z

    move-result v0

    const-string v1, "AnimationSeqHelper"

    if-eqz v0, :cond_48

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->nextFinishSeqId:Lh4/j;

    if-eqz v0, :cond_24

    iget-object v0, v0, Lh4/j;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->updateSeqId()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update finish recents seqId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lh4/j;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;->nextFinishSeqId:Lh4/j;

    goto :goto_4d

    :cond_48
    const-string p0, "update finish recents return directly due to fail to support multi apps interruption"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4d
    return-void
.end method
