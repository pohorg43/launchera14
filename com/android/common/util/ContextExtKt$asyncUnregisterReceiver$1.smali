.class final Lcom/android/common/util/ContextExtKt$asyncUnregisterReceiver$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/util/ContextExtKt;->asyncUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
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
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/common/util/ContextExtKt$asyncUnregisterReceiver$1;->$weakReceiver:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/common/util/ContextExtKt$asyncUnregisterReceiver$1;->$applicationContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/util/ContextExtKt$asyncUnregisterReceiver$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 2

    iget-object v0, p0, Lcom/android/common/util/ContextExtKt$asyncUnregisterReceiver$1;->$weakReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/common/util/ContextExtKt$asyncUnregisterReceiver$1;->$applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/common/util/ContextExtKt$asyncUnregisterReceiver$1;->$weakReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_20

    :cond_18
    const-string p0, "ContextExt"

    const-string/jumbo v0, "unregister receiver is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void
.end method
