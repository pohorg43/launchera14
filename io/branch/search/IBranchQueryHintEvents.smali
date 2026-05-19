.class public interface abstract Lio/branch/search/IBranchQueryHintEvents;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onBranchQueryHintError(Lio/branch/search/BranchSearchError;)V
    .param p1  # Lio/branch/search/BranchSearchError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onBranchQueryHintResult(Lio/branch/search/BranchQueryHintResult;)V
    .param p1  # Lio/branch/search/BranchQueryHintResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
