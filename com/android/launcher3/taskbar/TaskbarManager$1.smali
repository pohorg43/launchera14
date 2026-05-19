.class Lcom/android/launcher3/taskbar/TaskbarManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarManager;-><init>(Lcom/android/quickstep/TouchInteractionService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mOldConfig:Landroid/content/res/Configuration;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11

    const-wide/16 v0, 0x8

    const-string/jumbo v2, "onTaskbarConfigurationChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1, v3}, Lcom/android/launcher3/taskbar/TaskbarManager;->onTaskbarConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_18

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_18
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    iget-boolean v1, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mUserUnlocked:Z

    if-eqz v1, :cond_30

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    const v2, -0x7fffda00

    and-int v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_42

    move v3, v4

    goto :goto_43

    :cond_42
    move v3, v5

    :goto_43
    and-int/lit16 v6, v1, 0x400

    if-eqz v6, :cond_78

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v6, :cond_78

    if-eqz v0, :cond_78

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    and-int/lit16 v7, v1, 0x80

    if-eqz v7, :cond_59

    move v7, v4

    goto :goto_5a

    :cond_59
    move v7, v5

    :goto_5a
    if-eqz v7, :cond_5f

    iget v8, v6, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    goto :goto_61

    :cond_5f
    iget v8, v6, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    :goto_61
    if-eqz v7, :cond_66

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    goto :goto_68

    :cond_66
    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    :goto_68
    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-ne v7, v8, :cond_78

    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-ne v7, v6, :cond_78

    and-int/lit16 v1, v1, -0x401

    and-int/2addr v2, v1

    if-eqz v2, :cond_76

    goto :goto_77

    :cond_76
    move v4, v5

    :goto_77
    move v3, v4

    :cond_78
    if-eqz v3, :cond_83

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar(Ljava/lang/String;)V

    goto :goto_9f

    :cond_83
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    iget-object v3, v2, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v3, :cond_9f

    if-eqz v0, :cond_98

    iget-boolean v4, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v4, :cond_98

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/OplusDeviceProfile;->copy(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    :cond_98
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarManager;->mTaskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onConfigurationChanged(I)V

    :cond_9f
    :goto_9f
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method
