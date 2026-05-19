.class public final Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/seedling/SeedlingEngine$InitSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/SeedlingEngine;->obtainDefaultView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lpantanal/app/seedling/SeedlingEngine;


# direct methods
.method public constructor <init>(Lpantanal/app/seedling/SeedlingEngine;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    iput-object p2, p0, Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;)V
    .registers 16

    const-string v0, "seedlingManagerFromCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lpantanal/app/seedling/SeedlingCardClient;->INSTANCE:Lpantanal/app/seedling/SeedlingCardClient;

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingEngine;->access$getCardInfo$p(Lpantanal/app/seedling/SeedlingEngine;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedingManagerByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v0

    sget-object v12, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingEngine;->access$getCardName$p(Lpantanal/app/seedling/SeedlingEngine;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitSuccessCallback onSuccess,execute pending task,begin to startSeedling,cardName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",iSeedlingManager = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "targetSeedlingManager = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedCardEngine"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf8

    const/4 v11, 0x0

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingEngine;->access$buildSeedCardIntent(Lpantanal/app/seedling/SeedlingEngine;)Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;

    move-result-object v13

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingEngine;->access$getCardInfo$p(Lpantanal/app/seedling/SeedlingEngine;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v1

    invoke-static {v1}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v2

    const/16 v3, 0x190

    const/16 v4, 0x32

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedCardEngine"

    const-string v3, "InitSuccessCallback onSuccess,execute pending task,begin to startSeedling,seedlingManger not match"

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_7e
    if-eqz v0, :cond_9d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedCardEngine"

    const-string v3, "InitSuccessCallback onSuccess,execute pending task,use seedlingManager from map to startSeedling"

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p1, p0, Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingEngine;->access$getSeedlingCallback$p(Lpantanal/app/seedling/SeedlingEngine;)Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;

    move-result-object p0

    invoke-interface {v0, p1, v13, p0}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->startSeedling(Landroid/content/Context;Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;)V

    goto :goto_b9

    :cond_9d
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedCardEngine"

    const-string v3, "InitSuccessCallback onSuccess,execute pending task,use seedlingManager from callback to startSeedling"

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine$obtainDefaultView$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingEngine;->access$getSeedlingCallback$p(Lpantanal/app/seedling/SeedlingEngine;)Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;

    move-result-object p0

    invoke-interface {p1, v0, v13, p0}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->startSeedling(Landroid/content/Context;Lcom/oplus/seedling/sdk/seedling/SeedlingIntent;Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;)V

    :goto_b9
    return-void
.end method
