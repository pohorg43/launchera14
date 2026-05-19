.class public Le8/z$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Le8/x;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public b:Le8/v;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Le8/p;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public f:Le8/q$a;

.field public g:Le8/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public h:Le8/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public i:Le8/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public j:Le8/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Le8/z$a;->c:I

    new-instance v0, Le8/q$a;

    invoke-direct {v0}, Le8/q$a;-><init>()V

    iput-object v0, p0, Le8/z$a;->f:Le8/q$a;

    return-void
.end method

.method public constructor <init>(Le8/z;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Le8/z$a;->c:I

    iget-object v0, p1, Le8/z;->a:Le8/x;

    iput-object v0, p0, Le8/z$a;->a:Le8/x;

    iget-object v0, p1, Le8/z;->b:Le8/v;

    iput-object v0, p0, Le8/z$a;->b:Le8/v;

    iget v0, p1, Le8/z;->c:I

    iput v0, p0, Le8/z$a;->c:I

    iget-object v0, p1, Le8/z;->d:Ljava/lang/String;

    iput-object v0, p0, Le8/z$a;->d:Ljava/lang/String;

    iget-object v0, p1, Le8/z;->e:Le8/p;

    iput-object v0, p0, Le8/z$a;->e:Le8/p;

    iget-object v0, p1, Le8/z;->f:Le8/q;

    invoke-virtual {v0}, Le8/q;->f()Le8/q$a;

    move-result-object v0

    iput-object v0, p0, Le8/z$a;->f:Le8/q$a;

    iget-object v0, p1, Le8/z;->g:Le8/b0;

    iput-object v0, p0, Le8/z$a;->g:Le8/b0;

    iget-object v0, p1, Le8/z;->h:Le8/z;

    iput-object v0, p0, Le8/z$a;->h:Le8/z;

    iget-object v0, p1, Le8/z;->i:Le8/z;

    iput-object v0, p0, Le8/z$a;->i:Le8/z;

    iget-object v0, p1, Le8/z;->j:Le8/z;

    iput-object v0, p0, Le8/z$a;->j:Le8/z;

    iget-wide v0, p1, Le8/z;->k:J

    iput-wide v0, p0, Le8/z$a;->k:J

    iget-wide v0, p1, Le8/z;->l:J

    iput-wide v0, p0, Le8/z$a;->l:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Le8/z$a;
    .registers 5

    iget-object v0, p0, Le8/z$a;->f:Le8/q$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Le8/q;->b(Ljava/lang/String;)V

    invoke-static {p2, p1}, Le8/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Le8/q$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Le8/q$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Le8/z;
    .registers 3

    iget-object v0, p0, Le8/z$a;->a:Le8/x;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Le8/z$a;->b:Le8/v;

    if-eqz v0, :cond_33

    iget v0, p0, Le8/z$a;->c:I

    if-ltz v0, :cond_1e

    iget-object v0, p0, Le8/z$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_16

    new-instance v0, Le8/z;

    invoke-direct {v0, p0}, Le8/z;-><init>(Le8/z$a;)V

    return-object v0

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "message == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "code < 0: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Le8/z$a;->c:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "protocol == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "request == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Le8/z;)Le8/z$a;
    .registers 3
    .param p1  # Le8/z;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_7

    const-string v0, "cacheResponse"

    invoke-virtual {p0, v0, p1}, Le8/z$a;->d(Ljava/lang/String;Le8/z;)V

    :cond_7
    iput-object p1, p0, Le8/z$a;->i:Le8/z;

    return-object p0
.end method

.method public final d(Ljava/lang/String;Le8/z;)V
    .registers 3

    iget-object p0, p2, Le8/z;->g:Le8/b0;

    if-nez p0, :cond_35

    iget-object p0, p2, Le8/z;->h:Le8/z;

    if-nez p0, :cond_29

    iget-object p0, p2, Le8/z;->i:Le8/z;

    if-nez p0, :cond_1d

    iget-object p0, p2, Le8/z;->j:Le8/z;

    if-nez p0, :cond_11

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, ".priorResponse != null"

    invoke-static {p1, p2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, ".cacheResponse != null"

    invoke-static {p1, p2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, ".networkResponse != null"

    invoke-static {p1, p2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, ".body != null"

    invoke-static {p1, p2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Le8/z$a;
    .registers 5

    iget-object v0, p0, Le8/z$a;->f:Le8/q$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Le8/q;->b(Ljava/lang/String;)V

    invoke-static {p2, p1}, Le8/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Le8/q$a;->b(Ljava/lang/String;)Le8/q$a;

    iget-object v1, v0, Le8/q$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Le8/q$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f(Le8/q;)Le8/z$a;
    .registers 2

    invoke-virtual {p1}, Le8/q;->f()Le8/q$a;

    move-result-object p1

    iput-object p1, p0, Le8/z$a;->f:Le8/q$a;

    return-object p0
.end method
