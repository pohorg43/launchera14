.class public final Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->access$getSInstance$cp()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    move-result-object p0

    if-nez p0, :cond_1e

    const-class p0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    monitor-enter p0

    :try_start_9
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->access$getSInstance$cp()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    move-result-object v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$Companion;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;-><init>()V

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->access$setSInstance$cp(Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    :goto_1e
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->access$getSInstance$cp()Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final notifySubscribeItemStateChange(Ljava/lang/String;Z)V
    .registers 5

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSubscribePackageChange,listeners.size:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->access$getListeners$cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Taskbar"

    const-string v1, "TaskbarSettingStateListenHelper"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper;->access$getListeners$cp()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarSettingStateListenHelper$TaskbarSettingsChangeListener;->onSubscribeItemStateChange(Ljava/lang/String;Z)V

    goto :goto_2e

    :cond_3e
    return-void
.end method
