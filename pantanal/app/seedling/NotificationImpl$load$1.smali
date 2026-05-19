.class public final Lpantanal/app/seedling/NotificationImpl$load$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/callback/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/NotificationImpl;->load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $callback:Lpantanal/app/OnLoadCallback;

.field public final synthetic this$0:Lpantanal/app/seedling/NotificationImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/OnLoadCallback;Lpantanal/app/seedling/NotificationImpl;)V
    .registers 3

    iput-object p1, p0, Lpantanal/app/seedling/NotificationImpl$load$1;->$callback:Lpantanal/app/OnLoadCallback;

    iput-object p2, p0, Lpantanal/app/seedling/NotificationImpl$load$1;->this$0:Lpantanal/app/seedling/NotificationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 15

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seedling sdk init failed, code = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "GadgetImpl"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/seedling/NotificationImpl$load$1;->$callback:Lpantanal/app/OnLoadCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seedlingsdk init failed,msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onPluginCheckUpdateResult(IIIJ)V
    .registers 17

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "GadgetImpl"

    const-string v2, "onPluginCheckUpdateResult,"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .registers 22

    move-object/from16 v0, p0

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    iget-object v2, v0, Lpantanal/app/seedling/NotificationImpl$load$1;->this$0:Lpantanal/app/seedling/NotificationImpl;

    invoke-static {v2}, Lpantanal/app/seedling/NotificationImpl;->access$getConfiguration$p(Lpantanal/app/seedling/NotificationImpl;)Lpantanal/app/bean/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lpantanal/app/bean/Configuration;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v2

    invoke-virtual {v2}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->gainSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v1

    if-eqz v1, :cond_6c

    iget-object v2, v0, Lpantanal/app/seedling/NotificationImpl$load$1;->this$0:Lpantanal/app/seedling/NotificationImpl;

    invoke-static {v2}, Lpantanal/app/seedling/NotificationImpl;->access$getContext$p(Lpantanal/app/seedling/NotificationImpl;)Landroid/content/Context;

    move-result-object v2

    new-instance v15, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    move-object v3, v15

    iget-object v4, v0, Lpantanal/app/seedling/NotificationImpl$load$1;->this$0:Lpantanal/app/seedling/NotificationImpl;

    invoke-static {v4}, Lpantanal/app/seedling/NotificationImpl;->access$getNotificationViewInfo$p(Lpantanal/app/seedling/NotificationImpl;)Lpantanal/app/notification/NotificationViewInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpantanal/app/notification/NotificationViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, v0, Lpantanal/app/seedling/NotificationImpl$load$1;->this$0:Lpantanal/app/seedling/NotificationImpl;

    invoke-static {v6}, Lpantanal/app/seedling/NotificationImpl;->access$getNotificationViewInfo$p(Lpantanal/app/seedling/NotificationImpl;)Lpantanal/app/notification/NotificationViewInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpantanal/app/notification/NotificationViewInfo;->getSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lpantanal/app/seedling/NotificationImpl$load$1;->this$0:Lpantanal/app/seedling/NotificationImpl;

    invoke-static {v7}, Lpantanal/app/seedling/NotificationImpl;->access$getNotificationViewInfo$p(Lpantanal/app/seedling/NotificationImpl;)Lpantanal/app/notification/NotificationViewInfo;

    move-result-object v7

    invoke-virtual {v7}, Lpantanal/app/notification/NotificationViewInfo;->getInitData()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x1ff2

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;ZJZLandroid/util/ArrayMap;ZZLandroid/util/ArrayMap;Ljava/util/List;Lcom/oplus/seedling/sdk/recommendlist/ServiceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lpantanal/app/seedling/NotificationImpl$load$1$onSuccess$1;

    iget-object v4, v0, Lpantanal/app/seedling/NotificationImpl$load$1;->$callback:Lpantanal/app/OnLoadCallback;

    iget-object v0, v0, Lpantanal/app/seedling/NotificationImpl$load$1;->this$0:Lpantanal/app/seedling/NotificationImpl;

    invoke-direct {v3, v4, v0}, Lpantanal/app/seedling/NotificationImpl$load$1$onSuccess$1;-><init>(Lpantanal/app/OnLoadCallback;Lpantanal/app/seedling/NotificationImpl;)V

    move-object/from16 v0, v20

    invoke-interface {v1, v2, v0, v3}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->startSeedling(Landroid/content/Context;Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;)V

    :cond_6c
    return-void
.end method
