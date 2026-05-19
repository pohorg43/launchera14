.class final Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy;->stopObserveWithCallbackId(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function1;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "pantanal.app.manager.ServiceManagerProxy$stopObserveWithCallbackId$2"
    f = "ServiceManagerProxy.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $callbackId:Ljava/lang/String;

.field public final synthetic $cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field public label:I

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Ll4/d<",
            "-",
            "Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p3, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;

    iget-object v0, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iget-object v1, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-direct {p1, v0, v1, p0, p2}, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;-><init>(Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->label:I

    if-nez v0, :cond_80

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    const-string v0, "observeWithCallback"

    invoke-static {p1, v0}, Lpantanal/app/manager/ServiceManagerProxyKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v0}, Lpantanal/app/manager/ServiceManagerProxy;->getObserveMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v0}, Lpantanal/app/manager/ServiceManagerProxy;->getObserveMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_7d

    iget-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v0, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy$stopObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    invoke-virtual {p1}, Lpantanal/app/manager/ServiceManagerProxy;->getClientProxyManager()Lpantanal/app/manager/ClientProxyManager;

    move-result-object p1

    if-eqz p1, :cond_41

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v2

    invoke-virtual {p1, v2}, Lpantanal/app/manager/ClientProxyManager;->getOrCreateClientProxyByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object p1

    goto :goto_42

    :cond_41
    const/4 p1, 0x0

    :goto_42
    sget-object v2, Ly8/c;->a:Ly8/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopObserveWithCallbackId: callbackId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",clientProxy = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",cardViewInfo = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "CardServiceProxyImpl"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p1, :cond_7d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/oplus/channel/server/ClientProxy$DefaultImpls;->stopObserve$default(Lcom/oplus/channel/server/ClientProxy;Lkotlin/jvm/functions/Function1;ZLjava/lang/Object;ILjava/lang/Object;)V

    :cond_7d
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_80
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
