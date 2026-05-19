.class final Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomDatabaseKt;->acquireTransactionThread(Ljava/util/concurrent/Executor;Lm7/s1;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $continuation:Lm7/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm7/l<",
            "Ll4/e;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $controlJob:Lm7/s1;


# direct methods
.method public constructor <init>(Lm7/l;Lm7/s1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/l<",
            "-",
            "Ll4/e;",
            ">;",
            "Lm7/s1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;->$continuation:Lm7/l;

    iput-object p2, p0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;->$controlJob:Lm7/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2$1;

    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;->$continuation:Lm7/l;

    iget-object p0, p0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;->$controlJob:Lm7/s1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2$1;-><init>(Lm7/l;Lm7/s1;Ll4/d;)V

    const/4 p0, 0x1

    invoke-static {v2, v0, p0, v2}, Lm7/h;->d(Ll4/f;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
