.class public Lio/branch/search/z0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/branch/search/l;",
            "Lio/branch/search/t5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ld1/g;

.field public final b:Lio/branch/search/t5;

.field public final c:Lio/branch/search/l;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/branch/search/z0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/l;->e:Lio/branch/search/l;

    sget-object v2, Lio/branch/search/t5;->s:Lio/branch/search/t5;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/z0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/l;->d:Lio/branch/search/l;

    sget-object v2, Lio/branch/search/t5;->t:Lio/branch/search/t5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/z0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/l;->c:Lio/branch/search/l;

    sget-object v2, Lio/branch/search/t5;->v:Lio/branch/search/t5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/z0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/l;->b:Lio/branch/search/l;

    sget-object v2, Lio/branch/search/t5;->w:Lio/branch/search/t5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/z0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/l;->a:Lio/branch/search/l;

    sget-object v2, Lio/branch/search/t5;->x:Lio/branch/search/t5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/z0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/l;->f:Lio/branch/search/l;

    sget-object v2, Lio/branch/search/t5;->u:Lio/branch/search/t5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/z0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/l;->j:Lio/branch/search/l;

    sget-object v2, Lio/branch/search/t5;->y:Lio/branch/search/t5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/z0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/l;->i:Lio/branch/search/l;

    sget-object v2, Lio/branch/search/t5;->z:Lio/branch/search/t5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/z0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/l;->h:Lio/branch/search/l;

    sget-object v2, Lio/branch/search/t5;->A:Lio/branch/search/t5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/branch/search/z0;->d:Ljava/util/Map;

    sget-object v1, Lio/branch/search/l;->g:Lio/branch/search/l;

    sget-object v2, Lio/branch/search/t5;->B:Lio/branch/search/t5;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/branch/search/l;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/branch/search/z0;->c:Lio/branch/search/l;

    invoke-static {p2}, Lio/branch/search/z0;->a(Lio/branch/search/l;)Lio/branch/search/t5;

    move-result-object p2

    iput-object p2, p0, Lio/branch/search/z0;->b:Lio/branch/search/t5;

    new-instance p2, Ld1/g;

    invoke-direct {p2, p1}, Ld1/g;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lio/branch/search/z0;->a:Ld1/g;

    return-void
.end method

.method public static a(Lio/branch/search/l;)Lio/branch/search/t5;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lio/branch/search/z0;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/t5;

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    sget-object p0, Lio/branch/search/t5;->C:Lio/branch/search/t5;

    :goto_d
    return-object p0
.end method


# virtual methods
.method public a()Lx0/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx0/d<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/z0;->b:Lio/branch/search/t5;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/branch/search/t5;->b(Lio/branch/search/m;)Le8/u;

    move-result-object v0

    new-instance v1, Lv0/a;

    iget-object p0, p0, Lio/branch/search/z0;->a:Ld1/g;

    invoke-direct {v1, v0, p0}, Lv0/a;-><init>(Le8/d$a;Ld1/g;)V

    return-object v1
.end method

.method public b()Lw0/c;
    .registers 1

    iget-object p0, p0, Lio/branch/search/z0;->a:Ld1/g;

    return-object p0
.end method
