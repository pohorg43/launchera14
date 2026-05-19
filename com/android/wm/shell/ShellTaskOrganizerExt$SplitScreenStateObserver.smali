.class Lcom/android/wm/shell/ShellTaskOrganizerExt$SplitScreenStateObserver;
.super Lcom/oplus/app/IOplusSplitScreenObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/ShellTaskOrganizerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SplitScreenStateObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/ShellTaskOrganizerExt;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizerExt;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt$SplitScreenStateObserver;->this$0:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-direct {p0}, Lcom/oplus/app/IOplusSplitScreenObserver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizerExt;Lcom/android/wm/shell/ShellTaskOrganizerExt$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizerExt$SplitScreenStateObserver;-><init>(Lcom/android/wm/shell/ShellTaskOrganizerExt;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "splitScreenMinimizedChange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    if-eqz p2, :cond_2a

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt$SplitScreenStateObserver;->this$0:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    const-string v2, "isMinimized"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->access$102(Lcom/android/wm/shell/ShellTaskOrganizerExt;Z)Z

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt$SplitScreenStateObserver;->this$0:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-static {v0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->access$100(Lcom/android/wm/shell/ShellTaskOrganizerExt;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt$SplitScreenStateObserver;->this$0:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->access$202(Lcom/android/wm/shell/ShellTaskOrganizerExt;Z)Z

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt$SplitScreenStateObserver;->this$0:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-static {v0, v2}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->access$302(Lcom/android/wm/shell/ShellTaskOrganizerExt;Z)Z

    :cond_2a
    const-string/jumbo v0, "splitScreenModeChange"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    if-eqz p2, :cond_40

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt$SplitScreenStateObserver;->this$0:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    const-string p1, "isInSplitScreenMode"

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->access$402(Lcom/android/wm/shell/ShellTaskOrganizerExt;Z)Z

    :cond_40
    return-void
.end method
