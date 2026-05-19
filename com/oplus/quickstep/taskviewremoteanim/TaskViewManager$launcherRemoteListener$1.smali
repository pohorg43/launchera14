.class public final Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$launcherRemoteListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;-><init>(Lcom/android/launcher/Launcher;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$launcherRemoteListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$launcherRemoteListener$1;->notifyTransaction$stopOrReleaseTaskView(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    return-void
.end method

.method private static final synthetic notifyTransaction$stopOrReleaseTaskView(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->stopOrReleaseTaskView$default(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public notifyTransaction(Landroid/os/Bundle;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyTransaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_19

    return-void

    :cond_19
    const-string v0, "key_transaction"

    const-string v2, "transaction_default"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "transaction_stop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$launcherRemoteListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    new-instance v0, Lcom/android/wm/shell/common/c;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/c;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_50

    :cond_36
    const-string v0, "transaction_finish"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$launcherRemoteListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    new-instance v0, Lcom/android/quickstep/util/n;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_50

    :cond_4b
    const-string p0, "notifyTransaction: nothing to do"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return-void
.end method
