.class public final Lpantanal/decision/IServiceDecision$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/decision/IServiceDecision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic getCurMultiInstanceRecommendList$default(Lpantanal/decision/IServiceDecision;IILjava/lang/Object;)Ljava/util/List;
    .registers 4

    if-nez p3, :cond_c

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x3

    :cond_7
    invoke-interface {p0, p1}, Lpantanal/decision/IServiceDecision;->getCurMultiInstanceRecommendList(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getCurMultiInstanceRecommendList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getCurrentRecommendList$default(Lpantanal/decision/IServiceDecision;IILjava/lang/Object;)Ljava/util/List;
    .registers 4

    if-nez p3, :cond_c

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x3

    :cond_7
    invoke-interface {p0, p1}, Lpantanal/decision/IServiceDecision;->getCurrentRecommendList(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getCurrentRecommendList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic queryRecommendSceneList$default(Lpantanal/decision/IServiceDecision;IILjava/lang/Object;)Ljava/util/List;
    .registers 4

    if-nez p3, :cond_c

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x3

    :cond_7
    invoke-interface {p0, p1}, Lpantanal/decision/IServiceDecision;->queryRecommendSceneList(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: queryRecommendSceneList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic registerDecisionListCallback$default(Lpantanal/decision/IServiceDecision;Lpantanal/decision/DecisionObserver;IILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x3

    :cond_7
    invoke-interface {p0, p1, p2}, Lpantanal/decision/IServiceDecision;->registerDecisionListCallback(Lpantanal/decision/DecisionObserver;I)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: registerDecisionListCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic registerDecisionSceneListCallback$default(Lpantanal/decision/IServiceDecision;ILpantanal/decision/PantaSceneListObserver;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_7

    const/4 p1, 0x3

    :cond_7
    invoke-interface {p0, p1, p2}, Lpantanal/decision/IServiceDecision;->registerDecisionSceneListCallback(ILpantanal/decision/PantaSceneListObserver;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: registerDecisionSceneListCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic registerMultiInstanceDecisionListCallBack$default(Lpantanal/decision/IServiceDecision;Lpantanal/decision/DecisionObserver;IILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x3

    :cond_7
    invoke-interface {p0, p1, p2}, Lpantanal/decision/IServiceDecision;->registerMultiInstanceDecisionListCallBack(Lpantanal/decision/DecisionObserver;I)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: registerMultiInstanceDecisionListCallBack"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic unregisterAllSceneListCallback$default(Lpantanal/decision/IServiceDecision;IILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x3

    :cond_7
    invoke-interface {p0, p1}, Lpantanal/decision/IServiceDecision;->unregisterAllSceneListCallback(I)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: unregisterAllSceneListCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic unregisterDecisionListCallback$default(Lpantanal/decision/IServiceDecision;Lpantanal/decision/DecisionObserver;IILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x3

    :cond_7
    invoke-interface {p0, p1, p2}, Lpantanal/decision/IServiceDecision;->unregisterDecisionListCallback(Lpantanal/decision/DecisionObserver;I)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: unregisterDecisionListCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic unregisterDecisionSceneListCallback$default(Lpantanal/decision/IServiceDecision;ILpantanal/decision/PantaSceneListObserver;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_7

    const/4 p1, 0x3

    :cond_7
    invoke-interface {p0, p1, p2}, Lpantanal/decision/IServiceDecision;->unregisterDecisionSceneListCallback(ILpantanal/decision/PantaSceneListObserver;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: unregisterDecisionSceneListCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic unregisterMultiInstanceListCallback$default(Lpantanal/decision/IServiceDecision;Lpantanal/decision/DecisionObserver;IILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x3

    :cond_7
    invoke-interface {p0, p1, p2}, Lpantanal/decision/IServiceDecision;->unregisterMultiInstanceListCallback(Lpantanal/decision/DecisionObserver;I)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: unregisterMultiInstanceListCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
