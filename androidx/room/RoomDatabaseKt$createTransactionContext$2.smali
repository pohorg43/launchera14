.class final Landroidx/room/RoomDatabaseKt$createTransactionContext$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomDatabaseKt;->createTransactionContext(Landroidx/room/RoomDatabase;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $controlJob:Lm7/v;


# direct methods
.method public constructor <init>(Lm7/v;)V
    .registers 2

    iput-object p1, p0, Landroidx/room/RoomDatabaseKt$createTransactionContext$2;->$controlJob:Lm7/v;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabaseKt$createTransactionContext$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 3

    iget-object p0, p0, Landroidx/room/RoomDatabaseKt$createTransactionContext$2;->$controlJob:Lm7/v;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lm7/s1$a;->a(Lm7/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
