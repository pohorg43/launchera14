.class public final Lv7/c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lh4/z;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n1#2:301\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv7/d;

.field public final synthetic b:Lv7/d$a;


# direct methods
.method public constructor <init>(Lv7/d;Lv7/d$a;)V
    .registers 3

    iput-object p1, p0, Lv7/c;->a:Lv7/d;

    iput-object p2, p0, Lv7/c;->b:Lv7/d$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lv7/c;->a:Lv7/d;

    iget-object v0, p0, Lv7/c;->b:Lv7/d$a;

    sget-object v1, Lv7/d;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v0, v0, Lv7/d$a;->b:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lv7/c;->a:Lv7/d;

    iget-object p0, p0, Lv7/c;->b:Lv7/d$a;

    iget-object p0, p0, Lv7/d$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lv7/d;->a(Ljava/lang/Object;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
