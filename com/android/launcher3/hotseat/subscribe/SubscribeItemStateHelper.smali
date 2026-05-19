.class public final Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "SubscribeItemStateHelper"

.field private static sInstance:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;


# instance fields
.field private isAllAppsEnable:Z

.field private isFileManagerEnable:Z

.field private isGlobalSearchEnable:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isAllAppsEnable:Z

    iput-boolean v0, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable:Z

    iput-boolean v0, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable:Z

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result v2

    xor-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isAllAppsEnable:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable:Z

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result v3

    if-nez v3, :cond_33

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->isFileManagerApplicationEnable()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support132()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSmartSideBarConfidential()Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_34

    :cond_33
    move v0, v2

    :goto_34
    iput-boolean v0, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable:Z

    const-string v0, "init,isAllAppsEnable:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isAllAppsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isGlobalSearchEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isFileManagerEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable:Z

    const-string v1, "Taskbar"

    const-string v2, "SubscribeItemStateHelper"

    invoke-static {v0, p0, v1, v2}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;
    .registers 1

    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->sInstance:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    return-object v0
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->sInstance:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    return-void
.end method

.method public static final getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final isAllAppsEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isAllAppsEnable:Z

    return p0
.end method

.method public final isFileManagerEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable:Z

    return p0
.end method

.method public final isGlobalSearchEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable:Z

    return p0
.end method

.method public final setAllAppsEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isAllAppsEnable:Z

    return-void
.end method

.method public final setFileManagerEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable:Z

    return-void
.end method

.method public final setGlobalSearchEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable:Z

    return-void
.end method

.method public final updateFileManagerState()V
    .registers 5

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTaskbarSubscribeDisable()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->isFileManagerApplicationEnable()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support132()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSmartSideBarConfidential()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    iput-boolean v0, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable:Z

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getAppContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    move-result v0

    const-string v1, "SubscribeItemStateHelper"

    const-string v2, "Taskbar"

    if-nez v0, :cond_43

    const-string/jumbo p0, "updateFileManagerState,!fileManagerSwitchOn,no need deal"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_43
    const-string/jumbo v0, "updateFileManagerState,isFileManagerAppEnable:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable:Z

    invoke-static {v0, v3, v2, v1}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;->getInstance()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isFileManagerEnable:Z

    const-string v1, "enable_launcher_tools_filemanager_entry"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->onSubscribePackageChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public final updateGlobalSearchState()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable:Z

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getAppContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    move-result v0

    const-string v1, "SubscribeItemStateHelper"

    const-string v2, "Taskbar"

    if-nez v0, :cond_23

    const-string/jumbo p0, "updateGlobalSearchState,!globalSearchSwitchOn,no need deal"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    const-string/jumbo v0, "updateGlobalSearchState,isGlobalSearchAppEnable:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable:Z

    invoke-static {v0, v3, v2, v1}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;->getInstance()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->isGlobalSearchEnable:Z

    const-string v1, "enable_launcher_tools_globalsearch_entry"

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->onSubscribePackageChange(Ljava/lang/String;Z)V

    return-void
.end method
