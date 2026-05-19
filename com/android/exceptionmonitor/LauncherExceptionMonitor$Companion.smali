.class public final Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exceptionmonitor/LauncherExceptionMonitor;
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

    invoke-direct {p0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/android/exceptionmonitor/LauncherExceptionMonitor;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->access$getSInstance$cp()Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    move-result-object p0

    if-nez p0, :cond_28

    const-class p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    monitor-enter p0

    :try_start_e
    invoke-static {}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->access$getSInstance$cp()Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    move-result-object v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->Companion:Lcom/android/exceptionmonitor/LauncherExceptionMonitor$Companion;

    new-instance v0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->access$setSInstance$cp(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;)V
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit p0

    goto :goto_28

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_28
    :goto_28
    invoke-static {}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->access$getSInstance$cp()Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
