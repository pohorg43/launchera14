.class public final Lz0/a$b;
.super Ljava/lang/ref/WeakReference;
.source ""


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lz0/q<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final a:Lw0/c;

.field public final b:Z

.field public c:Lz0/w;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz0/w<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw0/c;Lz0/q;Ljava/lang/ref/ReferenceQueue;Z)V
    .registers 5
    .param p1  # Lw0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lz0/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/ref/ReferenceQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw0/c;",
            "Lz0/q<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lz0/q<",
            "*>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lz0/a$b;->a:Lw0/c;

    iget-boolean p1, p2, Lz0/q;->a:Z

    if-eqz p1, :cond_16

    if-eqz p4, :cond_16

    iget-object p1, p2, Lz0/q;->c:Lz0/w;

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-object p1, p0, Lz0/a$b;->c:Lz0/w;

    iget-boolean p1, p2, Lz0/q;->a:Z

    iput-boolean p1, p0, Lz0/a$b;->b:Z

    return-void
.end method
