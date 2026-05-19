.class final Lcom/oplus/utrace/hlog/HLogReceiver$onActionUploadNeedProxy$actionCall$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/hlog/HLogReceiver;->onActionUploadNeedProxy(Landroid/content/Context;Lcom/oplus/utrace/hlog/UploadParams;)V
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
.field public final synthetic $collectorUri:Landroid/net/Uri;

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $extras:Landroid/os/Bundle;

.field public final synthetic this$0:Lcom/oplus/utrace/hlog/HLogReceiver;


# direct methods
.method public constructor <init>(Lcom/oplus/utrace/hlog/HLogReceiver;Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/utrace/hlog/HLogReceiver$onActionUploadNeedProxy$actionCall$1;->this$0:Lcom/oplus/utrace/hlog/HLogReceiver;

    iput-object p2, p0, Lcom/oplus/utrace/hlog/HLogReceiver$onActionUploadNeedProxy$actionCall$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oplus/utrace/hlog/HLogReceiver$onActionUploadNeedProxy$actionCall$1;->$collectorUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oplus/utrace/hlog/HLogReceiver$onActionUploadNeedProxy$actionCall$1;->$extras:Landroid/os/Bundle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/HLogReceiver$onActionUploadNeedProxy$actionCall$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 9

    iget-object v1, p0, Lcom/oplus/utrace/hlog/HLogReceiver$onActionUploadNeedProxy$actionCall$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/utrace/hlog/HLogReceiver$onActionUploadNeedProxy$actionCall$1;->$collectorUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/oplus/utrace/hlog/HLogReceiver$onActionUploadNeedProxy$actionCall$1;->$extras:Landroid/os/Bundle;

    :try_start_6
    sget-object v0, Lcom/oplus/utrace/utils/Providers;->INSTANCE:Lcom/oplus/utrace/utils/Providers;

    const-string v3, "receiveLogFiles"

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/oplus/utrace/utils/Providers;->unstableProviderCall$default(Lcom/oplus/utrace/utils/Providers;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    goto :goto_18

    :catchall_13
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_18
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1f

    goto :goto_40

    :cond_1f
    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {v2}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onActionUploadNeedProxy() provider call exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLogReceiver"

    invoke-virtual {v0, v2, v1, p0}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_40
    return-void
.end method
