.class public final synthetic Lv7/g;
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
        "Lv7/k;",
        "Lv7/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lv7/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv7/g;

    invoke-direct {v0}, Lv7/g;-><init>()V

    sput-object v0, Lv7/g;->a:Lv7/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-class v2, Lv7/j;

    const/4 v1, 0x2

    const-string v3, "createSegment"

    const-string v4, "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    check-cast p2, Lv7/k;

    sget v0, Lv7/j;->a:I

    new-instance v0, Lv7/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lv7/k;-><init>(JLv7/k;I)V

    return-object v0
.end method
