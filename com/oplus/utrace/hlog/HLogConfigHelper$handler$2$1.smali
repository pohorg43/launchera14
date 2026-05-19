.class public final Lcom/oplus/utrace/hlog/HLogConfigHelper$handler$2$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/hlog/HLogConfigHelper$handler$2;->invoke()Lcom/oplus/utrace/hlog/HLogConfigHelper$handler$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->access$getRunning$p()Z

    move-result p0

    if-nez p0, :cond_2d

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-static {v1}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogConfigHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " handleMessage() running=false msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTrace.Sdk.HLogConfigHelper"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3e

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_39

    goto :goto_3e

    :cond_39
    sget-object p1, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-static {p1, p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->access$doQueryHLogConfig(Lcom/oplus/utrace/hlog/HLogConfigHelper;Landroid/content/Context;)V

    :cond_3e
    :goto_3e
    return-void
.end method
