.class public interface abstract Lk/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract a(Lk/f;ILjava/util/List;Lk/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/f;",
            "I",
            "Ljava/util/List<",
            "Lk/f;",
            ">;",
            "Lk/f;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;Ls/c;)V
    .param p2  # Ls/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ls/c<",
            "TT;>;)V"
        }
    .end annotation
.end method
