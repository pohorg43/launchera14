.class final Lpantanal/decision/DecisionManager$multiInstanceDecisionAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/decision/DecisionManager;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lpantanal/decision/MultiInstanceDecisionAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/decision/DecisionManager;


# direct methods
.method public constructor <init>(Lpantanal/decision/DecisionManager;)V
    .registers 2

    iput-object p1, p0, Lpantanal/decision/DecisionManager$multiInstanceDecisionAdapter$2;->this$0:Lpantanal/decision/DecisionManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/decision/DecisionManager$multiInstanceDecisionAdapter$2;->invoke()Lpantanal/decision/MultiInstanceDecisionAdapter;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lpantanal/decision/MultiInstanceDecisionAdapter;
    .registers 2

    new-instance v0, Lpantanal/decision/MultiInstanceDecisionAdapter;

    iget-object p0, p0, Lpantanal/decision/DecisionManager$multiInstanceDecisionAdapter$2;->this$0:Lpantanal/decision/DecisionManager;

    invoke-static {p0}, Lpantanal/decision/DecisionManager;->access$getEntranceType$p(Lpantanal/decision/DecisionManager;)I

    move-result p0

    invoke-direct {v0, p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;-><init>(I)V

    return-object v0
.end method
