.class public Lx6/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx6/k;


# instance fields
.field public final b:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;I)V
    .registers 3

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_a

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    const-string p2, "lock"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx6/c;->b:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public lock()V
    .registers 1

    iget-object p0, p0, Lx6/c;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->lock()V

    return-void
.end method

.method public unlock()V
    .registers 1

    iget-object p0, p0, Lx6/c;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
