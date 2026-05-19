.class public interface abstract Lpantanal/decision/IServiceDecision;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/decision/IServiceDecision$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract disableSubDomain(Ljava/lang/String;)Z
.end method

.method public abstract getCacheMultiInstanceRecommendList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCacheRecommendList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurMultiInstanceRecommendList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentRecommendList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDecisionAllData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryRecommendSceneList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lpantanal/decision/PantaSceneInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryServiceInfo(Ljava/lang/String;)Lpantanal/decision/SeedlingServiceInfo;
.end method

.method public abstract registerDecisionListCallback(Lpantanal/decision/DecisionObserver;I)V
.end method

.method public abstract registerDecisionSceneListCallback(ILpantanal/decision/PantaSceneListObserver;)V
.end method

.method public abstract registerMultiInstanceDecisionListCallBack(Lpantanal/decision/DecisionObserver;I)V
.end method

.method public abstract reportStatistics(Lpantanal/decision/StatisticsBean;)V
.end method

.method public abstract reportStatisticsList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpantanal/decision/StatisticsBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterAllSceneListCallback(I)V
.end method

.method public abstract unregisterDecisionListCallback(Lpantanal/decision/DecisionObserver;I)V
.end method

.method public abstract unregisterDecisionSceneListCallback(ILpantanal/decision/PantaSceneListObserver;)V
.end method

.method public abstract unregisterMultiInstanceListCallback(Lpantanal/decision/DecisionObserver;I)V
.end method
