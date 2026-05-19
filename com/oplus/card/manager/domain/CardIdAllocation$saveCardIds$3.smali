.class final Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/manager/domain/CardIdAllocation;->saveCardIds(Ljava/util/List;)V
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
    c = "com.oplus.card.manager.domain.CardIdAllocation$saveCardIds$3"
    f = "CardIdAllocation.kt"
    l = {
        0x80
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $cardIdInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public label:I

.field public final synthetic this$0:Lcom/oplus/card/manager/domain/CardIdAllocation;


# direct methods
.method public constructor <init>(Lcom/oplus/card/manager/domain/CardIdAllocation;Ljava/util/List;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/manager/domain/CardIdAllocation;",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;->this$0:Lcom/oplus/card/manager/domain/CardIdAllocation;

    iput-object p2, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;->$cardIdInfos:Ljava/util/List;

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

    new-instance p1, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;

    iget-object v0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;->this$0:Lcom/oplus/card/manager/domain/CardIdAllocation;

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;->$cardIdInfos:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;-><init>(Lcom/oplus/card/manager/domain/CardIdAllocation;Ljava/util/List;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_29

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;->this$0:Lcom/oplus/card/manager/domain/CardIdAllocation;

    invoke-static {p1}, Lcom/oplus/card/manager/domain/CardIdAllocation;->access$getCardIdRepository(Lcom/oplus/card/manager/domain/CardIdAllocation;)Lcom/oplus/card/manager/domain/ICardIdRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;->$cardIdInfos:Ljava/util/List;

    iput v2, p0, Lcom/oplus/card/manager/domain/CardIdAllocation$saveCardIds$3;->label:I

    invoke-interface {p1, v1, p0}, Lcom/oplus/card/manager/domain/ICardIdRepository;->saveCardIds(Ljava/util/List;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_29

    return-object v0

    :cond_29
    :goto_29
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
