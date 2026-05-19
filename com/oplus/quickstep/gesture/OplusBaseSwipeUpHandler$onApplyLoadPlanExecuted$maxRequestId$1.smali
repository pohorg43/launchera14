.class final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onApplyLoadPlanExecuted$maxRequestId$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onApplyLoadPlanExecuted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onApplyLoadPlanExecuted$maxRequestId$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onApplyLoadPlanExecuted$maxRequestId$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onApplyLoadPlanExecuted$maxRequestId$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onApplyLoadPlanExecuted$maxRequestId$1;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onApplyLoadPlanExecuted$maxRequestId$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/Map$Entry;)Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$onApplyLoadPlanExecuted$maxRequestId$1;->invoke(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
