.class public Le8/x$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Le8/r;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Le8/q$a;

.field public d:Le8/y;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le8/x$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    iput-object v0, p0, Le8/x$a;->b:Ljava/lang/String;

    new-instance v0, Le8/q$a;

    invoke-direct {v0}, Le8/q$a;-><init>()V

    iput-object v0, p0, Le8/x$a;->c:Le8/q$a;

    return-void
.end method

.method public constructor <init>(Le8/x;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le8/x$a;->e:Ljava/util/Map;

    iget-object v0, p1, Le8/x;->a:Le8/r;

    iput-object v0, p0, Le8/x$a;->a:Le8/r;

    iget-object v0, p1, Le8/x;->b:Ljava/lang/String;

    iput-object v0, p0, Le8/x$a;->b:Ljava/lang/String;

    iget-object v0, p1, Le8/x;->d:Le8/y;

    iput-object v0, p0, Le8/x$a;->d:Le8/y;

    iget-object v0, p1, Le8/x;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_29

    :cond_22
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Le8/x;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_29
    iput-object v0, p0, Le8/x$a;->e:Ljava/util/Map;

    iget-object p1, p1, Le8/x;->c:Le8/q;

    invoke-virtual {p1}, Le8/q;->f()Le8/q$a;

    move-result-object p1

    iput-object p1, p0, Le8/x$a;->c:Le8/q$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;
    .registers 5

    iget-object v0, p0, Le8/x$a;->c:Le8/q$a;

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

.method public b()Le8/x;
    .registers 2

    iget-object v0, p0, Le8/x$a;->a:Le8/r;

    if-eqz v0, :cond_a

    new-instance v0, Le8/x;

    invoke-direct {v0, p0}, Le8/x;-><init>(Le8/x$a;)V

    return-object v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;
    .registers 5

    iget-object v0, p0, Le8/x$a;->c:Le8/q$a;

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

.method public d(Ljava/lang/String;Le8/y;)Le8/x$a;
    .registers 5
    .param p2  # Le8/y;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "method == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "method "

    if-eqz p2, :cond_22

    invoke-static {p1}, Ll7/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_22

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, " must not have a request body."

    invoke-static {v0, p1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    if-nez p2, :cond_5f

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "PATCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "PROPPATCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "REPORT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 v1, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v1, 0x1

    :goto_50
    if-nez v1, :cond_53

    goto :goto_5f

    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, " must have a request body."

    invoke-static {v0, p1, p2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5f
    :goto_5f
    iput-object p1, p0, Le8/x$a;->b:Ljava/lang/String;

    iput-object p2, p0, Le8/x$a;->d:Le8/y;

    return-object p0

    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "method.length() == 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Ljava/lang/String;)Le8/x$a;
    .registers 3

    iget-object v0, p0, Le8/x$a;->c:Le8/q$a;

    invoke-virtual {v0, p1}, Le8/q$a;->b(Ljava/lang/String;)Le8/q$a;

    return-object p0
.end method

.method public f(Le8/r;)Le8/x$a;
    .registers 3

    const-string v0, "url == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Le8/x$a;->a:Le8/r;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Le8/x$a;
    .registers 9

    const-string v0, "url == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "ws:"

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "http:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_44

    :cond_25
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "https:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_44
    :goto_44
    new-instance v0, Le8/r$a;

    invoke-direct {v0}, Le8/r$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Le8/r$a;->c(Le8/r;Ljava/lang/String;)Le8/r$a;

    invoke-virtual {v0}, Le8/r$a;->a()Le8/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Le8/x$a;->f(Le8/r;)Le8/x$a;

    return-object p0
.end method
