.class final Lpantanal/content/base/IServiceListCenter$mObserver$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/content/base/IServiceListCenter;-><init>(Lpantanal/content/base/IServiceDao;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+TT;>;",
        "Lh4/z;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIServiceListCenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IServiceListCenter.kt\npantanal/content/base/IServiceListCenter$mObserver$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,478:1\n1549#2:479\n1620#2,3:480\n1549#2:483\n1620#2,3:484\n*S KotlinDebug\n*F\n+ 1 IServiceListCenter.kt\npantanal/content/base/IServiceListCenter$mObserver$1\n*L\n82#1:479\n82#1:480,3\n109#1:483\n109#1:484,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/content/base/IServiceListCenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpantanal/content/base/IServiceListCenter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpantanal/content/base/IServiceListCenter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/content/base/IServiceListCenter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/content/base/IServiceListCenter$mObserver$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lpantanal/content/base/IServiceListCenter$mObserver$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "newList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lpantanal/content/base/IServiceListCenter$mObserver$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    invoke-virtual {v2}, Lpantanal/content/base/IServiceListCenter;->getServiceDao()Lpantanal/content/base/IServiceDao;

    move-result-object v2

    invoke-virtual {v2}, Lpantanal/content/base/IServiceDao;->getUtraceContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_b9

    iget-object v6, v0, Lpantanal/content/base/IServiceListCenter$mObserver$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    sget-object v7, Ly8/c;->a:Ly8/c;

    invoke-virtual {v6}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mObserver parentCtx = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v6, 0x2

    const-string v7, "922008"

    invoke-static {v2, v5, v7, v6, v5}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_53
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type com.pantanal.server.content.recommendlist.ServiceInfo"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v9}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_6c
    new-array v8, v6, [Lh4/j;

    sget-object v9, Ly8/c;->a:Ly8/c;

    invoke-virtual {v9}, Ly8/c;->b()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lh4/j;

    const-string v12, "seedling_sdk_ver"

    invoke-direct {v11, v12, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v8, v4

    invoke-virtual {v9}, Ly8/c;->c()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lh4/j;

    const-string v11, "panta_client_ver"

    invoke-direct {v10, v11, v9}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x1

    aput-object v10, v8, v9

    invoke-static {v8}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/oplus/utrace/sdk/UTrace;->addTraceTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    new-array v6, v6, [Lh4/j;

    sget-object v8, Ly8/c;->j:Ljava/lang/String;

    new-instance v10, Lh4/j;

    const-string v11, "app_ver"

    invoke-direct {v10, v11, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v6, v4

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lh4/j;

    const-string v10, "service_ids"

    invoke-direct {v8, v10, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v9

    invoke-static {v6}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    goto :goto_ba

    :cond_b9
    move-object v2, v5

    :goto_ba
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e1

    sget-object v7, Ly8/c;->a:Ly8/c;

    iget-object v6, v0, Lpantanal/content/base/IServiceListCenter$mObserver$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    invoke-virtual {v6}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v9, "service list is null, upload error"

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v2, :cond_e1

    const v6, 0x8caff1

    const-string v7, "service list is null"

    invoke-static {v2, v6, v7}, Lcom/oplus/utrace/sdk/UTrace;->error(Lcom/oplus/utrace/sdk/UTraceContext;ILjava/lang/String;)V

    :cond_e1
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ee
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    if-eqz v8, :cond_109

    check-cast v7, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v7}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getExtras()Landroid/util/ArrayMap;

    move-result-object v7

    if-eqz v7, :cond_109

    const-string v8, "SecondTermTraceContext"

    invoke-virtual {v7, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_109
    sget-object v7, Lh4/z;->a:Lh4/z;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    :cond_10f
    iget-object v3, v0, Lpantanal/content/base/IServiceListCenter$mObserver$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    const-string v6, "1000"

    invoke-static {v3, v1, v6, v5}, Lpantanal/content/base/IServiceListCenter;->access$setUTraceIntent(Lpantanal/content/base/IServiceListCenter;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    iget-object v6, v0, Lpantanal/content/base/IServiceListCenter$mObserver$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    invoke-virtual {v6}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "receive onChange event from static sdk, origin data size = "

    invoke-static {v7, v6}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    move-object v7, v3

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v6, v0, Lpantanal/content/base/IServiceListCenter$mObserver$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    invoke-static {v6, v1}, Lpantanal/content/base/IServiceListCenter;->access$updateRecommendList(Lpantanal/content/base/IServiceListCenter;Ljava/util/List;)V

    iget-object v6, v0, Lpantanal/content/base/IServiceListCenter$mObserver$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    invoke-static {v6}, Lpantanal/content/base/IServiceListCenter;->access$notifyAllObservers(Lpantanal/content/base/IServiceListCenter;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15c

    iget-object v0, v0, Lpantanal/content/base/IServiceListCenter$mObserver$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    invoke-virtual {v0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v9, "list from static sdk is empty!"

    move-object v7, v3

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_15c
    if-eqz v2, :cond_162

    const/4 v0, 0x6

    invoke-static {v2, v5, v4, v0, v5}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    :cond_162
    return-void
.end method
