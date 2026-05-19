.class public final Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy;->replaceObserveWithCallbackId(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Ll4/d;)Ljava/lang/Object;
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
        "SMAP\nServiceManagerProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceManagerProxy.kt\npantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2\n*L\n1#1,452:1\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "pantanal.app.manager.ServiceManagerProxy$replaceObserveWithCallbackId$2"
    f = "ServiceManagerProxy.kt"
    l = {}
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

.field public final synthetic $params:Lorg/json/JSONObject;

.field public label:I

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Ll4/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lh4/z;",
            ">;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Lorg/json/JSONObject;",
            "Ll4/d<",
            "-",
            "Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p3, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$cb:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p5, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$params:Lorg/json/JSONObject;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 10
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

    new-instance p1, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;

    iget-object v1, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iget-object v2, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v3, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$cb:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v5, p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$params:Lorg/json/JSONObject;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;-><init>(Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v1, v0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->label:I

    if-nez v1, :cond_a0

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v5, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2$callback$1;

    iget-object v1, v0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v2, v0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$cb:Lkotlin/jvm/functions/Function1;

    invoke-direct {v5, v1, v2}, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2$callback$1;-><init>(Lpantanal/app/manager/ServiceManagerProxy;Lkotlin/jvm/functions/Function1;)V

    iget-object v1, v0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    const-string v2, "observeWithCallback"

    invoke-static {v1, v2}, Lpantanal/app/manager/ServiceManagerProxyKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v2}, Lpantanal/app/manager/ServiceManagerProxy;->getObserveMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iget-object v1, v0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v2, v0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v0, v0, Lpantanal/app/manager/ServiceManagerProxy$replaceObserveWithCallbackId$2;->$params:Lorg/json/JSONObject;

    sget-object v4, Ly8/c;->a:Ly8/c;

    const-string v6, "replaceObserveWithCallbackId: callbackId = "

    invoke-static {v6, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    move-object v6, v4

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v6, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v6}, Lz8/f$a;->a()Lz8/f;

    move-result-object v6

    invoke-virtual {v6, v3}, Lz8/f;->b(Ljava/lang/String;)Lz8/c;

    move-result-object v6

    if-eqz v6, :cond_58

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lz8/c;->w(I)V

    :cond_58
    invoke-virtual {v1}, Lpantanal/app/manager/ServiceManagerProxy;->getClientProxyManager()Lpantanal/app/manager/ClientProxyManager;

    move-result-object v1

    const/16 v17, 0x0

    if-eqz v1, :cond_6a

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpantanal/app/manager/ClientProxyManager;->getOrCreateClientProxyByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object v1

    move-object v2, v1

    goto :goto_6c

    :cond_6a
    move-object/from16 v2, v17

    :goto_6c
    if-nez v2, :cond_84

    const-string v1, "replaceObserveWithCallbackId failed,clientProxy is null,callbackId = "

    invoke-static {v1, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    move-object v6, v4

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_84
    if-eqz v2, :cond_9f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v0, "getBytes(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/oplus/channel/server/ClientProxy$DefaultImpls;->replaceObserve$default(Lcom/oplus/channel/server/ClientProxy;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;ZLjava/lang/Object;ILjava/lang/Object;)V

    sget-object v17, Lh4/z;->a:Lh4/z;

    :cond_9f
    return-object v17

    :cond_a0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
