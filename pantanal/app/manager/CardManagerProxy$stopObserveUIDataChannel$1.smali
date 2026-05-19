.class final Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/CardManagerProxy;->stopObserveUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;)V
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
    c = "pantanal.app.manager.CardManagerProxy$stopObserveUIDataChannel$1"
    f = "CardManagerProxy.kt"
    l = {
        0xad
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $callbackId:Ljava/lang/String;

.field public final synthetic $cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field public final synthetic $uiDataCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lpantanal/app/nano/UIDataProto;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public label:I

.field public final synthetic this$0:Lpantanal/app/manager/CardManagerProxy;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lpantanal/app/manager/CardManagerProxy;Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lpantanal/app/nano/UIDataProto;",
            "Lh4/z;",
            ">;",
            "Lpantanal/app/manager/CardManagerProxy;",
            "Ljava/lang/String;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Ll4/d<",
            "-",
            "Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    iput-object p3, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->$callbackId:Ljava/lang/String;

    iput-object p4, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 9
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

    new-instance p1, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;

    iget-object v1, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    iget-object v3, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->$callbackId:Ljava/lang/String;

    iget-object v4, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;-><init>(Lkotlin/jvm/functions/Function1;Lpantanal/app/manager/CardManagerProxy;Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_2f

    iget-object v1, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    iget-object v3, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->$callbackId:Ljava/lang/String;

    iget-object v4, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v1}, Lpantanal/app/manager/CardManagerProxy;->access$getServiceManagerProxy$p(Lpantanal/app/manager/CardManagerProxy;)Lpantanal/app/manager/ServiceManagerProxy;

    move-result-object v1

    iput v2, p0, Lpantanal/app/manager/CardManagerProxy$stopObserveUIDataChannel$1;->label:I

    invoke-virtual {v1, v3, v4, p1, p0}, Lpantanal/app/manager/ServiceManagerProxy;->stopObserveWithCallbackId(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function1;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2f

    return-object v0

    :cond_2f
    :goto_2f
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
