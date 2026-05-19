.class public final Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;
.super Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$BaseTaskStateChangeListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskStateChangeTimeOutListener"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private final option:Ljava/lang/Runnable;

.field private final timeOutDuration:J

.field private final timeOutOption:Ljava/lang/Runnable;

.field private final type:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;JLjava/lang/Runnable;)V
    .registers 7

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "option"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$BaseTaskStateChangeListener;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->type:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    iput-wide p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->timeOutDuration:J

    iput-object p4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->option:Ljava/lang/Runnable;

    sget-object p4, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p4}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p4

    iput-object p4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->handler:Landroid/os/Handler;

    new-instance p4, Lcom/android/wm/shell/common/c;

    invoke-direct {p4, p0}, Lcom/android/wm/shell/common/c;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;)V

    iput-object p4, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->timeOutOption:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskStateChangeTimeOutListener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]: init."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskStateHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_44

    invoke-virtual {p0, p4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_44
    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->timeOutOption$lambda$0(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;)V

    return-void
.end method

.method private static final timeOutOption$lambda$0(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskStateChangeTimeOutListener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->type:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]: Time Out."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskStateHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->dispose()V

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->option:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 3

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->removeGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->timeOutOption:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->handler:Landroid/os/Handler;

    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getOption()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->option:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getTimeOutDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->timeOutDuration:J

    return-wide v0
.end method

.method public final getTimeOutOption()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->timeOutOption:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getType()Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->type:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    return-object p0
.end method

.method public onLandScapeSceneExit(Z)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->type:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;->ON_LAND_SCAPE_SCENE_EXIT:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    if-ne v0, v1, :cond_2a

    const-string v0, "TaskStateChangeTimeOutListener["

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->type:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskStateHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->dispose()V

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->option:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2a
    return-void
.end method

.method public onTransitionFinish(Z)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->type:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;->ON_TRANSITION_FINISH:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    if-ne v0, v1, :cond_2c

    if-eqz p1, :cond_2c

    const-string v0, "TaskStateChangeTimeOutListener["

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->type:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskStateHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->dispose()V

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->option:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2c
    return-void
.end method

.method public final setHandler(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeTimeOutListener;->handler:Landroid/os/Handler;

    return-void
.end method
