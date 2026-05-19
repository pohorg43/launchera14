.class public Le1/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld1/n<",
        "Ljava/net/URL;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ld1/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld1/n<",
            "Ld1/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld1/n;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/n<",
            "Ld1/g;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/f;->a:Ld1/n;

    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILw0/e;)Ld1/n$a;
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lw0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/net/URL;

    iget-object p0, p0, Le1/f;->a:Ld1/n;

    new-instance v0, Ld1/g;

    invoke-direct {v0, p1}, Ld1/g;-><init>(Ljava/net/URL;)V

    invoke-interface {p0, v0, p2, p3, p4}, Ld1/n;->buildLoadData(Ljava/lang/Object;IILw0/e;)Ld1/n$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/net/URL;

    const/4 p0, 0x1

    return p0
.end method
