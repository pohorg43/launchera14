.class public interface abstract Lio/branch/search/IBranchAutoSuggestEvents;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onBranchAutoSuggestError(Lio/branch/search/BranchSearchError;)V
    .param p1  # Lio/branch/search/BranchSearchError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onBranchAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V
    .param p1  # Lio/branch/search/BranchAutoSuggestResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
