.class public final Ly6/z0$a;
.super Ly6/l1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/z0;->a(Ljava/util/List;Ljava/util/List;Lf5/g;)Ly6/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly6/j1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ly6/j1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ly6/z0$a;->c:Ljava/util/List;

    invoke-direct {p0}, Ly6/l1;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Ly6/j1;)Ly6/q1;
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/z0$a;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-interface {p1}, Ly6/j1;->e()Li5/h;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Li5/a1;

    invoke-static {p0}, Ly6/a2;->m(Li5/a1;)Ly6/q1;

    move-result-object p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return-object p0
.end method
