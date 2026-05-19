.class public final Lcom/android/exceptionmonitor/LauncherExceptionMonitor$getHandler$1$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;


# direct methods
.method public constructor <init>(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$getHandler$1$1;->this$0:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const-string/jumbo v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/exceptionmonitor/LauncherExceptionMonitor$getHandler$1$1;->this$0:Lcom/android/exceptionmonitor/LauncherExceptionMonitor;

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/android/exceptionmonitor/LauncherExceptionMonitor;->access$processAndDispatchNextDetectIfNeed(Lcom/android/exceptionmonitor/LauncherExceptionMonitor;III)V

    return-void
.end method
