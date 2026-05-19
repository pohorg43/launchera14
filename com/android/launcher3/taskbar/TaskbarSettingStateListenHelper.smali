.class public final Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;,
        Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;,
        Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "TaskbarSettingStateListenHelper"

.field private static allAppObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

.field private static expandAreaObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

.field private static fileManagerObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

.field private static globalSearchObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static longPressObsever:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

.field private static sInstance:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

.field private static taskbarObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;


# instance fields
.field private final mSettingsConfig$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->listeners:Ljava/util/List;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    const-string v1, "enable_launcher_taskbar"

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->taskbarObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    const-string v1, "enable_launcher_tools_allapps_entry"

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->allAppObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    const-string v1, "enable_launcher_tools_globalsearch_entry"

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->globalSearchObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    const-string v1, "enable_launcher_tools_filemanager_entry"

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->fileManagerObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    const-string v1, "enable_launcher_expand_area"

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->expandAreaObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    const-string v1, "enable_launcher_tools_longpress_entry"

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->longPressObsever:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$mSettingsConfig$2;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$mSettingsConfig$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->mSettingsConfig$delegate:Lh4/f;

    return-void
.end method

.method public static final synthetic access$getListeners$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->sInstance:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    return-object v0
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->sInstance:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    return-void
.end method

.method public static final getInstance()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;->getInstance()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    move-result-object v0

    return-object v0
.end method

.method private final getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->mSettingsConfig$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    return-object p0
.end method


# virtual methods
.method public final onSubscribePackageChange(Ljava/lang/String;Z)V
    .registers 5

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSubscribePackageChange,key:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",enable:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Taskbar"

    const-string v1, "TaskbarSettingStateListenHelper"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;->notifySubscribeItemStateChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public final registerListener(Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;)V
    .registers 3

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public final registerSettingsObserver()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->taskbarObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->registerTaskbarEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->allAppObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->registerTaskbarAllAppsEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->globalSearchObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->registerTaskbarGlobalSearchEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->fileManagerObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->registerTaskbarFileManagerEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->expandAreaObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->registerTaskbarExpandAreaEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->longPressObsever:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->registerTaskbarLongPressEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterListener(Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;)V
    .registers 3

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public final unregisterSettingsObserver()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->taskbarObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->unregisterTaskbarEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->allAppObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->unregisterTaskbarAllAppsEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->globalSearchObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->unregisterTaskbarGlobalSearchEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->fileManagerObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->unregisterTaskbarFileManagerEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->expandAreaObserver:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->unregisterTaskbarExpandAreaEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->getMSettingsConfig()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->longPressObsever:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsObserver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->unregisterTaskbarLongPressEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method
