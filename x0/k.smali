.class public final Lx0/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx0/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx0/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx0/e<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg1/w;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;La1/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg1/w;

    invoke-direct {v0, p1, p2}, Lg1/w;-><init>(Ljava/io/InputStream;La1/b;)V

    iput-object v0, p0, Lx0/k;->a:Lg1/w;

    const/high16 p0, 0x500000

    invoke-virtual {v0, p0}, Lg1/w;->mark(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lx0/k;->c()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .registers 1

    iget-object p0, p0, Lx0/k;->a:Lg1/w;

    invoke-virtual {p0}, Lg1/w;->b()V

    return-void
.end method

.method public c()Ljava/io/InputStream;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lx0/k;->a:Lg1/w;

    invoke-virtual {v0}, Lg1/w;->reset()V

    iget-object p0, p0, Lx0/k;->a:Lg1/w;

    return-object p0
.end method
