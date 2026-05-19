.class public final Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskbarSettingsObserver"
.end annotation


# instance fields
.field private final settingsKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "settingsKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;->settingsKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getSettingsKey()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;->settingsKey:Ljava/lang/String;

    return-object p0
.end method

.method public onSettingsChanged(Z)V
    .registers 7

    const-string/jumbo v0, "on change settingsKey:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;->settingsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taskbar"

    const-string v2, "TaskbarSettingStateListenHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;->settingsKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x41d05c81

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_67

    const v2, 0x3c5ffb9d

    if-eq v1, v2, :cond_4f

    const v2, 0x4981ff25

    if-eq v1, v2, :cond_37

    goto :goto_81

    :cond_37
    const-string v1, "enable_launcher_tools_globalsearch_entry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_81

    :cond_40
    if-eqz p1, :cond_80

    sget-object p1, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable()Z

    move-result p1

    if-eqz p1, :cond_80

    goto :goto_7e

    :cond_4f
    const-string v1, "enable_launcher_tools_filemanager_entry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_81

    :cond_58
    if-eqz p1, :cond_80

    sget-object p1, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable()Z

    move-result p1

    if-eqz p1, :cond_80

    goto :goto_7e

    :cond_67
    const-string v1, "enable_launcher_tools_allapps_entry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_81

    :cond_70
    if-eqz p1, :cond_80

    sget-object p1, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isAllAppsEnable()Z

    move-result p1

    if-eqz p1, :cond_80

    :goto_7e
    move p1, v3

    goto :goto_81

    :cond_80
    move p1, v4

    :goto_81
    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;->settingsKey:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;->notifySubscribeItemStateChange(Ljava/lang/String;Z)V

    return-void
.end method
