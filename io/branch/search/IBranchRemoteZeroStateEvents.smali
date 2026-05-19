.class public interface abstract Lio/branch/search/IBranchRemoteZeroStateEvents;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onBranchZeroStateError(Lio/branch/search/BranchSearchError;)V
    .param p1  # Lio/branch/search/BranchSearchError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onBranchZeroStateResult(Lio/branch/search/BranchRemoteZeroStateResult;)V
    .param p1  # Lio/branch/search/BranchRemoteZeroStateResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
