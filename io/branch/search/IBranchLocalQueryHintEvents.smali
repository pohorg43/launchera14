.class public interface abstract Lio/branch/search/IBranchLocalQueryHintEvents;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onBranchQueryHintError(Lio/branch/search/BranchLocalError;)V
    .param p1  # Lio/branch/search/BranchLocalError;
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
