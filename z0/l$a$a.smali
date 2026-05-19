.class public Lz0/l$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lu1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu1/a$b<",
        "Lz0/i<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz0/l$a;


# direct methods
.method public constructor <init>(Lz0/l$a;)V
    .registers 2

    iput-object p1, p0, Lz0/l$a$a;->a:Lz0/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lz0/i;

    iget-object p0, p0, Lz0/l$a$a;->a:Lz0/l$a;

    iget-object v1, p0, Lz0/l$a;->a:Lz0/i$d;

    iget-object p0, p0, Lz0/l$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-direct {v0, v1, p0}, Lz0/i;-><init>(Lz0/i$d;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method
