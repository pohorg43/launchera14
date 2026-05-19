.class public final Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/SeedlingEngine;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/seedling/OnSeedlingCardLoadCallback;Lpantanal/app/Card;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSeedlingEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeedlingEngine.kt\npantanal/app/seedling/SeedlingEngine$seedlingCallback$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,777:1\n1#2:778\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/seedling/SeedlingEngine;


# direct methods
.method public constructor <init>(Lpantanal/app/seedling/SeedlingEngine;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final startCodeTrace922002(Lcom/oplus/seedling/sdk/seedling/ISeedling;Lpantanal/app/bean/CardViewInfo;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 8

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getCodeContext()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_54

    sget-object v1, Lcom/oplus/utrace/sdk/UTraceCompat;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

    invoke-virtual {v1, p0}, Lcom/oplus/utrace/sdk/UTraceCompat;->readFromJsonString(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    if-eqz p0, :cond_54

    const-string v1, "922002"

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v0}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    if-eqz p0, :cond_54

    const/4 v0, 0x3

    new-array v0, v0, [Lh4/j;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getServiceId()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lh4/j;

    const-string v4, "service_id"

    invoke-direct {v3, v4, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v1

    invoke-virtual {v1}, Lpantanal/app/bean/Entrance;->getEntranceName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lh4/j;

    const-string v4, "entrance"

    invoke-direct {v3, v4, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, p1

    invoke-virtual {p2}, Lpantanal/app/bean/CardViewInfo;->getCardCategory()Lpantanal/app/bean/CardCategory;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lh4/j;

    const-string v1, "card_category"

    invoke-direct {p2, v1, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v0, v2

    invoke-static {v0}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    move-object v0, p0

    :cond_54
    return-object v0
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 15

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingEngine;->access$getCardName$p(Lpantanal/app/seedling/SeedlingEngine;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v2}, Lpantanal/app/seedling/SeedlingEngine;->access$getPendingTasks$p(Lpantanal/app/seedling/SeedlingEngine;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",startSeedling,onFailed,listener size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",errorCode = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,msg= "

    invoke-static {v3, v0, p2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedCardEngine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {p0, p1, p2}, Lpantanal/app/seedling/SeedlingEngine;->access$handleLoadFailed(Lpantanal/app/seedling/SeedlingEngine;ILjava/lang/String;)V

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .registers 14

    const-string v0, "errorMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingEngine;->access$getCardName$p(Lpantanal/app/seedling/SeedlingEngine;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ",startSeedling,onFailed: errorMsg = "

    invoke-static {v0, v2, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedCardEngine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    const/16 v0, 0x800

    invoke-static {p0, v0, p1}, Lpantanal/app/seedling/SeedlingEngine;->access$handleLoadFailed(Lpantanal/app/seedling/SeedlingEngine;ILjava/lang/String;)V

    return-void
.end method

.method public onLoadFinished(Lcom/oplus/seedling/sdk/seedling/ISeedling;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "seedling"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-interface/range {p1 .. p1}, Lcom/oplus/seedling/sdk/seedling/ISeedling;->getCodeContext()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onLoadFinished seedling.getCodeContext() "

    invoke-static {v4, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "SeedCardEngine"

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    move-object v3, v2

    move-object v7, v14

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v13, v20

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v3, v0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v3}, Lpantanal/app/seedling/SeedlingEngine;->access$getCardInfo$p(Lpantanal/app/seedling/SeedlingEngine;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->startCodeTrace922002(Lcom/oplus/seedling/sdk/seedling/ISeedling;Lpantanal/app/bean/CardViewInfo;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v13

    iget-object v3, v0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v3}, Lpantanal/app/seedling/SeedlingEngine;->access$getCardName$p(Lpantanal/app/seedling/SeedlingEngine;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v4}, Lpantanal/app/seedling/SeedlingEngine;->access$getPendingTasks$p(Lpantanal/app/seedling/SeedlingEngine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v5}, Lpantanal/app/seedling/SeedlingEngine;->access$isReleased$p(Lpantanal/app/seedling/SeedlingEngine;)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",startSeedling,onLoadFinished,listener size = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isRelease = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",seedling = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "SeedCardEngine"

    const/4 v6, 0x0

    move-object v3, v2

    move-object v2, v13

    move-object/from16 v13, v20

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v3, v0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v3}, Lpantanal/app/seedling/SeedlingEngine;->access$isReleased$p(Lpantanal/app/seedling/SeedlingEngine;)Z

    move-result v3

    if-eqz v3, :cond_95

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v0, v1}, Lpantanal/app/seedling/SeedlingEngine;->access$handleReleaseCard(Lpantanal/app/seedling/SeedlingEngine;Lcom/oplus/seedling/sdk/seedling/ISeedling;)V

    return-void

    :cond_95
    iget-object v3, v0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v3}, Lpantanal/app/seedling/SeedlingEngine;->access$getCardInfo$p(Lpantanal/app/seedling/SeedlingEngine;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v3

    invoke-static {v3}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v4

    const/16 v5, 0x190

    const/16 v6, 0x3c

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    iget-object v3, v0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v3, v1}, Lpantanal/app/seedling/SeedlingEngine;->access$saveSeedlingData(Lpantanal/app/seedling/SeedlingEngine;Lcom/oplus/seedling/sdk/seedling/ISeedling;)V

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingEngine;->access$setCardLaunchInterceptor(Lpantanal/app/seedling/SeedlingEngine;)V

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingEngine;->access$handleNotifyResultImmediatelyOrDelay(Lpantanal/app/seedling/SeedlingEngine;)V

    iget-object v1, v0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingEngine;->access$doUpdateCardData(Lpantanal/app/seedling/SeedlingEngine;)V

    iget-object v0, v0, Lpantanal/app/seedling/SeedlingEngine$seedlingCallback$1;->this$0:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingEngine;->access$executePendingTasks(Lpantanal/app/seedling/SeedlingEngine;)V

    if-eqz v2, :cond_ca

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1, v3}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    :cond_ca
    return-void
.end method

.method public onReceiveData(Lcom/oplus/seedling/sdk/seedling/ISeedling;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/seedling/sdk/seedling/SeedlingCallback$DefaultImpls;->onReceiveData(Lcom/oplus/seedling/sdk/seedling/SeedlingCallback;Lcom/oplus/seedling/sdk/seedling/ISeedling;Lcom/oplus/seedling/sdk/seedling/SeedlingUIData;)V

    return-void
.end method
