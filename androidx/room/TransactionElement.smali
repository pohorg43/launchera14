.class public final Landroidx/room/TransactionElement;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll4/f$a;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/TransactionElement$Key;
    }
.end annotation


# static fields
.field public static final Key:Landroidx/room/TransactionElement$Key;


# instance fields
.field private final referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final transactionDispatcher:Ll4/e;

.field private final transactionThreadControlJob:Lm7/s1;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/room/TransactionElement$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/TransactionElement$Key;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    return-void
.end method

.method public constructor <init>(Lm7/s1;Ll4/e;)V
    .registers 4

    const-string/jumbo v0, "transactionThreadControlJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transactionDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/TransactionElement;->transactionThreadControlJob:Lm7/s1;

    iput-object p2, p0, Landroidx/room/TransactionElement;->transactionDispatcher:Ll4/e;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroidx/room/TransactionElement;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final acquire()V
    .registers 1

    iget-object p0, p0, Landroidx/room/TransactionElement;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Ll4/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ll4/f$a$a;->a(Ll4/f$a;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Ll4/f$b;)Ll4/f$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ll4/f$a;",
            ">(",
            "Ll4/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Ll4/f$a$a;->b(Ll4/f$a;Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ll4/f$b;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll4/f$b<",
            "Landroidx/room/TransactionElement;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    return-object p0
.end method

.method public final getTransactionDispatcher$room_ktx_release()Ll4/e;
    .registers 1

    iget-object p0, p0, Landroidx/room/TransactionElement;->transactionDispatcher:Ll4/e;

    return-object p0
.end method

.method public minusKey(Ll4/f$b;)Ll4/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/f$b<",
            "*>;)",
            "Ll4/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Ll4/f$a$a;->c(Ll4/f$a;Ll4/f$b;)Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public plus(Ll4/f;)Ll4/f;
    .registers 2

    invoke-static {p0, p1}, Ll4/f$a$a;->d(Ll4/f$a;Ll4/f;)Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public final release()V
    .registers 3

    iget-object v0, p0, Landroidx/room/TransactionElement;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_12

    if-nez v0, :cond_11

    iget-object p0, p0, Landroidx/room/TransactionElement;->transactionThreadControlJob:Lm7/s1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lm7/s1$a;->a(Lm7/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_11
    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Transaction was never started or was already released."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
