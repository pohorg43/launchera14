.class final Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/ContextExtKt;->asyncRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $applicationContext:Landroid/content/Context;

.field public final synthetic $broadcastPermission:Ljava/lang/String;

.field public final synthetic $filter:Landroid/content/IntentFilter;

.field public final synthetic $scheduler:Landroid/os/Handler;

.field public final synthetic $weakReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;->$weakReceiver:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;->$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;->$filter:Landroid/content/IntentFilter;

    iput-object p4, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;->$broadcastPermission:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;->$scheduler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 5

    iget-object v0, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;->$weakReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;->$applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;->$weakReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;->$filter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;->$broadcastPermission:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$2;->$scheduler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_26

    :cond_1e
    const-string p0, "ContextExt"

    const-string/jumbo v0, "receiver is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method
