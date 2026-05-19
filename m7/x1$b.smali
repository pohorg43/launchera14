.class public final Lm7/x1$b;
.super Lm7/w1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final e:Lm7/x1;

.field public final f:Lm7/x1$c;

.field public final g:Lm7/t;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lm7/x1;Lm7/x1$c;Lm7/t;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lm7/w1;-><init>()V

    iput-object p1, p0, Lm7/x1$b;->e:Lm7/x1;

    iput-object p2, p0, Lm7/x1$b;->f:Lm7/x1$c;

    iput-object p3, p0, Lm7/x1$b;->g:Lm7/t;

    iput-object p4, p0, Lm7/x1$b;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Throwable;)V
    .registers 5

    iget-object p1, p0, Lm7/x1$b;->e:Lm7/x1;

    iget-object v0, p0, Lm7/x1$b;->f:Lm7/x1$c;

    iget-object v1, p0, Lm7/x1$b;->g:Lm7/t;

    iget-object p0, p0, Lm7/x1$b;->h:Ljava/lang/Object;

    sget-object v2, Lm7/x1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v1}, Lm7/x1;->Z(Lr7/q;)Lm7/t;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p1, v0, v1, p0}, Lm7/x1;->j0(Lm7/x1$c;Lm7/t;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1e

    :cond_17
    invoke-virtual {p1, v0, p0}, Lm7/x1;->M(Lm7/x1$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lm7/x1;->E(Ljava/lang/Object;)V

    :goto_1e
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lm7/x1$b;->i(Ljava/lang/Throwable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
