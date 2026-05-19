.class Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;
.super Landroid/window/WindowContainerTransactionCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncCallback"
.end annotation


# instance fields
.field public mId:I

.field public final mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

.field public final mWCT:Landroid/window/WindowContainerTransaction;

.field public final synthetic this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;Landroid/window/WindowContainerTransaction;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-direct {p0}, Landroid/window/WindowContainerTransactionCallback;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mId:I

    iput-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;ILandroid/window/WindowContainerTransaction;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-direct {p0}, Landroid/window/WindowContainerTransactionCallback;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mId:I

    iput-object p4, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    new-instance p1, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    invoke-direct {p1, p3, p2}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;-><init>(ILcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;)V

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->lambda$onTransactionReady$0(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$onTransactionReady$0(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 7

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    const/16 v2, 0x7d5

    invoke-virtual {v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$300(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_1e
    iget v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mId:I

    if-eq v1, p1, :cond_44

    const-string p2, "SyncTransactionQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got an unexpected onTransactionReady. Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but got "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_44
    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$002(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;)Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$200(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {v1}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$100(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, "SyncTransactionQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTransactionReady id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$300(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$400(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;
    :try_end_81
    .catchall {:try_start_1e .. :try_end_81} :catchall_df

    if-eqz p1, :cond_a7

    :try_start_83
    invoke-virtual {p1}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->getSyncCallback()Landroid/window/IWindowContainerTransactionCallback;

    move-result-object p1

    iget v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mId:I

    invoke-interface {p1, v1, p2}, Landroid/window/IWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8c} :catch_8d
    .catchall {:try_start_83 .. :try_end_8c} :catchall_df

    goto :goto_ad

    :catch_8d
    move-exception p1

    :try_start_8e
    const-string p2, "SyncTransactionQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending callback to legacy transition: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ad

    :cond_a7
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->close()V

    :goto_ad
    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {p1}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$300(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_c9

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$300(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;

    invoke-virtual {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->send()V

    :cond_c9
    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_8e .. :try_end_ca} :catchall_df

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->releaseCpuResources(I)V

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    return-void

    :catchall_df
    move-exception p0

    :try_start_e0
    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw p0
.end method


# virtual methods
.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$200(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/oplus/quickstep/taskviewremoteanim/common/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/common/a;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;ILandroid/view/SurfaceControl$Transaction;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public send()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$000(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;

    move-result-object v0

    if-ne v0, p0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$000(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;

    move-result-object v0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {v0, p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$002(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;)Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending sync transaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncTransactionQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    if-eqz v0, :cond_4c

    new-instance v0, Landroid/window/WindowOrganizer;

    invoke-direct {v0}, Landroid/window/WindowOrganizer;-><init>()V

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    invoke-virtual {v2}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mLegacyTransition:Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;

    invoke-virtual {v3}, Lcom/android/wm/shell/transition/LegacyTransitions$LegacyTransition;->getAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v2, v3, p0, v4}, Landroid/window/WindowOrganizer;->startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mId:I

    goto :goto_6f

    :cond_4c
    :try_start_4c
    new-instance v0, Landroid/window/WindowOrganizer;

    invoke-direct {v0}, Landroid/window/WindowOrganizer;-><init>()V

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v0, v2, p0}, Landroid/window/WindowOrganizer;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mId:I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_59} :catch_5a

    goto :goto_6f

    :catch_5a
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applySyncTransaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6f
    const-string v0, " Sent sync transaction. Got id="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", caller = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$200(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$100(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x14b4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_a1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sync Transactions must be serialized. In Flight: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {v2}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$000(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;

    move-result-object v2

    iget v2, v2, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;->access$000(Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue;)Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/SyncTransactionQueue$SyncCallback;->mWCT:Landroid/window/WindowContainerTransaction;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
