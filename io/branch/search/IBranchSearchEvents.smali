.class public interface abstract Lio/branch/search/IBranchSearchEvents;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onBranchSearchError(Lio/branch/search/BranchSearchError;)V
    .param p1  # Lio/branch/search/BranchSearchError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onBranchSearchResult(Lio/branch/search/BranchSearchResult;)V
    .param p1  # Lio/branch/search/BranchSearchResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
