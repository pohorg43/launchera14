.class public Lio/branch/search/v3$a$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/v3$a$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lio/branch/search/v3$a$a;


# direct methods
.method public constructor <init>(Lio/branch/search/v3$a$a;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/v3$a$a$a;->b:Lio/branch/search/v3$a$a;

    iput-object p2, p0, Lio/branch/search/v3$a$a$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lio/branch/search/v3$a$a$a;->b:Lio/branch/search/v3$a$a;

    iget-object v0, v0, Lio/branch/search/v3$a$a;->a:Lio/branch/search/v3$a;

    iget-object v0, v0, Lio/branch/search/v3$a;->b:Lio/branch/search/h2;

    invoke-interface {v0}, Lio/branch/search/h2;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/i2;

    iget-object v2, p0, Lio/branch/search/v3$a$a$a;->b:Lio/branch/search/v3$a$a;

    iget-object v2, v2, Lio/branch/search/v3$a$a;->a:Lio/branch/search/v3$a;

    iget-object v3, v2, Lio/branch/search/v3$a;->c:Lio/branch/search/v3;

    iget-object v2, v2, Lio/branch/search/v3$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/t3;

    iget-object v4, p0, Lio/branch/search/v3$a$a$a;->a:Ljava/util/List;

    invoke-static {v3, v2, v4, v1}, Lio/branch/search/v3;->a(Lio/branch/search/v3;Lio/branch/search/t3;Ljava/util/List;Lio/branch/search/i2;)V

    goto :goto_e

    :cond_2e
    return-void
.end method
