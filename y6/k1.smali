.class public final Ly6/k1;
.super Ly6/l1;
.source ""


# instance fields
.field public final synthetic c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ly6/j1;",
            "Ly6/q1;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ly6/j1;",
            "+",
            "Ly6/q1;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Ly6/k1;->c:Ljava/util/Map;

    iput-boolean p2, p0, Ly6/k1;->d:Z

    invoke-direct {p0}, Ly6/l1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    iget-boolean p0, p0, Ly6/k1;->d:Z

    return p0
.end method

.method public f()Z
    .registers 1

    iget-object p0, p0, Ly6/k1;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public h(Ly6/j1;)Ly6/q1;
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/k1;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/q1;

    return-object p0
.end method
