.class final Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/content/card/CardConfigProxy;->getAndObserveData()V
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
    c = "pantanal.content.card.CardConfigProxy$getAndObserveData$1"
    f = "CardConfigProxy.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lpantanal/content/card/CardConfigProxy;


# direct methods
.method public constructor <init>(Lpantanal/content/card/CardConfigProxy;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/content/card/CardConfigProxy;",
            "Ll4/d<",
            "-",
            "Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 3
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

    new-instance p1, Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;

    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    invoke-direct {p1, p0, p2}, Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;-><init>(Lpantanal/content/card/CardConfigProxy;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;->label:I

    if-nez v0, :cond_72

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy$getAndObserveData$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    :try_start_b
    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "CardConfigProxy"

    const-string v2, "getAndObserveData Try get and observe data."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p1, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {p1}, Lz8/f$a;->a()Lz8/f;

    move-result-object p1

    invoke-virtual {p0}, Lpantanal/content/card/CardConfigProxy;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v0

    invoke-virtual {v0}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v0

    invoke-virtual {p1, v0}, Lz8/f;->a(I)Lz8/b;

    move-result-object p1

    iget-object v0, p1, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_41

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lz8/b;->k(I)Lz8/b;

    invoke-virtual {p1}, Lz8/a;->i()V

    :cond_41
    invoke-static {p0}, Lpantanal/content/card/CardConfigProxy;->access$observeCardConfigChanged(Lpantanal/content/card/CardConfigProxy;)V

    invoke-static {p0}, Lpantanal/content/card/CardConfigProxy;->access$requestToPublishAllConfig(Lpantanal/content/card/CardConfigProxy;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_4a

    goto :goto_4f

    :catchall_4a
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_4f
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6f

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getAndObserveData error:"

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardConfigProxy"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_6f
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_72
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
