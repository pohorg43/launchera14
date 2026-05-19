.class public interface abstract Lio/branch/search/IBranchLocalSearchEvents;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onBranchLocalSearchError(Lio/branch/search/BranchLocalError;)V
    .param p1  # Lio/branch/search/BranchLocalError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V
    .param p1  # Lio/branch/search/BranchLocalSearchResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
