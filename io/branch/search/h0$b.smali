.class public final Lio/branch/search/h0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/branch/search/h0$b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/h0$b;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/h0$b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lio/branch/search/h0;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lio/branch/search/p5;

    invoke-direct {p0, p1}, Lio/branch/search/p5;-><init>(Landroid/content/Context;)V

    sget-object p1, Lio/branch/search/a5;->Companion:Lio/branch/search/a5$a;

    const-string v0, "bnc_persisted_crashes"

    invoke-virtual {p1, p0, v0}, Lio/branch/search/a5$a;->a(Lio/branch/search/p5;Ljava/lang/String;)Lio/branch/search/a5;

    move-result-object p0

    new-instance p1, Lio/branch/search/h0;

    invoke-direct {p1, p0}, Lio/branch/search/h0;-><init>(Lio/branch/search/a5;)V

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
