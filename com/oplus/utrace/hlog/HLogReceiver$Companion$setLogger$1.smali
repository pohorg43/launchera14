.class public final Lcom/oplus/utrace/hlog/HLogReceiver$Companion$setLogger$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/uploader/UploadManager$UploaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->setLogger$utrace_sdk_fullRelease(Lcom/oplus/log/Logger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploaderFailed(Ljava/lang/String;)V
    .registers 4

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {v1}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onUploaderFailed() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTrace.Sdk.HLogReceiver"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUploaderSuccess()V
    .registers 3

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    sget-object v0, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {v0}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " onUploaderSuccess()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTrace.Sdk.HLogReceiver"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
