.class final Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy;->observeWithCallbackId(Ljava/lang/String;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ll4/d;)Ljava/lang/Object;
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nServiceManagerProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceManagerProxy.kt\npantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2\n+ 2 ServiceManagerProxy.kt\npantanal/app/manager/ServiceManagerProxy\n*L\n1#1,452:1\n238#2:453\n295#2:454\n*S KotlinDebug\n*F\n+ 1 ServiceManagerProxy.kt\npantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2\n*L\n203#1:453\n203#1:454\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "pantanal.app.manager.ServiceManagerProxy$observeWithCallbackId$2"
    f = "ServiceManagerProxy.kt"
    l = {
        0x1c5,
        0xd8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $callbackId:Ljava/lang/String;

.field public final synthetic $cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field public final synthetic $cb:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic $jsonObject:Lorg/json/JSONObject;

.field public final synthetic $proxy:Lpantanal/app/manager/ServiceManagerProxy;

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;Lkotlin/jvm/functions/Function1;Ljava/lang/Class;Ll4/d;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "Lorg/json/JSONObject;",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lh4/z;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ll4/d<",
            "-",
            "Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p3, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p4, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$jsonObject:Lorg/json/JSONObject;

    iput-object p5, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$proxy:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p6, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$cb:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$clazz:Ljava/lang/Class;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 12
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

    new-instance p1, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;

    iget-object v1, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iget-object v2, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v3, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v4, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$jsonObject:Lorg/json/JSONObject;

    iget-object v5, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$proxy:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v6, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$cb:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$clazz:Ljava/lang/Class;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;-><init>(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;Lkotlin/jvm/functions/Function1;Ljava/lang/Class;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v5, p0

    sget-object v6, Lm4/a;->a:Lm4/a;

    iget v0, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->label:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    if-eq v0, v2, :cond_1b

    if-ne v0, v1, :cond_13

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_be

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v0, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_8e

    :cond_23
    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object v7, Ly8/c;->a:Ly8/c;

    iget-object v0, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$callbackId:Ljava/lang/String;

    const-string v3, "observeWithCallbackId ==== "

    invoke-static {v3, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "CardServiceProxyImpl"

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lz8/c;->q(I)V

    iget-object v0, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$callbackId:Ljava/lang/String;

    const-string v3, "observeWithCallback"

    invoke-static {v0, v3}, Lpantanal/app/manager/ServiceManagerProxyKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v13, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2$callback$1;

    iget-object v3, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v4, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$clazz:Ljava/lang/Class;

    iget-object v7, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$cb:Lkotlin/jvm/functions/Function1;

    invoke-direct {v13, v3, v4, v7}, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2$callback$1;-><init>(Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;)V

    iget-object v9, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v11, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iget-object v3, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$jsonObject:Lorg/json/JSONObject;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v7, "UTF_8"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    const-string v3, "getBytes(...)"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->cardServer()Lm7/f0;

    move-result-object v3

    new-instance v4, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;

    const/4 v14, 0x0

    move-object v7, v4

    move-object v10, v0

    invoke-direct/range {v7 .. v14}, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Ll4/d;)V

    iput-object v0, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->L$0:Ljava/lang/Object;

    iput v2, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->label:I

    invoke-static {v3, v4, v5}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_8e

    return-object v6

    :cond_8e
    :goto_8e
    move-object v2, v0

    new-instance v4, Lpantanal/app/bean/SuperChannelInfo;

    iget-object v0, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v3, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$proxy:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v7, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$jsonObject:Lorg/json/JSONObject;

    iget-object v8, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v8}, Lpantanal/app/manager/ServiceManagerProxy;->getClientProxyManager()Lpantanal/app/manager/ClientProxyManager;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_a5

    invoke-virtual {v8}, Lpantanal/app/manager/ClientProxyManager;->getChannelServerBusiness()Lcom/oplus/channel/server/IServerBusiness;

    move-result-object v8

    goto :goto_a6

    :cond_a5
    move-object v8, v9

    :goto_a6
    invoke-direct {v4, v0, v3, v7, v8}, Lpantanal/app/bean/SuperChannelInfo;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Lorg/json/JSONObject;Lcom/oplus/channel/server/IServerBusiness;)V

    sget-object v0, Lpantanal/app/SuperChannelManager;->INSTANCE:Lpantanal/app/SuperChannelManager;

    iget-object v3, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iget-object v7, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->$cb:Lkotlin/jvm/functions/Function1;

    iput-object v9, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->L$0:Ljava/lang/Object;

    iput v1, v5, Lpantanal/app/manager/ServiceManagerProxy$observeWithCallbackId$2;->label:I

    move-object v1, v3

    move-object v3, v7

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Lpantanal/app/SuperChannelManager;->observeBySuperChannel(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/SuperChannelInfo;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_be

    return-object v6

    :cond_be
    :goto_be
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method
