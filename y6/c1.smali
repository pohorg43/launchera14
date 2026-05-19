.class public final Ly6/c1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ly6/c1;

.field public final b:Li5/z0;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly6/q1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Li5/a1;",
            "Ly6/q1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly6/c1;Li5/z0;Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/c1;->a:Ly6/c1;

    iput-object p2, p0, Ly6/c1;->b:Li5/z0;

    iput-object p3, p0, Ly6/c1;->c:Ljava/util/List;

    iput-object p4, p0, Ly6/c1;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Li5/z0;)Z
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly6/c1;->b:Li5/z0;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    iget-object p0, p0, Ly6/c1;->a:Ly6/c1;

    if-eqz p0, :cond_17

    invoke-virtual {p0, p1}, Ly6/c1;->a(Li5/z0;)Z

    move-result p0

    goto :goto_18

    :cond_17
    move p0, v1

    :goto_18
    if-eqz p0, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    :cond_1b
    return v1
.end method
