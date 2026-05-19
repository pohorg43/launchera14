.class public final Le8/u$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public A:I

.field public a:Le8/l;

.field public b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/v;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/i;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/s;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/s;",
            ">;"
        }
    .end annotation
.end field

.field public g:Le8/n$b;

.field public h:Ljava/net/ProxySelector;

.field public i:Le8/k;

.field public j:Lg8/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public k:Ljavax/net/SocketFactory;

.field public l:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public m:Ln8/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public n:Ljavax/net/ssl/HostnameVerifier;

.field public o:Le8/f;

.field public p:Le8/b;

.field public q:Le8/b;

.field public r:Le8/h;

.field public s:Le8/m;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le8/u$b;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le8/u$b;->f:Ljava/util/List;

    new-instance v0, Le8/l;

    invoke-direct {v0}, Le8/l;-><init>()V

    iput-object v0, p0, Le8/u$b;->a:Le8/l;

    sget-object v0, Le8/u;->B:Ljava/util/List;

    iput-object v0, p0, Le8/u$b;->c:Ljava/util/List;

    sget-object v0, Le8/u;->C:Ljava/util/List;

    iput-object v0, p0, Le8/u$b;->d:Ljava/util/List;

    sget-object v0, Le8/n;->a:Le8/n;

    new-instance v1, Le8/o;

    invoke-direct {v1, v0}, Le8/o;-><init>(Le8/n;)V

    iput-object v1, p0, Le8/u$b;->g:Le8/n$b;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Le8/u$b;->h:Ljava/net/ProxySelector;

    if-nez v0, :cond_38

    new-instance v0, Lm8/a;

    invoke-direct {v0}, Lm8/a;-><init>()V

    iput-object v0, p0, Le8/u$b;->h:Ljava/net/ProxySelector;

    :cond_38
    sget-object v0, Le8/k;->a:Le8/k;

    iput-object v0, p0, Le8/u$b;->i:Le8/k;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Le8/u$b;->k:Ljavax/net/SocketFactory;

    sget-object v0, Ln8/d;->a:Ln8/d;

    iput-object v0, p0, Le8/u$b;->n:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Le8/f;->c:Le8/f;

    iput-object v0, p0, Le8/u$b;->o:Le8/f;

    sget-object v0, Le8/b;->a:Le8/b;

    iput-object v0, p0, Le8/u$b;->p:Le8/b;

    iput-object v0, p0, Le8/u$b;->q:Le8/b;

    new-instance v0, Le8/h;

    invoke-direct {v0}, Le8/h;-><init>()V

    iput-object v0, p0, Le8/u$b;->r:Le8/h;

    sget-object v0, Le8/m;->a:Le8/m;

    iput-object v0, p0, Le8/u$b;->s:Le8/m;

    const/4 v0, 0x1

    iput-boolean v0, p0, Le8/u$b;->t:Z

    iput-boolean v0, p0, Le8/u$b;->u:Z

    iput-boolean v0, p0, Le8/u$b;->v:Z

    const/4 v0, 0x0

    iput v0, p0, Le8/u$b;->w:I

    const/16 v1, 0x2710

    iput v1, p0, Le8/u$b;->x:I

    iput v1, p0, Le8/u$b;->y:I

    iput v1, p0, Le8/u$b;->z:I

    iput v0, p0, Le8/u$b;->A:I

    return-void
.end method

.method public constructor <init>(Le8/u;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le8/u$b;->e:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le8/u$b;->f:Ljava/util/List;

    iget-object v2, p1, Le8/u;->a:Le8/l;

    iput-object v2, p0, Le8/u$b;->a:Le8/l;

    iget-object v2, p1, Le8/u;->b:Ljava/net/Proxy;

    iput-object v2, p0, Le8/u$b;->b:Ljava/net/Proxy;

    iget-object v2, p1, Le8/u;->c:Ljava/util/List;

    iput-object v2, p0, Le8/u$b;->c:Ljava/util/List;

    iget-object v2, p1, Le8/u;->d:Ljava/util/List;

    iput-object v2, p0, Le8/u$b;->d:Ljava/util/List;

    iget-object v2, p1, Le8/u;->e:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Le8/u;->f:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Le8/u;->g:Le8/n$b;

    iput-object v0, p0, Le8/u$b;->g:Le8/n$b;

    iget-object v0, p1, Le8/u;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Le8/u$b;->h:Ljava/net/ProxySelector;

    iget-object v0, p1, Le8/u;->i:Le8/k;

    iput-object v0, p0, Le8/u$b;->i:Le8/k;

    iget-object v0, p1, Le8/u;->j:Lg8/e;

    iput-object v0, p0, Le8/u$b;->j:Lg8/e;

    iget-object v0, p1, Le8/u;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Le8/u$b;->k:Ljavax/net/SocketFactory;

    iget-object v0, p1, Le8/u;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Le8/u$b;->l:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Le8/u;->m:Ln8/c;

    iput-object v0, p0, Le8/u$b;->m:Ln8/c;

    iget-object v0, p1, Le8/u;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Le8/u$b;->n:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Le8/u;->o:Le8/f;

    iput-object v0, p0, Le8/u$b;->o:Le8/f;

    iget-object v0, p1, Le8/u;->p:Le8/b;

    iput-object v0, p0, Le8/u$b;->p:Le8/b;

    iget-object v0, p1, Le8/u;->q:Le8/b;

    iput-object v0, p0, Le8/u$b;->q:Le8/b;

    iget-object v0, p1, Le8/u;->r:Le8/h;

    iput-object v0, p0, Le8/u$b;->r:Le8/h;

    iget-object v0, p1, Le8/u;->s:Le8/m;

    iput-object v0, p0, Le8/u$b;->s:Le8/m;

    iget-boolean v0, p1, Le8/u;->t:Z

    iput-boolean v0, p0, Le8/u$b;->t:Z

    iget-boolean v0, p1, Le8/u;->u:Z

    iput-boolean v0, p0, Le8/u$b;->u:Z

    iget-boolean v0, p1, Le8/u;->v:Z

    iput-boolean v0, p0, Le8/u$b;->v:Z

    iget v0, p1, Le8/u;->w:I

    iput v0, p0, Le8/u$b;->w:I

    iget v0, p1, Le8/u;->x:I

    iput v0, p0, Le8/u$b;->x:I

    iget v0, p1, Le8/u;->y:I

    iput v0, p0, Le8/u$b;->y:I

    iget v0, p1, Le8/u;->z:I

    iput v0, p0, Le8/u$b;->z:I

    iget p1, p1, Le8/u;->A:I

    iput p1, p0, Le8/u$b;->A:I

    return-void
.end method
