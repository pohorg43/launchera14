.class public final synthetic Lpantanal/decision/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/content/ObserverWrapper;


# instance fields
.field public final synthetic a:Lpantanal/decision/DecisionObserver;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lpantanal/decision/DecisionObserver;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/decision/a;->a:Lpantanal/decision/DecisionObserver;

    iput p2, p0, Lpantanal/decision/a;->b:I

    return-void
.end method


# virtual methods
.method public final onListChanged(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lpantanal/decision/a;->a:Lpantanal/decision/DecisionObserver;

    iget p0, p0, Lpantanal/decision/a;->b:I

    invoke-static {v0, p0, p1}, Lpantanal/decision/DecisionCenter;->a(Lpantanal/decision/DecisionObserver;ILjava/util/List;)V

    return-void
.end method
