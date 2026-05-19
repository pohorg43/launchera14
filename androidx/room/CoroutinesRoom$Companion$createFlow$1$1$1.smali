.class final Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1"
    f = "CoroutinesRoom.kt"
    l = {
        0x7f,
        0x81
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic $db:Landroidx/room/RoomDatabase;

.field public final synthetic $observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

.field public final synthetic $observerChannel:Lo7/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/f<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $resultChannel:Lo7/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/f<",
            "TR;>;"
        }
    .end annotation
.end field

.field public L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;Lo7/f;Ljava/util/concurrent/Callable;Lo7/f;Ll4/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;",
            "Lo7/f<",
            "Lh4/z;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lo7/f<",
            "TR;>;",
            "Ll4/d<",
            "-",
            "Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    iput-object p3, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observerChannel:Lo7/f;

    iput-object p4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$callable:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$resultChannel:Lo7/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;

    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    iget-object v2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    iget-object v3, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observerChannel:Lo7/f;

    iget-object v4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$callable:Ljava/util/concurrent/Callable;

    iget-object v5, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$resultChannel:Lo7/f;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;Lo7/f;Ljava/util/concurrent/Callable;Lo7/f;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_25

    if-eq v1, v3, :cond_1d

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lo7/h;

    :try_start_10
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_73

    :cond_13
    move-object p1, v1

    goto :goto_39

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lo7/h;

    :try_start_21
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_73

    goto :goto_47

    :cond_25
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    iget-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    invoke-virtual {p1, v1}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V

    :try_start_33
    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observerChannel:Lo7/f;

    invoke-interface {p1}, Lo7/s;->iterator()Lo7/h;

    move-result-object p1

    :goto_39
    iput-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->label:I

    invoke-interface {p1, p0}, Lo7/h;->e(Ll4/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_44

    return-object v0

    :cond_44
    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    :goto_47
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_65

    invoke-interface {v1}, Lo7/h;->next()Ljava/lang/Object;

    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$callable:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    iget-object v4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$resultChannel:Lo7/f;

    iput-object v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->label:I

    invoke-interface {v4, p1, p0}, Lo7/t;->A(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_62
    .catchall {:try_start_33 .. :try_end_62} :catchall_73

    if-ne p1, v0, :cond_13

    return-object v0

    :cond_65
    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p1

    iget-object p0, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    invoke-virtual {p1, p0}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :catchall_73
    move-exception p1

    iget-object v0, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;->$observer:Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    invoke-virtual {v0, p0}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    throw p1
.end method
