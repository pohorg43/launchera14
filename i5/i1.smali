.class public abstract Li5/i1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/i1;->a:Ljava/lang/String;

    iput-boolean p2, p0, Li5/i1;->b:Z

    return-void
.end method


# virtual methods
.method public a(Li5/i1;)Ljava/lang/Integer;
    .registers 3

    const-string v0, "visibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Li5/h1;->a:Li5/h1;

    const-string v0, "first"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p0, p1, :cond_19

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_43

    :cond_19
    sget-object v0, Li5/h1;->b:Ljava/util/Map;

    check-cast v0, Lj4/c;

    invoke-virtual {v0, p0}, Lj4/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lj4/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p0, :cond_42

    if-eqz p1, :cond_42

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_42

    :cond_34
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_43

    :cond_42
    :goto_42
    const/4 p0, 0x0

    :goto_43
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Li5/i1;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Li5/i1;
    .registers 1

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Li5/i1;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
