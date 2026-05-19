.class public final Lm7/c$a;
.super Lm7/w1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n11335#2:128\n11670#2,3:129\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n*L\n121#1:128\n121#1:129,3\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _disposer:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final e:Lm7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/l<",
            "Ljava/util/List<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public f:Lm7/a1;

.field public final synthetic g:Lm7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lm7/c$a;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_disposer"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lm7/c$a;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lm7/c;Lm7/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/l<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lm7/c$a;->g:Lm7/c;

    invoke-direct {p0}, Lm7/w1;-><init>()V

    iput-object p2, p0, Lm7/c$a;->e:Lm7/l;

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Throwable;)V
    .registers 6

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lm7/c$a;->e:Lm7/l;

    invoke-interface {v0, p1}, Lm7/l;->i(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_46

    iget-object v0, p0, Lm7/c$a;->e:Lm7/l;

    invoke-interface {v0, p1}, Lm7/l;->C(Ljava/lang/Object;)V

    sget-object p1, Lm7/c$a;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/c$b;

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Lm7/c$b;->h()V

    goto :goto_46

    :cond_1d
    sget-object p1, Lm7/c;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    iget-object v0, p0, Lm7/c$a;->g:Lm7/c;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_46

    iget-object p1, p0, Lm7/c$a;->e:Lm7/l;

    iget-object p0, p0, Lm7/c$a;->g:Lm7/c;

    iget-object p0, p0, Lm7/c;->a:[Lm7/p0;

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    array-length v2, p0

    :goto_35
    if-ge v1, v2, :cond_43

    aget-object v3, p0, v1

    invoke-interface {v3}, Lm7/p0;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_43
    invoke-interface {p1, v0}, Ll4/d;->resumeWith(Ljava/lang/Object;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lm7/c$a;->i(Ljava/lang/Throwable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
