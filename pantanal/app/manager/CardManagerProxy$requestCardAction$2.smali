.class final Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/CardManagerProxy;->requestCardAction(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;)V
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
    c = "pantanal.app.manager.CardManagerProxy$requestCardAction$2"
    f = "CardManagerProxy.kt"
    l = {
        0xe7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $action:Lpantanal/app/manager/model/CardAction;

.field public final synthetic $cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field public label:I

.field public final synthetic this$0:Lpantanal/app/manager/CardManagerProxy;


# direct methods
.method public constructor <init>(Lpantanal/app/manager/CardManagerProxy;Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/manager/CardManagerProxy;",
            "Lpantanal/app/manager/model/CardAction;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Ll4/d<",
            "-",
            "Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->this$0:Lpantanal/app/manager/CardManagerProxy;

    iput-object p2, p0, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->$action:Lpantanal/app/manager/model/CardAction;

    iput-object p3, p0, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

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

    new-instance p1, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;

    iget-object v0, p0, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->this$0:Lpantanal/app/manager/CardManagerProxy;

    iget-object v1, p0, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->$action:Lpantanal/app/manager/model/CardAction;

    iget-object p0, p0, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-direct {p1, v0, v1, p0, p2}, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;-><init>(Lpantanal/app/manager/CardManagerProxy;Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->this$0:Lpantanal/app/manager/CardManagerProxy;

    invoke-static {p1}, Lpantanal/app/manager/CardManagerProxy;->access$getServiceManagerProxy$p(Lpantanal/app/manager/CardManagerProxy;)Lpantanal/app/manager/ServiceManagerProxy;

    move-result-object p1

    iget-object v1, p0, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->$action:Lpantanal/app/manager/model/CardAction;

    iget-object v3, p0, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput v2, p0, Lpantanal/app/manager/CardManagerProxy$requestCardAction$2;->label:I

    invoke-virtual {p1, v1, v3, p0}, Lpantanal/app/manager/ServiceManagerProxy;->sendMessageToCardServer(Lpantanal/app/manager/model/CardAction;Lpantanal/app/bean/CardViewInfo;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2b

    return-object v0

    :cond_2b
    :goto_2b
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
