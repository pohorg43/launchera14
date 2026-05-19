.class public final synthetic Lpantanal/decision/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pantanal/server/content/recommendlist/ListObserver;


# instance fields
.field public final synthetic a:Lpantanal/decision/MultiInstanceDecisionAdapter;


# direct methods
.method public synthetic constructor <init>(Lpantanal/decision/MultiInstanceDecisionAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/decision/c;->a:Lpantanal/decision/MultiInstanceDecisionAdapter;

    return-void
.end method


# virtual methods
.method public final onListChanged(Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 3

    iget-object p0, p0, Lpantanal/decision/c;->a:Lpantanal/decision/MultiInstanceDecisionAdapter;

    invoke-static {p0, p1, p2}, Lpantanal/decision/MultiInstanceDecisionAdapter;->a(Lpantanal/decision/MultiInstanceDecisionAdapter;Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V

    return-void
.end method
