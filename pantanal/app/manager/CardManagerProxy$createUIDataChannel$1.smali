.class final Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/CardManagerProxy;->createUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;)V
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
    c = "pantanal.app.manager.CardManagerProxy$createUIDataChannel$1"
    f = "CardManagerProxy.kt"
    l = {
        0x62
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $callbackId:Ljava/lang/String;

.field public final synthetic $cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field public final synthetic $params:Lorg/json/JSONObject;

.field public final synthetic $proxy:Lpantanal/app/manager/ServiceManagerProxy;

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
.method public constructor <init>(Lpantanal/app/manager/CardManagerProxy;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ll4/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/manager/CardManagerProxy;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lpantanal/app/nano/UIDataProto;",
            "Lh4/z;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "Ll4/d<",
            "-",
            "Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    iput-object p2, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$callbackId:Ljava/lang/String;

    iput-object p3, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$params:Lorg/json/JSONObject;

    iput-object p5, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p6, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$proxy:Lpantanal/app/manager/ServiceManagerProxy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 11
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

    new-instance p1, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;

    iget-object v1, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    iget-object v2, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$callbackId:Ljava/lang/String;

    iget-object v3, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$params:Lorg/json/JSONObject;

    iget-object v5, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v6, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$proxy:Lpantanal/app/manager/ServiceManagerProxy;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;-><init>(Lpantanal/app/manager/CardManagerProxy;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_34

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    invoke-static {p1}, Lpantanal/app/manager/CardManagerProxy;->access$getServiceManagerProxy$p(Lpantanal/app/manager/CardManagerProxy;)Lpantanal/app/manager/ServiceManagerProxy;

    move-result-object v3

    iget-object v4, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$callbackId:Ljava/lang/String;

    const-class v5, Lpantanal/app/nano/UIDataProto;

    iget-object v6, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$params:Lorg/json/JSONObject;

    iget-object v8, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v9, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->$proxy:Lpantanal/app/manager/ServiceManagerProxy;

    iput v2, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$1;->label:I

    move-object v10, p0

    invoke-virtual/range {v3 .. v10}, Lpantanal/app/manager/ServiceManagerProxy;->observeWithCallbackId(Ljava/lang/String;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_34

    return-object v0

    :cond_34
    :goto_34
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
