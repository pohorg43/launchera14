.class public final Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$launcherStateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;


# direct methods
.method public constructor <init>(Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$launcherStateListener$1;->this$0:Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StateManager$StateListener;->onStateTransitionStart(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hdie taskbar onStateTransitionStart toState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",inHideTaskbarActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$launcherStateListener$1;->this$0:Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;

    invoke-static {v1}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->access$getInHideTaskbarActivity$p(Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTBAWE"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$launcherStateListener$1;->this$0:Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;

    invoke-static {p1}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->access$getInHideTaskbarActivity$p(Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;)Z

    move-result p1

    if-nez p1, :cond_42

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$launcherStateListener$1;->this$0:Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;

    invoke-static {p0}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;->access$removeLauncherStateListener(Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent;)V

    sget-object p0, Lcom/android/launcher3/taskbar/OplusTaskbarStashController;->Companion:Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarStashController$Companion;->onTaskbarHidden(ZZ)V

    :cond_42
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/oplus/launcher/lifecycle/HideTaskbarActivityWatchEvent$launcherStateListener$1;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
