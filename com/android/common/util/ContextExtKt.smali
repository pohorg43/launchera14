.class public final Lcom/android/common/util/ContextExtKt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextExt"

.field private static final mainHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/common/util/ContextExtKt;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/ContextExtKt;->uIHelpExecute$lambda$6(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final asyncBindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILkotlin/jvm/functions/Function0;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroid/content/ServiceConnection;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/common/util/h;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/common/util/h;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic asyncBindService$default(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_6

    sget-object p4, Lcom/android/common/util/ContextExtKt$asyncBindService$1;->INSTANCE:Lcom/android/common/util/ContextExtKt$asyncBindService$1;

    :cond_6
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/common/util/ContextExtKt;->asyncBindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final asyncBindService$lambda$3(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILkotlin/jvm/functions/Function0;)V
    .registers 8

    const-string v0, "$service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$conn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$failCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    :try_start_1d
    const-string v0, "_____uIHelpExecute____bind"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p0, :cond_29

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_29
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2f

    goto :goto_34

    :catchall_2f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_34
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4f

    const-string p1, "asyncBindService "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ContextExt"

    invoke-static {p0, p1, p2}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/util/ContextExtKt;->mainHandler:Landroid/os/Handler;

    new-instance p1, Landroidx/recyclerview/widget/a;

    invoke-direct {p1, p4}, Landroidx/recyclerview/widget/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4f
    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    return-void
.end method

.method private static final asyncBindService$lambda$3$lambda$2$lambda$1(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final asyncRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/android/common/util/ContextExtKt;->asyncRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public static final asyncRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1c

    if-nez p2, :cond_a

    goto :goto_1c

    :cond_a
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;

    invoke-direct {p1, v0, p0, p2, p3}, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;Landroid/content/IntentFilter;I)V

    invoke-static {p1}, Lcom/android/common/util/ContextExtKt;->uIHelpExecute(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1c
    :goto_1c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "receiver is "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", filter is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextExt"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final asyncRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_20

    if-nez p2, :cond_a

    goto :goto_20

    :cond_a
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {p0}, Lcom/android/common/util/ContextExtKt;->uIHelpExecute(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_20
    :goto_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "receiver is "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", filter is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextExt"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final asyncUnbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/android/common/util/ContextExtKt$asyncUnbindService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/common/util/ContextExtKt$asyncUnbindService$1;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    invoke-static {v0}, Lcom/android/common/util/ContextExtKt;->uIHelpExecute(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final asyncUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_10

    const-string p0, "ContextExt"

    const-string/jumbo p1, "unregisterReceiver receiver is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lcom/android/common/util/ContextExtKt$asyncUnregisterReceiver$1;

    invoke-direct {p1, v0, p0}, Lcom/android/common/util/ContextExtKt$asyncUnregisterReceiver$1;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/common/util/ContextExtKt;->uIHelpExecute(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/ContextExtKt;->asyncBindService$lambda$3$lambda$2$lambda$1(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILkotlin/jvm/functions/Function0;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/common/util/ContextExtKt;->asyncBindService$lambda$3(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final uIHelpExecute(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final uIHelpExecute$lambda$6(Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "$run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    :try_start_13
    const-string v0, "_____uIHelpExecute____register"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_23

    goto :goto_28

    :catchall_23
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_28
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3a

    const-string/jumbo v0, "uIHelpExecute fail: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ContextExt"

    invoke-static {p0, v0, v1}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3a
    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    return-void
.end method
