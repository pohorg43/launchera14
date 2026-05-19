.class public abstract Li5/q;
.super Li5/t;
.source ""


# instance fields
.field public final a:Li5/i1;


# direct methods
.method public constructor <init>(Li5/i1;)V
    .registers 3

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Li5/t;-><init>()V

    iput-object p1, p0, Li5/q;->a:Li5/i1;

    return-void
.end method


# virtual methods
.method public a()Li5/i1;
    .registers 1

    iget-object p0, p0, Li5/q;->a:Li5/i1;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Li5/q;->a:Li5/i1;

    invoke-virtual {p0}, Li5/i1;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Li5/t;
    .registers 2

    iget-object p0, p0, Li5/q;->a:Li5/i1;

    invoke-virtual {p0}, Li5/i1;->c()Li5/i1;

    move-result-object p0

    invoke-static {p0}, Li5/s;->h(Li5/i1;)Li5/t;

    move-result-object p0

    const-string v0, "toDescriptorVisibility(delegate.normalize())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
