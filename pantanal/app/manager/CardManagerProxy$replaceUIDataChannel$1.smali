.class final Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/CardManagerProxy;->replaceUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;)V
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
        "SMAP\nCardManagerProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardManagerProxy.kt\npantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1\n+ 2 ServiceManagerProxy.kt\npantanal/app/manager/ServiceManagerProxy\n*L\n1#1,261:1\n306#2:262\n340#2:263\n*S KotlinDebug\n*F\n+ 1 CardManagerProxy.kt\npantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1\n*L\n148#1:262\n148#1:263\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "pantanal.app.manager.CardManagerProxy$replaceUIDataChannel$1"
    f = "CardManagerProxy.kt"
    l = {
        0x106
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $callbackId:Ljava/lang/String;

.field public final synthetic $cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field public final synthetic $params:Lorg/json/JSONObject;

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
.method public constructor <init>(Lpantanal/app/manager/CardManagerProxy;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V
    .registers 7
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
            "Ll4/d<",
            "-",
            "Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    iput-object p2, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->$callbackId:Ljava/lang/String;

    iput-object p3, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->$params:Lorg/json/JSONObject;

    iput-object p5, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

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

    new-instance p1, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;

    iget-object v1, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    iget-object v2, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->$callbackId:Ljava/lang/String;

    iget-object v3, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->$params:Lorg/json/JSONObject;

    iget-object v5, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;-><init>(Lpantanal/app/manager/CardManagerProxy;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;Lpantanal/app/bean/CardViewInfo;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_3a

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    invoke-static {p1}, Lpantanal/app/manager/CardManagerProxy;->access$getServiceManagerProxy$p(Lpantanal/app/manager/CardManagerProxy;)Lpantanal/app/manager/ServiceManagerProxy;

    move-result-object v5

    iget-object v4, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->$callbackId:Ljava/lang/String;

    iget-object v6, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->$uiDataCallback:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->$params:Lorg/json/JSONObject;

    iget-object v7, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->cardServer()Lm7/f0;

    move-result-object p1

    new-instance v1, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1$invokeSuspend$$inlined$replaceObserveWithCallbackId$1;

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1$invokeSuspend$$inlined$replaceObserveWithCallbackId$1;-><init>(Ljava/lang/String;Lpantanal/app/manager/ServiceManagerProxy;Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Ll4/d;)V

    iput v2, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$1;->label:I

    invoke-static {p1, v1, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3a

    return-object v0

    :cond_3a
    :goto_3a
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
