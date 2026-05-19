.class final Lcom/oplus/utrace/hlog/HLogUploader$handler$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/hlog/HLogUploader;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/oplus/utrace/hlog/PushData;Lkotlin/jvm/functions/Function1;)V
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
.field public final synthetic this$0:Lcom/oplus/utrace/hlog/HLogUploader;


# direct methods
.method public constructor <init>(Lcom/oplus/utrace/hlog/HLogUploader;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/utrace/hlog/HLogUploader$handler$2;->this$0:Lcom/oplus/utrace/hlog/HLogUploader;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/Handler;
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/HLogUploader$handler$2;->this$0:Lcom/oplus/utrace/hlog/HLogUploader;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/HLogUploader$handler$2;->invoke()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
