.class final Lpantanal/app/seedling/SeedlingCardImpl$load$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/SeedlingCardImpl;->load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
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
.field public final synthetic $bundle:Landroid/os/Bundle;

.field public final synthetic $callback:Lpantanal/app/OnLoadCallback;

.field public final synthetic this$0:Lpantanal/app/seedling/SeedlingCardImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/seedling/SeedlingCardImpl;Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
    .registers 4

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    iput-object p2, p0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->$callback:Lpantanal/app/OnLoadCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 18

    move-object/from16 v0, p0

    sget-object v12, Ly8/c;->a:Ly8/c;

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->$bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lv5/c;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v3}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v3

    iget-object v4, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v4}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getConfiguration$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/Configuration;

    move-result-object v4

    const-string v5, " "

    const-string v6, ", begin to load view,bundle:"

    const-string v7, ",cardViewInfo = "

    invoke-static {v5, v1, v6, v2, v7}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "，config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v1

    const-string v2, "SecondTermTraceContext"

    invoke-virtual {v1, v2}, Lpantanal/app/bean/CardViewInfo;->getUTraceCodeContext(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v1, :cond_ac

    iget-object v4, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    const-string v5, "922001"

    const/4 v6, 0x2

    invoke-static {v1, v14, v5, v6, v14}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Lh4/j;

    invoke-static {v4}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v7

    invoke-virtual {v7}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lh4/j;

    const-string v9, "service_id"

    invoke-direct {v8, v9, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v5, v13

    invoke-static {v4}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v7

    invoke-virtual {v7}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v7

    invoke-virtual {v7}, Lpantanal/app/bean/Entrance;->getEntranceName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lh4/j;

    const-string v9, "entrance"

    invoke-direct {v8, v9, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v5, v3

    invoke-static {v4}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpantanal/app/bean/CardViewInfo;->getCardCategory()Lpantanal/app/bean/CardCategory;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lh4/j;

    const-string v8, "card_category"

    invoke-direct {v7, v8, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v6

    invoke-static {v5}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    invoke-static {v4}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lpantanal/app/bean/CardViewInfo;->setUTraceCodeContext(Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;)V

    move-object v15, v1

    goto :goto_ad

    :cond_ac
    move-object v15, v14

    :goto_ad
    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v1

    invoke-static {v1}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0x190

    invoke-virtual {v1, v3, v2}, Lz8/c;->A(II)V

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->$callback:Lpantanal/app/OnLoadCallback;

    invoke-static {v1, v2}, Lpantanal/app/seedling/SeedlingCardImpl;->access$setClientCallback$p(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/OnLoadCallback;)V

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getContext(Lpantanal/app/seedling/SeedlingCardImpl;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_10d

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v2

    invoke-static {v2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v4

    const/16 v5, 0x190

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    sget-object v2, Lpantanal/app/seedling/SeedlingCardClient;->INSTANCE:Lpantanal/app/seedling/SeedlingCardClient;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v4

    invoke-virtual {v4}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v4

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getConfiguration$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lpantanal/app/bean/Configuration;->getLauncherInterceptor()Lpantanal/app/ILaunchInterceptor;

    move-result-object v5

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getConfiguration$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lpantanal/app/bean/Configuration;->getSeedingConfiguration()Lpantanal/app/seedling/SeedlingConfiguration;

    move-result-object v6

    if-eqz v6, :cond_102

    invoke-virtual {v6}, Lpantanal/app/seedling/SeedlingConfiguration;->getEngineType()Lpantanal/app/seedling/SeedingEngineType;

    move-result-object v6

    goto :goto_103

    :cond_102
    move-object v6, v14

    :goto_103
    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getConfiguration$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/Configuration;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lpantanal/app/seedling/SeedlingCardClient;->init(Landroid/content/Context;Lpantanal/app/bean/Entrance;Lpantanal/app/ILaunchInterceptor;Lpantanal/app/seedling/SeedingEngineType;Lpantanal/app/bean/Configuration;)V

    sget-object v1, Lh4/z;->a:Lh4/z;

    goto :goto_10e

    :cond_10d
    move-object v1, v14

    :goto_10e
    if-nez v1, :cond_12b

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ", begin to load view, context is null"

    invoke-static {v1, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingCard"

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_12b
    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->$bundle:Landroid/os/Bundle;

    const-string v2, "key_ui_data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_149

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "use bundle key_ui_data uidata size: "

    invoke-static {v3, v2}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lpantanal/app/bean/PantanalUIData;

    invoke-static {v1, v3}, La9/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpantanal/app/bean/PantanalUIData;

    if-nez v1, :cond_151

    :cond_149
    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-virtual {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->getUIData()Lpantanal/app/bean/PantanalUIData;

    move-result-object v1

    const-string v2, "use localPantanalUIData  uidata "

    :cond_151
    move-object v11, v1

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",load, build uiData: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/16 v16, 0x0

    const-string v2, "SeedlingCard"

    move-object v1, v12

    move-object v12, v11

    move-object/from16 v11, v16

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->$bundle:Landroid/os/Bundle;

    const-string v2, "key_seedling_init_data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19d

    iget-object v2, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_193

    const/4 v3, 0x1

    goto :goto_194

    :cond_193
    move v3, v13

    :goto_194
    if-eqz v3, :cond_19d

    invoke-static {v2}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lpantanal/app/bean/CardViewInfo;->setInitData(Ljava/lang/String;)V

    :cond_19d
    iget-object v0, v0, Lpantanal/app/seedling/SeedlingCardImpl$load$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0, v12}, Lpantanal/app/seedling/SeedlingCardImpl;->access$renderEngineView(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/bean/PantanalUIData;)V

    if-eqz v15, :cond_1a8

    const/4 v0, 0x6

    invoke-static {v15, v14, v13, v0, v14}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    :cond_1a8
    return-void
.end method
