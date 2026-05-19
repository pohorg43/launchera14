.class final Lpantanal/decision/MultiInstanceDecisionAdapter$notifyObserversByEntranceType$newListToEntrance$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/decision/MultiInstanceDecisionAdapter;->notifyObserversByEntranceType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lpantanal/decision/ServiceInfo;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMultiInstanceDecisionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiInstanceDecisionAdapter.kt\npantanal/decision/MultiInstanceDecisionAdapter$notifyObserversByEntranceType$newListToEntrance$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,315:1\n1549#2:316\n1620#2,3:317\n*S KotlinDebug\n*F\n+ 1 MultiInstanceDecisionAdapter.kt\npantanal/decision/MultiInstanceDecisionAdapter$notifyObserversByEntranceType$newListToEntrance$2\n*L\n173#1:316\n173#1:317,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $originStaticInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lpantanal/decision/MultiInstanceDecisionAdapter;


# direct methods
.method public constructor <init>(Ljava/util/List;Lpantanal/decision/MultiInstanceDecisionAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;",
            "Lpantanal/decision/MultiInstanceDecisionAdapter;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/decision/MultiInstanceDecisionAdapter$notifyObserversByEntranceType$newListToEntrance$2;->$originStaticInfoList:Ljava/util/List;

    iput-object p2, p0, Lpantanal/decision/MultiInstanceDecisionAdapter$notifyObserversByEntranceType$newListToEntrance$2;->this$0:Lpantanal/decision/MultiInstanceDecisionAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/decision/MultiInstanceDecisionAdapter$notifyObserversByEntranceType$newListToEntrance$2;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpantanal/decision/MultiInstanceDecisionAdapter$notifyObserversByEntranceType$newListToEntrance$2;->$originStaticInfoList:Ljava/util/List;

    iget-object p0, p0, Lpantanal/decision/MultiInstanceDecisionAdapter$notifyObserversByEntranceType$newListToEntrance$2;->this$0:Lpantanal/decision/MultiInstanceDecisionAdapter;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-static {p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->access$getEntranceType$p(Lpantanal/decision/MultiInstanceDecisionAdapter;)I

    move-result v3

    invoke-static {v2, v3}, Lpantanal/decision/DecisionCenter;->toDecisionServiceInfo(Lcom/pantanal/server/content/recommendlist/ServiceInfo;I)Lpantanal/decision/ServiceInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2b
    return-object v1
.end method
