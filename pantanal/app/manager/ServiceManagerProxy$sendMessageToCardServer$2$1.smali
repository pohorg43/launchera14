.class final Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic $action:Lpantanal/app/manager/model/CardAction;

.field public final synthetic $cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/model/CardAction;Lpantanal/app/manager/ServiceManagerProxy;)V
    .registers 4

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$action:Lpantanal/app/manager/model/CardAction;

    iput-object p3, p0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v1

    iget-object v2, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getCardId()I

    move-result v2

    iget-object v3, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v3}, Lpantanal/app/bean/CardViewInfo;->getHostId()I

    move-result v3

    iget-object v4, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v4}, Lpantanal/app/bean/CardViewInfo;->isSupportMultiInstance()Z

    move-result v4

    iget-object v5, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v5}, Lpantanal/app/bean/CardViewInfo;->getServiceInstanceId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$action:Lpantanal/app/manager/model/CardAction;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[cardType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cardId = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hostId = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "action = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportMultiInstance = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serviceInstanceId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StringBuilder().apply {\n…             }.toString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ly8/c;->a:Ly8/c;

    const-string v6, "requestCardAction: businessTag ="

    invoke-static {v6, v4}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "CardServiceProxyImpl"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xec

    const/16 v16, 0x0

    move-object v6, v5

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v6, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$action:Lpantanal/app/manager/model/CardAction;

    invoke-virtual {v6}, Lpantanal/app/manager/model/CardAction;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_136

    const/16 v6, 0xc

    iget-object v7, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$action:Lpantanal/app/manager/model/CardAction;

    invoke-virtual {v7}, Lpantanal/app/manager/model/CardAction;->getParam()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_f9

    const-string v8, "life_circle"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "update_data"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f9

    const/16 v6, 0x16

    :cond_f9
    move v9, v6

    sget-object v6, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v6}, Lz8/f$a;->a()Lz8/f;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lz8/f;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lz8/c;

    if-eqz v7, :cond_136

    iget-object v6, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$action:Lpantanal/app/manager/model/CardAction;

    invoke-static {v6}, Lpantanal/app/manager/model/CardActionKt;->getLifecycleTrackProcessCode(Lpantanal/app/manager/model/CardAction;)I

    move-result v8

    if-nez v8, :cond_130

    goto :goto_136

    :cond_130
    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    :cond_136
    :goto_136
    iget-object v6, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v6}, Lpantanal/app/manager/ServiceManagerProxy;->getClientProxyManager()Lpantanal/app/manager/ClientProxyManager;

    move-result-object v6

    if-nez v6, :cond_157

    const-string v0, "requestCardAction failed,clientProxyManager = null.businessTag ="

    const-string v1, " "

    invoke-static {v0, v4, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "CardServiceProxyImpl"

    move-object v6, v5

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_157
    iget-object v6, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v6}, Lpantanal/app/manager/ServiceManagerProxy;->getClientProxyManager()Lpantanal/app/manager/ClientProxyManager;

    move-result-object v6

    if-eqz v6, :cond_16a

    iget-object v7, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v7}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v7

    invoke-virtual {v6, v7}, Lpantanal/app/manager/ClientProxyManager;->getOrCreateClientProxyByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object v6

    goto :goto_16b

    :cond_16a
    const/4 v6, 0x0

    :goto_16b
    if-nez v6, :cond_19d

    iget-object v0, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCardAction failed,cardServiceProxy = null,entrance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".businessTag ="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "CardServiceProxyImpl"

    move-object v6, v5

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_19d
    iget-object v7, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$action:Lpantanal/app/manager/model/CardAction;

    iget-object v8, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v7, v1, v2, v3, v8}, Lpantanal/app/manager/util/ProtoDataUtilKt;->toCardActionProto(Lpantanal/app/manager/model/CardAction;IIILpantanal/app/bean/CardViewInfo;)Lpantanal/app/nano/CardActionProto;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    iget-object v2, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$action:Lpantanal/app/manager/model/CardAction;

    invoke-virtual {v2}, Lpantanal/app/manager/model/CardAction;->getShouldForceFetch()Z

    move-result v2

    iget-object v0, v0, Lpantanal/app/manager/ServiceManagerProxy$sendMessageToCardServer$2$1;->$action:Lpantanal/app/manager/model/CardAction;

    invoke-virtual {v0}, Lpantanal/app/manager/model/CardAction;->getShouldNotify()Z

    move-result v0

    const-string v3, "toByteArray(\n           …  )\n                    )"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v1, v2, v4, v0}, Lcom/oplus/channel/server/ClientProxy;->request([BZLjava/lang/Object;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCardAction request done,bussinessTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",clientProxy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "CardServiceProxyImpl"

    move-object v6, v5

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
