.class final Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/ZenModeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Observer"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/ZenModeMonitor;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/ZenModeMonitor;Landroid/os/Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;->this$0:Lcom/android/launcher3/taskbar/ZenModeMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;->this$0:Lcom/android/launcher3/taskbar/ZenModeMonitor;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->access$isZenModeInner(Lcom/android/launcher3/taskbar/ZenModeMonitor;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;->this$0:Lcom/android/launcher3/taskbar/ZenModeMonitor;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->access$getMInZenMode$p(Lcom/android/launcher3/taskbar/ZenModeMonitor;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;->this$0:Lcom/android/launcher3/taskbar/ZenModeMonitor;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->access$getMInZenMode$p(Lcom/android/launcher3/taskbar/ZenModeMonitor;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_21
    iget-object v0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;->this$0:Lcom/android/launcher3/taskbar/ZenModeMonitor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->access$setMInZenMode$p(Lcom/android/launcher3/taskbar/ZenModeMonitor;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/ZenModeMonitor$Observer;->this$0:Lcom/android/launcher3/taskbar/ZenModeMonitor;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/ZenModeMonitor;->access$dispatchModeChange(Lcom/android/launcher3/taskbar/ZenModeMonitor;Z)V

    :cond_2f
    return-void
.end method
