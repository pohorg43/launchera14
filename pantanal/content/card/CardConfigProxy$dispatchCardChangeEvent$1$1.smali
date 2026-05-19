.class final Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/content/card/CardConfigProxy;->dispatchCardChangeEvent()V
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
    c = "pantanal.content.card.CardConfigProxy$dispatchCardChangeEvent$1$1"
    f = "CardConfigProxy.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $cb:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public label:I

.field public final synthetic this$0:Lpantanal/content/card/CardConfigProxy;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lpantanal/content/card/CardConfigProxy;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;",
            "Lpantanal/content/card/CardConfigProxy;",
            "Ll4/d<",
            "-",
            "Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
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

    new-instance p1, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;

    iget-object v0, p0, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    invoke-direct {p1, v0, p0, p2}, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lpantanal/content/card/CardConfigProxy;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->label:I

    if-nez v0, :cond_5a

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object p1, p0, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    invoke-virtual {v0}, Lpantanal/content/card/CardConfigProxy;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v0

    iget-object v2, p0, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    invoke-static {v2}, Lpantanal/content/card/CardConfigProxy;->access$getCardConfigDataList$p(Lpantanal/content/card/CardConfigProxy;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchCardChangeEvent,Call CardConfigChangeCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", config size:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardConfigProxy"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p1, p0, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lpantanal/content/card/CardConfigProxy$dispatchCardChangeEvent$1$1;->this$0:Lpantanal/content/card/CardConfigProxy;

    invoke-static {p0}, Lpantanal/content/card/CardConfigProxy;->access$getCardConfigDataList$p(Lpantanal/content/card/CardConfigProxy;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_5a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
