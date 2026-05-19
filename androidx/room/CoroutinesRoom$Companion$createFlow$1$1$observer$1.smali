.class public final Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $observerChannel:Lo7/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/f<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $tableNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lo7/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lo7/f<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;->$tableNames:[Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;->$observerChannel:Lo7/f;

    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;->$observerChannel:Lo7/f;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-interface {p0, p1}, Lo7/t;->q(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
