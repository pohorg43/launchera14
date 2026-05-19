.class final Lcom/oplus/utrace/hlog/HLogUploadService$handler$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/hlog/HLogUploadService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/utrace/hlog/HLogUploadService;


# direct methods
.method public constructor <init>(Lcom/oplus/utrace/hlog/HLogUploadService;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/utrace/hlog/HLogUploadService$handler$2;->this$0:Lcom/oplus/utrace/hlog/HLogUploadService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/Handler;
    .registers 6

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HLogUploadService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_28

    :cond_1b
    sget-object v2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v3, "init: "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTrace.Sdk.HLogUploadService"

    invoke-virtual {v2, v4, v3, v1}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    instance-of v2, v0, Lh4/k$a;

    if-eqz v2, :cond_31

    move-object v0, v1

    :cond_31
    check-cast v0, Landroid/os/Looper;

    new-instance v1, Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/utrace/hlog/HLogUploadService$handler$2;->this$0:Lcom/oplus/utrace/hlog/HLogUploadService;

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/HLogUploadService$handler$2;->invoke()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
