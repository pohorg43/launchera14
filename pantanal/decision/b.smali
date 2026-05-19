.class public final synthetic Lpantanal/decision/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pantanal/server/content/recommendlist/ListObserver;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpantanal/decision/DecisionDao;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ILpantanal/decision/DecisionDao;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpantanal/decision/b;->a:I

    iput-object p2, p0, Lpantanal/decision/b;->b:Lpantanal/decision/DecisionDao;

    iput-object p3, p0, Lpantanal/decision/b;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onListChanged(Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 5

    iget v0, p0, Lpantanal/decision/b;->a:I

    iget-object v1, p0, Lpantanal/decision/b;->b:Lpantanal/decision/DecisionDao;

    iget-object p0, p0, Lpantanal/decision/b;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, p0, p1, p2}, Lpantanal/decision/DecisionDao;->a(ILpantanal/decision/DecisionDao;Lkotlin/jvm/functions/Function1;Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V

    return-void
.end method
