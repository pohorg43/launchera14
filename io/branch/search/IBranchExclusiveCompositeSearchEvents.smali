.class public interface abstract Lio/branch/search/IBranchExclusiveCompositeSearchEvents;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onBranchLocalSearchComplete(Lio/branch/search/BranchLocalSearchResult;)V
    .param p1  # Lio/branch/search/BranchLocalSearchResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onBranchRemoteSearchComplete(Lio/branch/search/BranchSearchResult;Lio/branch/search/BranchSearchError;)V
    .param p1  # Lio/branch/search/BranchSearchResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/BranchSearchError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
