.class public final Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[B",
        "Lh4/z;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nServiceManagerProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceManagerProxy.kt\npantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1\n*L\n1#1,452:1\n*E\n"
    }
.end annotation


# instance fields
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

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Lpantanal/app/manager/ServiceManagerProxy;Lpantanal/app/bean/CardViewInfo;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p3, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1;->$observerKey:Ljava/lang/String;

    iput-object p4, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1;->invoke([B)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke([B)V
    .registers 15

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v1, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0, v1}, Lpantanal/app/manager/ServiceManagerProxy;->access$startUTraceIntent(Lpantanal/app/manager/ServiceManagerProxy;Lpantanal/app/bean/CardViewInfo;)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1;->$observerKey:Ljava/lang/String;

    const-string v1, "observeByByteWithObserverKey: "

    const-string v3, " refresh data"

    invoke-static {v1, v0, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "CardServiceProxyImpl"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1$callback$1;->$cb:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
