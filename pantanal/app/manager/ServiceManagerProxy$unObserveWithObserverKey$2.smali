.class final Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy;->unObserveWithObserverKey(ILjava/lang/String;Lpantanal/app/bean/CardViewInfo;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
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
    c = "pantanal.app.manager.ServiceManagerProxy$unObserveWithObserverKey$2"
    f = "ServiceManagerProxy.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field public final synthetic $componentName:Ljava/lang/String;

.field public final synthetic $entranceType:I

.field public final synthetic $observerKey:Ljava/lang/String;

.field public label:I

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Lpantanal/app/bean/CardViewInfo;Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;ILl4/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/bean/CardViewInfo;",
            "Ljava/lang/String;",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "Ljava/lang/String;",
            "I",
            "Ll4/d<",
            "-",
            "Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$componentName:Ljava/lang/String;

    iput-object p3, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p4, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$observerKey:Ljava/lang/String;

    iput p5, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$entranceType:I

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

    new-instance p1, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;

    iget-object v1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v2, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$componentName:Ljava/lang/String;

    iget-object v3, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v4, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$observerKey:Ljava/lang/String;

    iget v5, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$entranceType:I

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;-><init>(Lpantanal/app/bean/CardViewInfo;Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;ILl4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->label:I

    if-nez v0, :cond_2d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;

    iget-object v1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v2, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$observerKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;-><init>(Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;)V

    const-string v1, "7007"

    invoke-static {v1, p1, v0}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    iget-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$componentName:Ljava/lang/String;

    if-eqz p1, :cond_2b

    iget-object v0, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$observerKey:Ljava/lang/String;

    iget v1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$entranceType:I

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    sget-object v2, Lpantanal/app/SuperChannelManager;->INSTANCE:Lpantanal/app/SuperChannelManager;

    invoke-virtual {v2, p1, v0, v1, p0}, Lpantanal/app/SuperChannelManager;->unObserveBySuperChannel(Ljava/lang/String;Ljava/lang/String;ILpantanal/app/bean/CardViewInfo;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return-object p0

    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
