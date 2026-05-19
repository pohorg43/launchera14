.class final Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/ContextExtKt;->asyncRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V
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

.field public final synthetic $filter:Landroid/content/IntentFilter;

.field public final synthetic $flags:I

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
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;Landroid/content/IntentFilter;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/content/IntentFilter;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;->$weakReceiver:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;->$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;->$filter:Landroid/content/IntentFilter;

    iput p4, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;->$flags:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 4

    iget-object v0, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;->$weakReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;->$applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;->$weakReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;->$filter:Landroid/content/IntentFilter;

    iget p0, p0, Lcom/android/common/util/ContextExtKt$asyncRegisterReceiver$1;->$flags:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_24

    :cond_1c
    const-string p0, "ContextExt"

    const-string/jumbo v0, "receiver is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void
.end method
