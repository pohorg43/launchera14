.class public final Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy;->observeByByteWithObserverKey(Ljava/lang/String;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Ll4/d;)Ljava/lang/Object;
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
        "SMAP\nServiceManagerProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceManagerProxy.kt\npantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2\n*L\n1#1,452:1\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "pantanal.app.manager.ServiceManagerProxy$observeByByteWithObserverKey$2"
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
            "[B",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $observerKey:Ljava/lang/String;

.field public final synthetic $params:[B

.field public label:I

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Ll4/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/bean/CardViewInfo;",
            "Lpantanal/app/manager/ServiceManagerProxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lh4/z;",
            ">;",
            "Ll4/d<",
            "-",
            "Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p3, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$observerKey:Ljava/lang/String;

    iput-object p4, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$callbackId:Ljava/lang/String;

    iput-object p5, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$params:[B

    iput-object p6, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$cb:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;

    iget-object v1, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v2, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v3, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$observerKey:Ljava/lang/String;

    iget-object v4, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$callbackId:Ljava/lang/String;

    iget-object v5, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$params:[B

    iget-object v6, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$cb:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;Ljava/lang/String;[BLkotlin/jvm/functions/Function1;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->label:I

    if-nez v0, :cond_25

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    new-instance p1, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;

    iget-object v2, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v3, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$observerKey:Ljava/lang/String;

    iget-object v4, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$callbackId:Ljava/lang/String;

    iget-object v5, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object v6, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$params:[B

    iget-object v7, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$cb:Lkotlin/jvm/functions/Function1;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2$block$1;-><init>(Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;[BLkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy$observeByByteWithObserverKey$2;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    const-string v0, "1101"

    invoke-static {v0, p0, p1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
