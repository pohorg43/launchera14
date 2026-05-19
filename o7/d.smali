.class public final synthetic Lo7/d;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Lo7/k<",
        "Ljava/lang/Object;",
        ">;",
        "Lo7/k<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lo7/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo7/d;

    invoke-direct {v0}, Lo7/d;-><init>()V

    sput-object v0, Lo7/d;->a:Lo7/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-class v2, Lo7/e;

    const/4 v1, 0x2

    const-string v3, "createSegment"

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    move-object v3, p2

    check-cast v3, Lo7/k;

    sget-object p0, Lo7/e;->a:Lo7/k;

    new-instance p0, Lo7/k;

    iget-object v4, v3, Lo7/k;->e:Lo7/b;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo7/k;-><init>(JLo7/k;Lo7/b;I)V

    return-object p0
.end method
