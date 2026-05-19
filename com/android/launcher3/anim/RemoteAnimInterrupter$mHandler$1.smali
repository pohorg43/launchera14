.class public final Lcom/android/launcher3/anim/RemoteAnimInterrupter$mHandler$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/RemoteAnimInterrupter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/anim/RemoteAnimInterrupter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/RemoteAnimInterrupter;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter$mHandler$1;->this$0:Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    const-string/jumbo v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_25

    const-string p1, "RemoteAnimInterrupter"

    const-string/jumbo v0, "reset view state run"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter$mHandler$1;->this$0:Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    invoke-static {p1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->access$getMResetViewRunner$p(Lcom/android/launcher3/anim/RemoteAnimInterrupter;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher3/anim/RemoteAnimInterrupter$mHandler$1;->this$0:Lcom/android/launcher3/anim/RemoteAnimInterrupter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/RemoteAnimInterrupter;->access$setMResetViewRunner$p(Lcom/android/launcher3/anim/RemoteAnimInterrupter;Ljava/lang/Runnable;)V

    :cond_25
    return-void
.end method
