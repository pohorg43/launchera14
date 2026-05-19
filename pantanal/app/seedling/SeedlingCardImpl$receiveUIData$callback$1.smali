.class public final Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/callback/ParseDataByEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/SeedlingCardImpl;->receiveUIData(Lpantanal/app/bean/PantanalUIData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $dataPantanal:Lpantanal/app/bean/PantanalUIData;

.field public final synthetic this$0:Lpantanal/app/seedling/SeedlingCardImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/bean/PantanalUIData;Lpantanal/app/seedling/SeedlingCardImpl;)V
    .registers 3

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;->$dataPantanal:Lpantanal/app/bean/PantanalUIData;

    iput-object p2, p0, Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 15

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object p2, p0, Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {p2}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ",parseDataByEngine onFailed.errorCode="

    invoke-static {p2, v0, p1}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;->$dataPantanal:Lpantanal/app/bean/PantanalUIData;

    invoke-static {p1, p0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$onInterceptUIDataAndRenderView(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method

.method public onSuccess(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "uiData"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;->$dataPantanal:Lpantanal/app/bean/PantanalUIData;

    invoke-virtual {v2}, Lpantanal/app/bean/PantanalUIData;->getSeedlingUIData()Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->getDes()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0x3ffff8

    const/16 v27, 0x0

    invoke-static/range {v3 .. v27}, Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;->copy$default(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/Integer;IZLjava/lang/Long;Ljava/util/Map;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;

    move-result-object v2

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    :goto_45
    iget-object v3, v0, Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;->$dataPantanal:Lpantanal/app/bean/PantanalUIData;

    invoke-virtual {v3, v2}, Lpantanal/app/bean/PantanalUIData;->setSeedlingUIData(Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V

    sget-object v4, Ly8/c;->a:Ly8/c;

    iget-object v3, v0, Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v3}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",parseDataByEngine onSuccess uiData="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",newData="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedlingCard"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingCardImpl$receiveUIData$callback$1;->$dataPantanal:Lpantanal/app/bean/PantanalUIData;

    invoke-static {v1, v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$onInterceptUIDataAndRenderView(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method
