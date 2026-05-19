.class public final Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nServiceManagerProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceManagerProxy.kt\npantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1\n*L\n1#1,452:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $callbackId:Ljava/lang/String;

.field public final synthetic $cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field public final synthetic $cb:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $observerKey:Ljava/lang/String;

.field public final synthetic $params:[B

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;[BLkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lpantanal/app/bean/CardViewInfo;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$observerKey:Ljava/lang/String;

    iput-object p3, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$callbackId:Ljava/lang/String;

    iput-object p4, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p5, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$params:[B

    iput-object p6, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 18

    move-object/from16 v0, p0

    new-instance v4, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1;

    iget-object v1, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v2, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v3, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$observerKey:Ljava/lang/String;

    iget-object v5, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$cb:Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v1, v2, v3, v5}, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1;-><init>(Lpantanal/app/manager/ServiceManagerProxy;Lpantanal/app/bean/CardViewInfo;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object v1, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v1}, Lpantanal/app/manager/ServiceManagerProxy;->getObserveMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$observerKey:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Ly8/c;->a:Ly8/c;

    iget-object v1, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$callbackId:Ljava/lang/String;

    const-string v2, "observeByByteWithObserverKey: callbackId = "

    invoke-static {v2, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "CardServiceProxyImpl"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    move-object/from16 v5, v16

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v1}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lz8/c;->q(I)V

    iget-object v1, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v1}, Lpantanal/app/manager/ServiceManagerProxy;->getClientProxyManager()Lpantanal/app/manager/ClientProxyManager;

    move-result-object v1

    if-eqz v1, :cond_51

    iget-object v2, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpantanal/app/manager/ClientProxyManager;->getOrCreateClientProxyByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object v1

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    move-object v3, v1

    if-nez v3, :cond_76

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observeByByteWithObserverKey failed,clientProxy is null,entrance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "CardServiceProxyImpl"

    move-object/from16 v5, v16

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_76
    if-eqz v3, :cond_87

    iget-object v2, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$callbackId:Ljava/lang/String;

    iget-object v5, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$params:[B

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v3

    move-object v8, v3

    move-object v3, v5

    move v5, v6

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/oplus/channel/server/ClientProxy;->observe(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;ZLjava/lang/Object;)V

    goto :goto_88

    :cond_87
    move-object v8, v3

    :goto_88
    iget-object v0, v0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->$callbackId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observeByByteWithObserverKey done. callbackId,observeResStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",clientProxy = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "CardServiceProxyImpl"

    move-object/from16 v5, v16

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method
