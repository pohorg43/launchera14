.class public abstract Lr7/q$a;
.super Lr7/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr7/b<",
        "Lr7/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lr7/q;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public c:Lr7/q;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr7/q;)V
    .registers 2

    invoke-direct {p0}, Lr7/b;-><init>()V

    iput-object p1, p0, Lr7/q$a;->b:Lr7/q;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lr7/q;

    if-nez p2, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_c

    iget-object v0, p0, Lr7/q$a;->b:Lr7/q;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Lr7/q$a;->c:Lr7/q;

    :goto_e
    if-eqz v0, :cond_24

    sget-object v1, Lr7/q;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    iget-object p1, p0, Lr7/q$a;->b:Lr7/q;

    iget-object p0, p0, Lr7/q$a;->c:Lr7/q;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lr7/q;->d(Lr7/q;)V

    :cond_24
    return-void
.end method
