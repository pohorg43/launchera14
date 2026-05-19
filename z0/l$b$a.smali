.class public Lz0/l$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/l$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu1/a$b<",
        "Lz0/m<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz0/l$b;


# direct methods
.method public constructor <init>(Lz0/l$b;)V
    .registers 2

    iput-object p1, p0, Lz0/l$b$a;->a:Lz0/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 10

    new-instance v8, Lz0/m;

    iget-object p0, p0, Lz0/l$b$a;->a:Lz0/l$b;

    iget-object v1, p0, Lz0/l$b;->a:Lc1/a;

    iget-object v2, p0, Lz0/l$b;->b:Lc1/a;

    iget-object v3, p0, Lz0/l$b;->c:Lc1/a;

    iget-object v4, p0, Lz0/l$b;->d:Lc1/a;

    iget-object v5, p0, Lz0/l$b;->e:Lz0/n;

    iget-object v6, p0, Lz0/l$b;->f:Lz0/q$a;

    iget-object v7, p0, Lz0/l$b;->g:Landroidx/core/util/Pools$Pool;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lz0/m;-><init>(Lc1/a;Lc1/a;Lc1/a;Lc1/a;Lz0/n;Lz0/q$a;Landroidx/core/util/Pools$Pool;)V

    return-object v8
.end method
