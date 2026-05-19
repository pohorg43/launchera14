.class public final Lio/branch/search/c3;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lio/branch/search/z2;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Lio/branch/search/z2;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    const-string v0, "phase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/c3;->a:Lio/branch/search/z2;

    iput p2, p0, Lio/branch/search/c3;->b:I

    iput-object p3, p0, Lio/branch/search/c3;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/c3;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lio/branch/search/c3;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 1

    iget p0, p0, Lio/branch/search/c3;->b:I

    return p0
.end method

.method public final a(Lio/branch/search/x1;)Lio/branch/search/v2;
    .registers 3

    const-string v0, "binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/branch/search/c3;->e:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lio/branch/search/c3;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/branch/search/x1;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1a

    :cond_14
    iget-object v0, p0, Lio/branch/search/c3;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/branch/search/x1;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_1a
    new-instance v0, Lio/branch/search/v2;

    iget-object p0, p0, Lio/branch/search/c3;->c:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lio/branch/search/v2;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final b()Lio/branch/search/z2;
    .registers 1

    iget-object p0, p0, Lio/branch/search/c3;->a:Lio/branch/search/z2;

    return-object p0
.end method
