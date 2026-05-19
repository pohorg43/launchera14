.class public final Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;
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

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->access$getSInstance$cp()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p0

    if-nez p0, :cond_24

    const-class p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    monitor-enter p0

    :try_start_e
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->access$getSInstance$cp()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->access$setSInstance$cp(Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;)V
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    goto :goto_24

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_24
    :goto_24
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->access$getSInstance$cp()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
