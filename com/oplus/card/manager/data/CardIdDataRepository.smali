.class public final Lcom/oplus/card/manager/data/CardIdDataRepository;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/manager/domain/ICardIdRepository;


# instance fields
.field private final cardIdDao$delegate:Lh4/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/card/manager/data/CardIdDataRepository$cardIdDao$2;->INSTANCE:Lcom/oplus/card/manager/data/CardIdDataRepository$cardIdDao$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/card/manager/data/CardIdDataRepository;->cardIdDao$delegate:Lh4/f;

    return-void
.end method

.method public static final synthetic access$getCardIdDao(Lcom/oplus/card/manager/data/CardIdDataRepository;)Lcom/oplus/card/manager/data/CardIdDao;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/card/manager/data/CardIdDataRepository;->getCardIdDao()Lcom/oplus/card/manager/data/CardIdDao;

    move-result-object p0

    return-object p0
.end method

.method private final getCardIdDao()Lcom/oplus/card/manager/data/CardIdDao;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/manager/data/CardIdDataRepository;->cardIdDao$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/manager/data/CardIdDao;

    return-object p0
.end method


# virtual methods
.method public deleteCardIds(Ljava/util/List;Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {v0}, Lcom/oplus/card/util/DispatchersUtil;->model()Lm7/f0;

    move-result-object v0

    new-instance v1, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/oplus/card/manager/data/CardIdDataRepository$deleteCardIds$2;-><init>(Lcom/oplus/card/manager/data/CardIdDataRepository;Ljava/util/List;Ll4/d;)V

    invoke-static {v0, v1, p2}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_15

    return-object p0

    :cond_15
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public loadAllCardId(Ll4/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {v0}, Lcom/oplus/card/util/DispatchersUtil;->model()Lm7/f0;

    move-result-object v0

    new-instance v1, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/card/manager/data/CardIdDataRepository$loadAllCardId$2;-><init>(Lcom/oplus/card/manager/data/CardIdDataRepository;Ll4/d;)V

    invoke-static {v0, v1, p1}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public saveCardIds(Ljava/util/List;Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/manager/domain/model/CardIdInfo;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    invoke-virtual {v0}, Lcom/oplus/card/util/DispatchersUtil;->model()Lm7/f0;

    move-result-object v0

    new-instance v1, Lcom/oplus/card/manager/data/CardIdDataRepository$saveCardIds$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/oplus/card/manager/data/CardIdDataRepository$saveCardIds$2;-><init>(Lcom/oplus/card/manager/data/CardIdDataRepository;Ljava/util/List;Ll4/d;)V

    invoke-static {v0, v1, p2}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_15

    return-object p0

    :cond_15
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
