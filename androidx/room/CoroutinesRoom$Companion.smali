.class public final Landroidx/room/CoroutinesRoom$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/CoroutinesRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/room/CoroutinesRoom$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lp7/d;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)",
            "Lp7/d<",
            "TR;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "db"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "tableNames"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callable"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1;-><init>(ZLandroidx/room/RoomDatabase;[Ljava/lang/String;Ljava/util/concurrent/Callable;Ll4/d;)V

    new-instance p1, Lp7/n;

    invoke-direct {p1, p0}, Lp7/n;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object p1
.end method

.method public final execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ll4/d;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Ll4/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->inTransaction()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-interface {p4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-interface {p5}, Ll4/d;->getContext()Ll4/f;

    move-result-object p0

    sget-object v0, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    invoke-interface {p0, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    check-cast p0, Landroidx/room/TransactionElement;

    const/4 v0, 0x0

    if-nez p0, :cond_22

    move-object p0, v0

    goto :goto_26

    :cond_22
    invoke-virtual {p0}, Landroidx/room/TransactionElement;->getTransactionDispatcher$room_ktx_release()Ll4/e;

    move-result-object p0

    :goto_26
    if-nez p0, :cond_33

    if-eqz p2, :cond_2f

    invoke-static {p1}, Landroidx/room/CoroutinesRoomKt;->getTransactionDispatcher(Landroidx/room/RoomDatabase;)Lm7/f0;

    move-result-object p0

    goto :goto_33

    :cond_2f
    invoke-static {p1}, Landroidx/room/CoroutinesRoomKt;->getQueryDispatcher(Landroidx/room/RoomDatabase;)Lm7/f0;

    move-result-object p0

    :cond_33
    :goto_33
    move-object v2, p0

    new-instance p0, Lm7/n;

    invoke-static {p5}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {p0}, Lm7/n;->w()V

    sget-object v1, Lm7/l1;->a:Lm7/l1;

    new-instance v4, Landroidx/room/CoroutinesRoom$Companion$execute$4$job$1;

    invoke-direct {v4, p4, p0, v0}, Landroidx/room/CoroutinesRoom$Companion$execute$4$job$1;-><init>(Ljava/util/concurrent/Callable;Lm7/l;Ll4/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p1

    new-instance p2, Landroidx/room/CoroutinesRoom$Companion$execute$4$1;

    invoke-direct {p2, p3, p1}, Landroidx/room/CoroutinesRoom$Companion$execute$4$1;-><init>(Landroid/os/CancellationSignal;Lm7/s1;)V

    invoke-virtual {p0, p2}, Lm7/n;->h(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_64

    const-string p1, "frame"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_64
    return-object p0
.end method

.method public final execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Ll4/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->inTransaction()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-interface {p4}, Ll4/d;->getContext()Ll4/f;

    move-result-object p0

    sget-object v0, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    invoke-interface {p0, v0}, Ll4/f;->get(Ll4/f$b;)Ll4/f$a;

    move-result-object p0

    check-cast p0, Landroidx/room/TransactionElement;

    const/4 v0, 0x0

    if-nez p0, :cond_22

    move-object p0, v0

    goto :goto_26

    :cond_22
    invoke-virtual {p0}, Landroidx/room/TransactionElement;->getTransactionDispatcher$room_ktx_release()Ll4/e;

    move-result-object p0

    :goto_26
    if-nez p0, :cond_33

    if-eqz p2, :cond_2f

    invoke-static {p1}, Landroidx/room/CoroutinesRoomKt;->getTransactionDispatcher(Landroidx/room/RoomDatabase;)Lm7/f0;

    move-result-object p0

    goto :goto_33

    :cond_2f
    invoke-static {p1}, Landroidx/room/CoroutinesRoomKt;->getQueryDispatcher(Landroidx/room/RoomDatabase;)Lm7/f0;

    move-result-object p0

    :cond_33
    :goto_33
    new-instance p1, Landroidx/room/CoroutinesRoom$Companion$execute$2;

    invoke-direct {p1, p3, v0}, Landroidx/room/CoroutinesRoom$Companion$execute$2;-><init>(Ljava/util/concurrent/Callable;Ll4/d;)V

    invoke-static {p0, p1, p4}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
