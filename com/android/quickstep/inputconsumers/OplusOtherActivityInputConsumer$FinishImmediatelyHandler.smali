.class public final Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FinishImmediatelyHandler"
.end annotation


# instance fields
.field private postTime:J

.field private final reason:Ljava/lang/String;

.field private toRecents:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->reason:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;ZLcom/android/quickstep/RecentsAnimationController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->onRecentsAnimationStart$lambda$0(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;ZLcom/android/quickstep/RecentsAnimationController;)V

    return-void
.end method

.method private static final onRecentsAnimationStart$lambda$0(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;ZLcom/android/quickstep/RecentsAnimationController;)V
    .registers 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishImmediatelyHandler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toRecents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", posted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->postTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusOtherActivityInputConsumer"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getPostTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->postTime:J

    return-wide v0
.end method

.method public final getToRecents()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->toRecents:Z

    return p0
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .registers 5

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->toRecents:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/z0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher3/z0;-><init>(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;ZLcom/android/quickstep/RecentsAnimationController;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setPostTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->postTime:J

    return-void
.end method

.method public final setToRecents(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->toRecents:Z

    return-void
.end method
