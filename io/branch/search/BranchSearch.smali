.class public abstract Lio/branch/search/BranchSearch;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static maxEventTrackingQueueSize:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableAnalytics(Z)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static enableDebugLogs(Z)V
    .registers 1

    return-void
.end method

.method public static getInstance()Lio/branch/search/BranchSearch;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lio/branch/search/BranchSearch;
    .registers 2
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal initialization. Clients must set the tracking status via branchConfig.trackingStatus(enum) prior to initializing the SDK withsaid BranchConfiguration instance i.e. BranchSearch.init(context, branchConfig)."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init(Landroid/content/Context;Lio/branch/search/BranchConfiguration;)Lio/branch/search/BranchSearch;
    .registers 2
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lio/branch/search/BranchConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/search/i;
        }
    .end annotation

    invoke-static {p0, p1}, Lio/branch/search/m;->a(Landroid/content/Context;Lio/branch/search/BranchConfiguration;)Lio/branch/search/m;

    move-result-object p0

    return-object p0
.end method

.method public static isAnalyticsEnabled()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isServiceEnabled(Landroid/content/Context;Lio/branch/search/IBranchServiceEnabledEvents;)V
    .registers 2
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lio/branch/search/IBranchServiceEnabledEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lio/branch/search/m;->isServiceEnabled(Landroid/content/Context;Lio/branch/search/IBranchServiceEnabledEvents;)V

    return-void
.end method

.method public static isServiceEnabled(Ljava/lang/String;Lio/branch/search/IBranchServiceEnabledEvents;)V
    .registers 2
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lio/branch/search/IBranchServiceEnabledEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lio/branch/search/m;->isServiceEnabled(Ljava/lang/String;Lio/branch/search/IBranchServiceEnabledEvents;)V

    return-void
.end method

.method public static optInToTracking()V
    .registers 0

    invoke-static {}, Lio/branch/search/m;->optInToTracking()V

    return-void
.end method

.method public static optOutOfTracking()V
    .registers 0

    invoke-static {}, Lio/branch/search/m;->optOutOfTracking()V

    return-void
.end method

.method public static trackEvent(Lio/branch/search/AnalyticsEvent;)Z
    .registers 1
    .param p0  # Lio/branch/search/AnalyticsEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lio/branch/search/m;->trackEvent(Lio/branch/search/AnalyticsEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract addOnRawSQLUpdateCallback(Le4/a;)V
    .param p1  # Le4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract appStoreSearch(Lio/branch/search/BranchAppStoreRequest;Lf4/c;)V
    .param p1  # Lio/branch/search/BranchAppStoreRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lf4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract autoSuggest(Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;)Z
    .param p1  # Lio/branch/search/BranchAutoSuggestRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchAutoSuggestEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public autoSuggest(Lio/branch/search/BranchSearchRequest;Ljava/lang/Object;)Z
    .registers 3
    .param p1  # Lio/branch/search/BranchSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public clearLocalAppDrawableCache()V
    .registers 1

    invoke-static {}, Lio/branch/search/h5;->b()V

    return-void
.end method

.method public abstract compositeSearch(Lio/branch/search/BranchCompositeSearchRequest;Lf4/c;)V
    .param p1  # Lio/branch/search/BranchCompositeSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lf4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract compositeSearch(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;)V
    .param p1  # Lio/branch/search/BranchCompositeSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchExclusiveCompositeSearchEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract compositeSearch(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V
    .param p1  # Lio/branch/search/BranchCompositeSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getTrackingStatus()Lio/branch/search/BranchConfiguration$BranchTrackingStatus;
.end method

.method public abstract localQueryHint(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V
    .param p1  # Lio/branch/search/BranchQueryHintRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchLocalQueryHintEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract localSearch(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/IBranchLocalSearchEvents;)V
    .param p1  # Lio/branch/search/BranchLocalSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchLocalSearchEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract localZeroState(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchZeroStateEvents;)V
    .param p1  # Lio/branch/search/BranchZeroStateRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchZeroStateEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract notifyAppDataOverrideChanges()V
.end method

.method public abstract optOutOfTracking(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract query(Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchSearchEvents;)Z
    .param p1  # Lio/branch/search/BranchSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchSearchEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract queryHint(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchQueryHintEvents;)Z
    .param p1  # Lio/branch/search/BranchQueryHintRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchQueryHintEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract queryHint(Lio/branch/search/IBranchQueryHintEvents;)Z
    .param p1  # Lio/branch/search/IBranchQueryHintEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public queryHint(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public abstract remoteZeroState(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchRemoteZeroStateEvents;)Z
    .param p1  # Lio/branch/search/BranchZeroStateRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchRemoteZeroStateEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setLocation(DD)V
.end method

.method public abstract trackAnalyticsEvent(Lio/branch/search/AnalyticsEvent;)Ljava/lang/Boolean;
.end method

.method public abstract trackClick(Lio/branch/search/BranchAutoSuggestion;)V
.end method

.method public abstract trackClick(Lio/branch/search/BranchQueryHint;)V
.end method

.method public abstract trackImpressions(Landroid/view/View;Lio/branch/search/AnalyticsEntity;)V
.end method

.method public abstract trackImpressions(Landroid/view/View;Lio/branch/search/ui/BranchEntity;)V
.end method

.method public abstract zeroState(Lio/branch/search/BranchZeroStateRequest;Lf4/e;)V
    .param p1  # Lio/branch/search/BranchZeroStateRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lf4/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
