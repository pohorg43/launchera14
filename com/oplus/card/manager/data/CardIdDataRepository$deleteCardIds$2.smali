.class final Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/manager/data/CardIdDataRepository;->deleteCardIds(Ljava/util/List;Ll4/d;)Ljava/lang/Object;
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
    c = "com.oplus.card.manager.data.CardIdDataRepository$deleteCardIds$2"
    f = "CardIdDataRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public label:I

.field public final synthetic this$0:Lcom/oplus/card/manager/data/CardIdDataRepository;


# direct methods
.method public constructor <init>(Lcom/oplus/card/manager/data/CardIdDataRepository;Ljava/util/List;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/manager/data/CardIdDataRepository;",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;->this$0:Lcom/oplus/card/manager/data/CardIdDataRepository;

    iput-object p2, p0, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;->$list:Ljava/util/List;

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

    new-instance p1, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;

    iget-object v0, p0, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;->this$0:Lcom/oplus/card/manager/data/CardIdDataRepository;

    iget-object p0, p0, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;->$list:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;-><init>(Lcom/oplus/card/manager/data/CardIdDataRepository;Ljava/util/List;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;->label:I

    if-nez v0, :cond_17

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;->this$0:Lcom/oplus/card/manager/data/CardIdDataRepository;

    invoke-static {p1}, Lcom/oplus/card/manager/data/CardIdDataRepository;->access$getCardIdDao(Lcom/oplus/card/manager/data/CardIdDataRepository;)Lcom/oplus/card/manager/data/CardIdDao;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;->$list:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/oplus/card/manager/data/CardIdDao;->deleteCardIds(Ljava/util/List;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
