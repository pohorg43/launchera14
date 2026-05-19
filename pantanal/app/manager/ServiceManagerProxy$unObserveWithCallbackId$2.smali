.class final Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy;->unObserveWithCallbackId(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Ll4/d;)Ljava/lang/Object;
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
    c = "pantanal.app.manager.ServiceManagerProxy$unObserveWithCallbackId$2"
    f = "ServiceManagerProxy.kt"
    l = {
        0x17f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $callbackId:Ljava/lang/String;

.field public final synthetic $cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field public final synthetic $componentName:Ljava/lang/String;

.field public final synthetic $entranceType:I

.field public label:I

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;ILpantanal/app/bean/CardViewInfo;Ljava/lang/String;Ll4/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "I",
            "Lpantanal/app/bean/CardViewInfo;",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iput p3, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->$entranceType:I

    iput-object p4, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p5, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->$componentName:Ljava/lang/String;

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

    new-instance p1, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;

    iget-object v1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    iget-object v2, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget v3, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->$entranceType:I

    iget-object v4, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v5, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->$componentName:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;-><init>(Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;ILpantanal/app/bean/CardViewInfo;Ljava/lang/String;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_32

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->$callbackId:Ljava/lang/String;

    const-string v1, "observeWithCallback"

    invoke-static {p1, v1}, Lpantanal/app/manager/ServiceManagerProxyKt;->createCallbackKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget v4, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->$entranceType:I

    iget-object v6, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v7, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->$componentName:Ljava/lang/String;

    iput v2, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithCallbackId$2;->label:I

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lpantanal/app/manager/ServiceManagerProxy;->access$unObserveWithObserverKey(Lpantanal/app/manager/ServiceManagerProxy;ILjava/lang/String;Lpantanal/app/bean/CardViewInfo;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_32

    return-object v0

    :cond_32
    :goto_32
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
